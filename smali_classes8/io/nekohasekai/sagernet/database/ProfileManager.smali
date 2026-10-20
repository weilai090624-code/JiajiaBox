.class public final Lio/nekohasekai/sagernet/database/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/database/ProfileManager$Listener;,
        Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfileManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileManager.kt\nio/nekohasekai/sagernet/database/ProfileManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,240:1\n1863#2,2:241\n1863#2,2:243\n*S KotlinDebug\n*F\n+ 1 ProfileManager.kt\nio/nekohasekai/sagernet/database/ProfileManager\n*L\n37#1:241,2\n95#1:243,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002>?B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J7\u0010\t\u001a\u00020\n2\'\u0010\u000b\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000c\u00a2\u0006\u0002\u0008\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000fJ7\u0010\u0010\u001a\u00020\n2\'\u0010\u000b\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0008\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000c\u00a2\u0006\u0002\u0008\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u000e\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0006J\u000e\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0006J\u000e\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0008J\u000e\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0008J\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0086@\u00a2\u0006\u0002\u0010\u001aJ\u0016\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u0015H\u0086@\u00a2\u0006\u0002\u0010\u001dJ\u001c\u0010\u001b\u001a\u00020\n2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001fH\u0086@\u00a2\u0006\u0002\u0010 J\u001e\u0010!\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020\u0017H\u0086@\u00a2\u0006\u0002\u0010#J\u001e\u0010$\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020\u0017H\u0086@\u00a2\u0006\u0002\u0010#J\u0010\u0010%\u001a\u0004\u0018\u00010\u00152\u0006\u0010\"\u001a\u00020\u0017J\u001a\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001f2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001fJ \u0010(\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u00172\u0008\u0008\u0002\u0010)\u001a\u00020*H\u0086@\u00a2\u0006\u0002\u0010+J \u0010(\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u00152\u0008\u0008\u0002\u0010)\u001a\u00020*H\u0086@\u00a2\u0006\u0002\u0010,J\u0016\u0010(\u001a\u00020\n2\u0006\u0010-\u001a\u00020.H\u0086@\u00a2\u0006\u0002\u0010/J \u00100\u001a\u0002012\u0006\u00102\u001a\u0002012\u0008\u0008\u0002\u00103\u001a\u00020*H\u0086@\u00a2\u0006\u0002\u00104J\u0016\u00105\u001a\u00020\n2\u0006\u00102\u001a\u000201H\u0086@\u00a2\u0006\u0002\u00106J\u0016\u00107\u001a\u00020\n2\u0006\u00108\u001a\u00020\u0017H\u0086@\u00a2\u0006\u0002\u00109J\u001c\u0010:\u001a\u00020\n2\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u0002010\u001fH\u0086@\u00a2\u0006\u0002\u0010 J\u0014\u0010<\u001a\u0008\u0012\u0004\u0012\u0002010\u001fH\u0086@\u00a2\u0006\u0002\u0010=R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006@"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/database/ProfileManager;",
        "",
        "<init>",
        "()V",
        "listeners",
        "Ljava/util/ArrayList;",
        "Lio/nekohasekai/sagernet/database/ProfileManager$Listener;",
        "ruleListeners",
        "Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;",
        "iterator",
        "",
        "what",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ruleIterator",
        "addListener",
        "listener",
        "removeListener",
        "createProfile",
        "Lio/nekohasekai/sagernet/database/ProxyEntity;",
        "groupId",
        "",
        "bean",
        "Lio/nekohasekai/sagernet/fmt/AbstractBean;",
        "(JLio/nekohasekai/sagernet/fmt/AbstractBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateProfile",
        "profile",
        "(Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "profiles",
        "",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteProfile2",
        "profileId",
        "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteProfile",
        "getProfile",
        "getProfiles",
        "profileIds",
        "postUpdate",
        "noTraffic",
        "",
        "(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "(Lio/nekohasekai/sagernet/database/ProxyEntity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "data",
        "Lio/nekohasekai/sagernet/aidl/TrafficData;",
        "(Lio/nekohasekai/sagernet/aidl/TrafficData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createRule",
        "Lio/nekohasekai/sagernet/database/RuleEntity;",
        "rule",
        "post",
        "(Lio/nekohasekai/sagernet/database/RuleEntity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateRule",
        "(Lio/nekohasekai/sagernet/database/RuleEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteRule",
        "ruleId",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteRules",
        "rules",
        "getRules",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Listener",
        "RuleListener",
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
.field public static final INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

.field private static final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/nekohasekai/sagernet/database/ProfileManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final ruleListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/nekohasekai/sagernet/database/ProfileManager;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/database/ProfileManager;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/database/ProfileManager;->listeners:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/database/ProfileManager;->ruleListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic createRule$default(Lio/nekohasekai/sagernet/database/ProfileManager;Lio/nekohasekai/sagernet/database/RuleEntity;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 156
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/database/ProfileManager;->createRule(Lio/nekohasekai/sagernet/database/RuleEntity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic postUpdate$default(Lio/nekohasekai/sagernet/database/ProfileManager;JZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 144
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/nekohasekai/sagernet/database/ProfileManager;->postUpdate(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic postUpdate$default(Lio/nekohasekai/sagernet/database/ProfileManager;Lio/nekohasekai/sagernet/database/ProxyEntity;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 148
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/database/ProfileManager;->postUpdate(Lio/nekohasekai/sagernet/database/ProxyEntity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addListener(Lio/nekohasekai/sagernet/database/ProfileManager$Listener;)V
    .locals 3
    .param p1, "listener"    # Lio/nekohasekai/sagernet/database/ProfileManager$Listener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lio/nekohasekai/sagernet/database/ProfileManager;->listeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 53
    .local v1, "$i$a$-synchronized-ProfileManager$addListener$1":I
    :try_start_0
    sget-object v2, Lio/nekohasekai/sagernet/database/ProfileManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v1    # "$i$a$-synchronized-ProfileManager$addListener$1":I
    monitor-exit v0

    .line 55
    return-void

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final addListener(Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;)V
    .locals 3
    .param p1, "listener"    # Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lio/nekohasekai/sagernet/database/ProfileManager;->ruleListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 65
    .local v1, "$i$a$-synchronized-ProfileManager$addListener$2":I
    :try_start_0
    sget-object v2, Lio/nekohasekai/sagernet/database/ProfileManager;->ruleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .end local v1    # "$i$a$-synchronized-ProfileManager$addListener$2":I
    monitor-exit v0

    .line 67
    return-void

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final createProfile(JLio/nekohasekai/sagernet/fmt/AbstractBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 45
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/nekohasekai/sagernet/fmt/AbstractBean;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$createProfile$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/nekohasekai/sagernet/database/ProfileManager$createProfile$1;

    iget v2, v1, Lio/nekohasekai/sagernet/database/ProfileManager$createProfile$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lio/nekohasekai/sagernet/database/ProfileManager$createProfile$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lio/nekohasekai/sagernet/database/ProfileManager$createProfile$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/nekohasekai/sagernet/database/ProfileManager$createProfile$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/nekohasekai/sagernet/database/ProfileManager$createProfile$1;-><init>(Lio/nekohasekai/sagernet/database/ProfileManager;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lio/nekohasekai/sagernet/database/ProfileManager$createProfile$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 75
    iget v5, v1, Lio/nekohasekai/sagernet/database/ProfileManager$createProfile$1;->label:I

    packed-switch v5, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProfileManager$createProfile$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .local v4, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v4    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .local v5, "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    move-wide/from16 v14, p1

    .local v14, "groupId":J
    move-wide v9, v14

    move-object/from16 v12, p3

    .line 76
    .local v12, "bean":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    move-object v6, v12

    check-cast v6, Lio/nekohasekai/sagernet/fmt/Serializable;

    invoke-static {v6}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->applyDefaultValues(Lio/nekohasekai/sagernet/fmt/Serializable;)Lio/nekohasekai/sagernet/fmt/Serializable;

    .line 78
    new-instance v41, Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-object/from16 v6, v41

    const v39, 0x7fffffd

    const/16 v40, 0x0

    const-wide/16 v7, 0x0

    const/4 v11, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v42, v12

    .end local v12    # "bean":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .local v42, "bean":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    move-wide/from16 v12, v16

    move-wide/from16 v43, v14

    .end local v14    # "groupId":J
    .local v43, "groupId":J
    move-wide/from16 v14, v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-direct/range {v6 .. v40}, Lio/nekohasekai/sagernet/database/ProxyEntity;-><init>(JJIJJJIILjava/lang/String;Ljava/lang/String;Lio/nekohasekai/sagernet/fmt/socks/SOCKSBean;Lio/nekohasekai/sagernet/fmt/http/HttpBean;Lio/nekohasekai/sagernet/fmt/shadowsocks/ShadowsocksBean;Lio/nekohasekai/sagernet/fmt/v2ray/VMessBean;Lio/nekohasekai/sagernet/fmt/trojan/TrojanBean;Lio/nekohasekai/sagernet/fmt/trojan_go/TrojanGoBean;Lio/nekohasekai/sagernet/fmt/mieru/MieruBean;Lio/nekohasekai/sagernet/fmt/naive/NaiveBean;Lio/nekohasekai/sagernet/fmt/hysteria/HysteriaBean;Lio/nekohasekai/sagernet/fmt/tuic/TuicBean;Lio/nekohasekai/sagernet/fmt/ssh/SSHBean;Lio/nekohasekai/sagernet/fmt/wireguard/WireGuardBean;Lmoe/matsuri/nb4a/proxy/shadowtls/ShadowTLSBean;Lmoe/matsuri/nb4a/proxy/anytls/AnyTLSBean;Lio/nekohasekai/sagernet/fmt/internal/ChainBean;Lmoe/matsuri/nb4a/proxy/neko/NekoBean;Lmoe/matsuri/nb4a/proxy/config/ConfigBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .local v6, "$this$createProfile_u24lambda_u247":Lio/nekohasekai/sagernet/database/ProxyEntity;
    const/4 v7, 0x0

    .line 79
    .local v7, "$i$a$-apply-ProfileManager$createProfile$profile$1":I
    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setId(J)V

    .line 80
    move-object/from16 v8, v42

    .end local v42    # "bean":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    .local v8, "bean":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    invoke-virtual {v6, v8}, Lio/nekohasekai/sagernet/database/ProxyEntity;->putBean(Lio/nekohasekai/sagernet/fmt/AbstractBean;)Lio/nekohasekai/sagernet/database/ProxyEntity;

    .line 81
    .end local v8    # "bean":Lio/nekohasekai/sagernet/fmt/AbstractBean;
    sget-object v8, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v8}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v8

    move-wide/from16 v9, v43

    .end local v43    # "groupId":J
    .local v9, "groupId":J
    invoke-interface {v8, v9, v10}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->nextOrder(J)Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_1

    .end local v6    # "$this$createProfile_u24lambda_u247":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v9    # "groupId":J
    :cond_1
    const-wide/16 v11, 0x1

    :goto_1
    invoke-virtual {v6, v11, v12}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setUserOrder(J)V

    .line 82
    nop

    .line 78
    .end local v7    # "$i$a$-apply-ProfileManager$createProfile$profile$1":I
    move-object/from16 v6, v41

    .line 83
    .local v6, "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    sget-object v7, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v7

    invoke-interface {v7, v6}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->addProxy(Lio/nekohasekai/sagernet/database/ProxyEntity;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setId(J)V

    .line 84
    new-instance v7, Lio/nekohasekai/sagernet/database/ProfileManager$createProfile$2;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Lio/nekohasekai/sagernet/database/ProfileManager$createProfile$2;-><init>(Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    iput-object v6, v1, Lio/nekohasekai/sagernet/database/ProfileManager$createProfile$1;->L$0:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v1, Lio/nekohasekai/sagernet/database/ProfileManager$createProfile$1;->label:I

    invoke-virtual {v5, v7, v1}, Lio/nekohasekai/sagernet/database/ProfileManager;->iterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    if-ne v5, v4, :cond_2

    .line 75
    return-object v4

    .line 84
    :cond_2
    move-object v4, v6

    .line 85
    .end local v6    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .restart local v4    # "profile":Lio/nekohasekai/sagernet/database/ProxyEntity;
    :goto_2
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createRule(Lio/nekohasekai/sagernet/database/RuleEntity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/nekohasekai/sagernet/database/ProfileManager$createRule$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/nekohasekai/sagernet/database/ProfileManager$createRule$1;

    iget v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$createRule$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$createRule$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$createRule$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/database/ProfileManager$createRule$1;

    invoke-direct {v0, p0, p3}, Lio/nekohasekai/sagernet/database/ProfileManager$createRule$1;-><init>(Lio/nekohasekai/sagernet/database/ProfileManager;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$createRule$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 156
    iget v3, v0, Lio/nekohasekai/sagernet/database/ProfileManager$createRule$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object p1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$createRule$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/nekohasekai/sagernet/database/RuleEntity;

    .local p1, "rule":Lio/nekohasekai/sagernet/database/RuleEntity;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local p1    # "rule":Lio/nekohasekai/sagernet/database/RuleEntity;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 157
    .local v3, "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    .restart local p1    # "rule":Lio/nekohasekai/sagernet/database/RuleEntity;
    .local p2, "post":Z
    sget-object v4, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getRulesDao()Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    move-result-object v4

    invoke-interface {v4}, Lio/nekohasekai/sagernet/database/RuleEntity$Dao;->nextOrder()Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x1

    :goto_1
    invoke-virtual {p1, v4, v5}, Lio/nekohasekai/sagernet/database/RuleEntity;->setUserOrder(J)V

    .line 158
    sget-object v4, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getRulesDao()Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    move-result-object v4

    invoke-interface {v4, p1}, Lio/nekohasekai/sagernet/database/RuleEntity$Dao;->createRule(Lio/nekohasekai/sagernet/database/RuleEntity;)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lio/nekohasekai/sagernet/database/RuleEntity;->setId(J)V

    .line 159
    if-eqz p2, :cond_3

    .line 160
    .end local p2    # "post":Z
    new-instance p2, Lio/nekohasekai/sagernet/database/ProfileManager$createRule$2;

    const/4 v4, 0x0

    invoke-direct {p2, p1, v4}, Lio/nekohasekai/sagernet/database/ProfileManager$createRule$2;-><init>(Lio/nekohasekai/sagernet/database/RuleEntity;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iput-object p1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$createRule$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lio/nekohasekai/sagernet/database/ProfileManager$createRule$1;->label:I

    invoke-virtual {v3, p2, v0}, Lio/nekohasekai/sagernet/database/ProfileManager;->ruleIterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    .end local v3    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    if-ne p2, v2, :cond_2

    .line 156
    return-object v2

    .line 162
    :cond_2
    :goto_2
    nop

    :cond_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final deleteProfile(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$deleteProfile$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/nekohasekai/sagernet/database/ProfileManager$deleteProfile$1;

    iget v2, v1, Lio/nekohasekai/sagernet/database/ProfileManager$deleteProfile$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lio/nekohasekai/sagernet/database/ProfileManager$deleteProfile$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lio/nekohasekai/sagernet/database/ProfileManager$deleteProfile$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/nekohasekai/sagernet/database/ProfileManager$deleteProfile$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/nekohasekai/sagernet/database/ProfileManager$deleteProfile$1;-><init>(Lio/nekohasekai/sagernet/database/ProfileManager;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lio/nekohasekai/sagernet/database/ProfileManager$deleteProfile$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 107
    iget v5, v1, Lio/nekohasekai/sagernet/database/ProfileManager$deleteProfile$1;->label:I

    packed-switch v5, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide v4, v1, Lio/nekohasekai/sagernet/database/ProfileManager$deleteProfile$1;->J$0:J

    .local v4, "groupId":J
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v4    # "groupId":J
    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .local v5, "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    move-wide/from16 v12, p1

    .local v12, "groupId":J
    move-wide/from16 v14, p3

    .line 108
    .local v14, "profileId":J
    sget-object v6, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v6

    invoke-interface {v6, v14, v15}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->deleteById(J)I

    move-result v6

    if-nez v6, :cond_1

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    .line 109
    :cond_1
    sget-object v6, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedProxy()J

    move-result-wide v6

    cmp-long v8, v6, v14

    if-nez v8, :cond_2

    .line 110
    sget-object v6, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedProxy(J)V

    .line 112
    :cond_2
    new-instance v16, Lio/nekohasekai/sagernet/database/ProfileManager$deleteProfile$2;

    const/4 v11, 0x0

    move-object/from16 v6, v16

    move-wide v7, v12

    move-wide v9, v14

    invoke-direct/range {v6 .. v11}, Lio/nekohasekai/sagernet/database/ProfileManager$deleteProfile$2;-><init>(JJLkotlin/coroutines/Continuation;)V

    move-object/from16 v6, v16

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-wide v12, v1, Lio/nekohasekai/sagernet/database/ProfileManager$deleteProfile$1;->J$0:J

    const/4 v7, 0x1

    iput v7, v1, Lio/nekohasekai/sagernet/database/ProfileManager$deleteProfile$1;->label:I

    invoke-virtual {v5, v6, v1}, Lio/nekohasekai/sagernet/database/ProfileManager;->iterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    .end local v14    # "profileId":J
    if-ne v5, v4, :cond_3

    .line 107
    return-object v4

    .line 112
    :cond_3
    move-wide v4, v12

    .line 113
    .end local v12    # "groupId":J
    .restart local v4    # "groupId":J
    :goto_1
    sget-object v6, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v6

    invoke-interface {v6, v4, v5}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->countByGroup(J)J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v10, v6, v8

    if-lez v10, :cond_4

    .line 114
    sget-object v6, Lio/nekohasekai/sagernet/database/GroupManager;->INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

    invoke-virtual {v6, v4, v5}, Lio/nekohasekai/sagernet/database/GroupManager;->rearrange(J)V

    .line 116
    .end local v4    # "groupId":J
    :cond_4
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final deleteProfile2(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "groupId"    # J
    .param p3, "profileId"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 101
    sget-object v0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->deleteById(J)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 102
    :cond_0
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedProxy()J

    move-result-wide v0

    cmp-long v2, v0, p3

    if-nez v2, :cond_1

    .line 103
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedProxy(J)V

    .line 105
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final deleteRule(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "ruleId"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 171
    sget-object v0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getRulesDao()Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/nekohasekai/sagernet/database/RuleEntity$Dao;->deleteById(J)I

    .line 172
    new-instance v0, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRule$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRule$2;-><init>(JLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0, p3}, Lio/nekohasekai/sagernet/database/ProfileManager;->ruleIterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 173
    return-object v0
.end method

.method public final deleteRules(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "rules"    # Ljava/util/List;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 176
    sget-object v0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getRulesDao()Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/nekohasekai/sagernet/database/RuleEntity$Dao;->deleteRules(Ljava/util/List;)V

    .line 177
    new-instance v0, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/nekohasekai/sagernet/database/ProfileManager$deleteRules$2;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0, p2}, Lio/nekohasekai/sagernet/database/ProfileManager;->ruleIterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 182
    return-object v0
.end method

.method public final getProfile(J)Lio/nekohasekai/sagernet/database/ProxyEntity;
    .locals 4
    .param p1, "profileId"    # J

    .line 119
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    return-object v2

    .line 120
    :cond_0
    nop

    .line 121
    :try_start_0
    sget-object v0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->getById(J)Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "ex":Ljava/sql/SQLException;
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 126
    nop

    .line 120
    .end local v0    # "ex":Ljava/sql/SQLException;
    :goto_0
    return-object v2

    .line 122
    :catch_1
    move-exception v0

    .line 123
    .local v0, "ex":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    new-instance v1, Ljava/io/IOException;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getProfiles(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "profileIds"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "profileIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    nop

    .line 133
    :try_start_0
    sget-object v0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->getEntities(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "ex":Ljava/sql/SQLException;
    sget-object v1, Lio/nekohasekai/sagernet/ktx/Logs;->INSTANCE:Lio/nekohasekai/sagernet/ktx/Logs;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ktx/Logs;->w(Ljava/lang/Throwable;)V

    .line 138
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 132
    .end local v0    # "ex":Ljava/sql/SQLException;
    :goto_0
    return-object v0

    .line 134
    :catch_1
    move-exception v0

    .line 135
    .local v0, "ex":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    new-instance v1, Ljava/io/IOException;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getRules(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 37
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;

    iget v2, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->label:I

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;-><init>(Lio/nekohasekai/sagernet/database/ProfileManager;Lkotlin/coroutines/Continuation;)V

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v9, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->result:Ljava/lang/Object;

    .local v9, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    .line 184
    iget v3, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->label:I

    const/4 v11, 0x2

    const/4 v12, 0x1

    const-string v13, "getString(...)"

    const/4 v14, 0x0

    const/4 v15, 0x0

    packed-switch v3, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "$result":Ljava/lang/Object;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v3, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/nekohasekai/sagernet/database/ProfileManager;

    .local v4, "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v3

    move-object v6, v4

    move-object v3, v14

    goto/16 :goto_7

    .end local v4    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    :pswitch_1
    iget-object v3, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .local v3, "displayCountry":Ljava/lang/String;
    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .local v4, "country":Ljava/lang/String;
    iget-object v5, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/nekohasekai/sagernet/database/ProfileManager;

    .local v6, "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v36, v6

    move-object v6, v4

    move-object/from16 v4, v36

    goto/16 :goto_6

    .end local v3    # "displayCountry":Ljava/lang/String;
    .end local v4    # "country":Ljava/lang/String;
    .end local v6    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    :pswitch_2
    iget-object v3, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .restart local v3    # "displayCountry":Ljava/lang/String;
    iget-object v4, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .restart local v4    # "country":Ljava/lang/String;
    iget-object v5, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/nekohasekai/sagernet/database/ProfileManager;

    .restart local v6    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local v3    # "displayCountry":Ljava/lang/String;
    .end local v4    # "country":Ljava/lang/String;
    .end local v6    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    :pswitch_3
    iget-object v3, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/nekohasekai/sagernet/database/ProfileManager;

    .local v3, "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v3    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    :pswitch_4
    iget-object v3, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/nekohasekai/sagernet/database/ProfileManager;

    .restart local v3    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v3

    goto/16 :goto_1

    .end local v3    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    :pswitch_5
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v8, p0

    .line 185
    .local v8, "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    sget-object v3, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getRulesDao()Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    move-result-object v3

    invoke-interface {v3}, Lio/nekohasekai/sagernet/database/RuleEntity$Dao;->allRules()Ljava/util/List;

    move-result-object v3

    .line 186
    .local v3, "rules":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->getRulesFirstCreate()Z

    move-result v4

    if-nez v4, :cond_9

    .line 187
    .end local v3    # "rules":Ljava/util/List;
    sget-object v3, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v3, v12}, Lio/nekohasekai/sagernet/database/DataStore;->setRulesFirstCreate(Z)V

    .line 188
    nop

    .line 189
    new-instance v4, Lio/nekohasekai/sagernet/database/RuleEntity;

    move-object/from16 v16, v4

    .line 190
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v3

    const v5, 0x7f130259

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/SagerNet;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    nop

    .line 191
    nop

    .line 189
    nop

    .line 192
    nop

    .line 189
    nop

    .line 193
    nop

    .line 189
    const/16 v34, 0x2d7d

    const/16 v35, 0x0

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "443"

    const/16 v27, 0x0

    const-string v28, "udp"

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, -0x2

    const/16 v33, 0x0

    invoke-direct/range {v16 .. v35}, Lio/nekohasekai/sagernet/database/RuleEntity;-><init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 188
    iput-object v8, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$0:Ljava/lang/Object;

    iput v12, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->label:I

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/16 v16, 0x0

    move-object v3, v8

    move-object v6, v1

    move-object/from16 v17, v8

    .end local v8    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    .local v17, "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    move-object/from16 v8, v16

    invoke-static/range {v3 .. v8}, Lio/nekohasekai/sagernet/database/ProfileManager;->createRule$default(Lio/nekohasekai/sagernet/database/ProfileManager;Lio/nekohasekai/sagernet/database/RuleEntity;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_1

    .line 184
    return-object v10

    .line 188
    :cond_1
    move-object/from16 v8, v17

    .line 196
    .end local v17    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    .restart local v8    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    :goto_1
    nop

    .line 197
    new-instance v4, Lio/nekohasekai/sagernet/database/RuleEntity;

    move-object/from16 v16, v4

    .line 198
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v3

    const v5, 0x7f130257

    invoke-virtual {v3, v5}, Lio/nekohasekai/sagernet/SagerNet;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    nop

    .line 199
    nop

    .line 197
    nop

    .line 200
    nop

    .line 197
    const/16 v34, 0x2fdd

    const/16 v35, 0x0

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const-string v24, "geosite:category-ads-all"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, -0x2

    const/16 v33, 0x0

    invoke-direct/range {v16 .. v35}, Lio/nekohasekai/sagernet/database/RuleEntity;-><init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 196
    iput-object v8, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$0:Ljava/lang/Object;

    iput v11, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->label:I

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/16 v16, 0x0

    move-object v3, v8

    move-object v6, v1

    move-object/from16 v17, v8

    .end local v8    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    .restart local v17    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    move-object/from16 v8, v16

    invoke-static/range {v3 .. v8}, Lio/nekohasekai/sagernet/database/ProfileManager;->createRule$default(Lio/nekohasekai/sagernet/database/ProfileManager;Lio/nekohasekai/sagernet/database/RuleEntity;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_2

    .line 184
    return-object v10

    .line 196
    :cond_2
    move-object/from16 v3, v17

    .line 203
    .end local v17    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    .local v3, "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    :goto_2
    const-string v4, "cn:\u4e2d\u56fd"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 204
    .local v4, "fuckedCountry":Ljava/util/List;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 206
    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    const-string v6, "ir:Iran"

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 207
    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    const-string v6, "ru:Russia"

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v3

    .end local v3    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    .end local v4    # "fuckedCountry":Ljava/util/List;
    .end local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .local v0, "$completion":Lkotlin/coroutines/Continuation;
    .restart local v6    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "next(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    .line 210
    .local v3, "c":Ljava/lang/String;
    const-string v4, ":"

    invoke-static {v3, v4, v14, v11, v14}, Lkotlin/text/StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "country":Ljava/lang/String;
    invoke-static {v3, v4, v14, v11, v14}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "displayCountry":Ljava/lang/String;
    const-string v4, "cn"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 214
    new-instance v4, Lio/nekohasekai/sagernet/database/RuleEntity;

    move-object/from16 v16, v4

    .line 215
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v8

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v3, v11, v15

    const v14, 0x7f13025b

    invoke-virtual {v8, v14, v11}, Lio/nekohasekai/sagernet/SagerNet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v19, v8

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    nop

    .line 216
    nop

    .line 214
    const/16 v34, 0x3fdd

    const/16 v35, 0x0

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const-string v24, "googleapis.cn"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    invoke-direct/range {v16 .. v35}, Lio/nekohasekai/sagernet/database/RuleEntity;-><init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 217
    nop

    .line 213
    iput-object v6, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$2:Ljava/lang/Object;

    iput-object v3, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$3:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->label:I

    invoke-virtual {v6, v4, v15, v1}, Lio/nekohasekai/sagernet/database/ProfileManager;->createRule(Lio/nekohasekai/sagernet/database/RuleEntity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v10, :cond_4

    .line 184
    return-object v10

    .line 213
    :cond_4
    move-object v4, v7

    .line 219
    .end local v7    # "country":Ljava/lang/String;
    .local v4, "country":Ljava/lang/String;
    :goto_4
    goto :goto_5

    .line 213
    .end local v4    # "country":Ljava/lang/String;
    .restart local v7    # "country":Ljava/lang/String;
    :cond_5
    move-object v4, v7

    .line 220
    .end local v7    # "country":Ljava/lang/String;
    .restart local v4    # "country":Ljava/lang/String;
    :goto_5
    new-instance v7, Lio/nekohasekai/sagernet/database/RuleEntity;

    move-object/from16 v16, v7

    .line 221
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v8

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v3, v11, v15

    const v14, 0x7f130250

    invoke-virtual {v8, v14, v11}, Lio/nekohasekai/sagernet/SagerNet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v19, v8

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    nop

    .line 222
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "geosite:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 220
    nop

    .line 223
    nop

    .line 220
    const/16 v34, 0x2fcd

    const/16 v35, 0x0

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const-string v8, "cn"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    move/from16 v23, v8

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, -0x1

    const/16 v33, 0x0

    invoke-direct/range {v16 .. v35}, Lio/nekohasekai/sagernet/database/RuleEntity;-><init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 224
    nop

    .line 219
    iput-object v6, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$1:Ljava/lang/Object;

    iput-object v4, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$2:Ljava/lang/Object;

    iput-object v3, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$3:Ljava/lang/Object;

    const/4 v8, 0x4

    iput v8, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->label:I

    invoke-virtual {v6, v7, v15, v1}, Lio/nekohasekai/sagernet/database/ProfileManager;->createRule(Lio/nekohasekai/sagernet/database/RuleEntity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v10, :cond_6

    .line 184
    return-object v10

    .line 219
    :cond_6
    move-object/from16 v36, v6

    move-object v6, v4

    move-object/from16 v4, v36

    .line 226
    .local v4, "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    .local v6, "country":Ljava/lang/String;
    :goto_6
    nop

    .line 227
    new-instance v7, Lio/nekohasekai/sagernet/database/RuleEntity;

    move-object/from16 v16, v7

    .line 228
    invoke-static {}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getApp()Lio/nekohasekai/sagernet/SagerNet;

    move-result-object v8

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v3, v11, v15

    .end local v3    # "displayCountry":Ljava/lang/String;
    const v3, 0x7f130251

    invoke-virtual {v8, v3, v11}, Lio/nekohasekai/sagernet/SagerNet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    nop

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "geoip:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 227
    .end local v6    # "country":Ljava/lang/String;
    nop

    .line 230
    nop

    .line 227
    const/16 v34, 0x2fad

    const/16 v35, 0x0

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const-string v8, "cn"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    move/from16 v23, v8

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, -0x1

    const/16 v33, 0x0

    invoke-direct/range {v16 .. v35}, Lio/nekohasekai/sagernet/database/RuleEntity;-><init>(JLjava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 231
    nop

    .line 226
    iput-object v4, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$0:Ljava/lang/Object;

    iput-object v5, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$2:Ljava/lang/Object;

    iput-object v3, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->L$3:Ljava/lang/Object;

    const/4 v6, 0x5

    iput v6, v1, Lio/nekohasekai/sagernet/database/ProfileManager$getRules$1;->label:I

    invoke-virtual {v4, v7, v15, v1}, Lio/nekohasekai/sagernet/database/ProfileManager;->createRule(Lio/nekohasekai/sagernet/database/RuleEntity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v10, :cond_7

    .line 184
    return-object v10

    .line 226
    :cond_7
    move-object v6, v4

    .end local v4    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    .local v6, "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    :goto_7
    move-object v14, v3

    const/4 v11, 0x2

    goto/16 :goto_3

    .line 234
    .end local v6    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    :cond_8
    sget-object v3, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getRulesDao()Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    move-result-object v3

    invoke-interface {v3}, Lio/nekohasekai/sagernet/database/RuleEntity$Dao;->allRules()Ljava/util/List;

    move-result-object v3

    .local v3, "rules":Ljava/util/List;
    goto :goto_8

    .line 186
    .end local v0    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v8    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    .restart local p1    # "$completion":Lkotlin/coroutines/Continuation;
    :cond_9
    move-object/from16 v17, v8

    .line 236
    .end local v8    # "this":Lio/nekohasekai/sagernet/database/ProfileManager;
    .end local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v0    # "$completion":Lkotlin/coroutines/Continuation;
    :goto_8
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/nekohasekai/sagernet/database/ProfileManager$Listener;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/nekohasekai/sagernet/database/ProfileManager$iterator$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/nekohasekai/sagernet/database/ProfileManager$iterator$1;

    iget v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$iterator$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$iterator$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$iterator$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/database/ProfileManager$iterator$1;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/database/ProfileManager$iterator$1;-><init>(Lio/nekohasekai/sagernet/database/ProfileManager;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$iterator$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 34
    iget v3, v0, Lio/nekohasekai/sagernet/database/ProfileManager$iterator$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$forEach":I
    const/4 v3, 0x0

    .local v3, "$i$a$-forEach-ProfileManager$iterator$3":I
    iget-object v4, v0, Lio/nekohasekai/sagernet/database/ProfileManager$iterator$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, v0, Lio/nekohasekai/sagernet/database/ProfileManager$iterator$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .local v5, "what":Lkotlin/jvm/functions/Function2;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v3    # "$i$a$-forEach-ProfileManager$iterator$3":I
    .end local v5    # "what":Lkotlin/jvm/functions/Function2;
    .end local p1    # "$i$f$forEach":I
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .local p1, "what":Lkotlin/jvm/functions/Function2;
    sget-object v3, Lio/nekohasekai/sagernet/database/ProfileManager;->listeners:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v4, 0x0

    .line 36
    .local v4, "$i$a$-synchronized-ProfileManager$iterator$2":I
    :try_start_0
    sget-object v5, Lio/nekohasekai/sagernet/database/ProfileManager;->listeners:Ljava/util/ArrayList;

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .end local v4    # "$i$a$-synchronized-ProfileManager$iterator$2":I
    monitor-exit v3

    move-object v3, v5

    check-cast v3, Ljava/lang/Iterable;

    .line 37
    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 241
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v8, v5

    move-object v5, p1

    move p1, v4

    move-object v4, v8

    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    .restart local v5    # "what":Lkotlin/jvm/functions/Function2;
    .local p1, "$i$f$forEach":I
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    check-cast v3, Lio/nekohasekai/sagernet/database/ProfileManager$Listener;

    .local v3, "listener":Lio/nekohasekai/sagernet/database/ProfileManager$Listener;
    const/4 v6, 0x0

    .line 38
    .local v6, "$i$a$-forEach-ProfileManager$iterator$3":I
    iput-object v5, v0, Lio/nekohasekai/sagernet/database/ProfileManager$iterator$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lio/nekohasekai/sagernet/database/ProfileManager$iterator$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v0, Lio/nekohasekai/sagernet/database/ProfileManager$iterator$1;->label:I

    invoke-interface {v5, v3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "listener":Lio/nekohasekai/sagernet/database/ProfileManager$Listener;
    if-ne v3, v2, :cond_1

    .line 34
    return-object v2

    .line 38
    :cond_1
    move v3, v6

    .end local v6    # "$i$a$-forEach-ProfileManager$iterator$3":I
    .local v3, "$i$a$-forEach-ProfileManager$iterator$3":I
    :goto_2
    nop

    .line 39
    nop

    .line 241
    .end local v3    # "$i$a$-forEach-ProfileManager$iterator$3":I
    goto :goto_1

    .line 242
    :cond_2
    nop

    .line 40
    .end local p1    # "$i$f$forEach":I
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 35
    .end local v5    # "what":Lkotlin/jvm/functions/Function2;
    :catchall_0
    move-exception p1

    monitor-exit v3

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final postUpdate(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "profileId"    # J
    .param p3, "noTraffic"    # Z
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 145
    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/database/ProfileManager;->getProfile(J)Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_0
    invoke-virtual {p0, v0, p3, p4}, Lio/nekohasekai/sagernet/database/ProfileManager;->postUpdate(Lio/nekohasekai/sagernet/database/ProxyEntity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 146
    return-object v0
.end method

.method public final postUpdate(Lio/nekohasekai/sagernet/aidl/TrafficData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "data"    # Lio/nekohasekai/sagernet/aidl/TrafficData;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/aidl/TrafficData;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 153
    new-instance v0, Lio/nekohasekai/sagernet/database/ProfileManager$postUpdate$5;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/nekohasekai/sagernet/database/ProfileManager$postUpdate$5;-><init>(Lio/nekohasekai/sagernet/aidl/TrafficData;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0, p2}, Lio/nekohasekai/sagernet/database/ProfileManager;->iterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 154
    return-object v0
.end method

.method public final postUpdate(Lio/nekohasekai/sagernet/database/ProxyEntity;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "profile"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .param p2, "noTraffic"    # Z
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 149
    new-instance v0, Lio/nekohasekai/sagernet/database/ProfileManager$postUpdate$3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/nekohasekai/sagernet/database/ProfileManager$postUpdate$3;-><init>(Lio/nekohasekai/sagernet/database/ProxyEntity;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0, p3}, Lio/nekohasekai/sagernet/database/ProfileManager;->iterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 150
    return-object v0
.end method

.method public final removeListener(Lio/nekohasekai/sagernet/database/ProfileManager$Listener;)V
    .locals 3
    .param p1, "listener"    # Lio/nekohasekai/sagernet/database/ProfileManager$Listener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lio/nekohasekai/sagernet/database/ProfileManager;->listeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 59
    .local v1, "$i$a$-synchronized-ProfileManager$removeListener$1":I
    :try_start_0
    sget-object v2, Lio/nekohasekai/sagernet/database/ProfileManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v1    # "$i$a$-synchronized-ProfileManager$removeListener$1":I
    monitor-exit v0

    .line 61
    return-void

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final removeListener(Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;)V
    .locals 3
    .param p1, "listener"    # Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lio/nekohasekai/sagernet/database/ProfileManager;->ruleListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 71
    .local v1, "$i$a$-synchronized-ProfileManager$removeListener$2":I
    :try_start_0
    sget-object v2, Lio/nekohasekai/sagernet/database/ProfileManager;->ruleListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v1    # "$i$a$-synchronized-ProfileManager$removeListener$2":I
    monitor-exit v0

    .line 73
    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final ruleIterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/nekohasekai/sagernet/database/ProfileManager$ruleIterator$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/nekohasekai/sagernet/database/ProfileManager$ruleIterator$1;

    iget v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$ruleIterator$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$ruleIterator$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$ruleIterator$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/database/ProfileManager$ruleIterator$1;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/database/ProfileManager$ruleIterator$1;-><init>(Lio/nekohasekai/sagernet/database/ProfileManager;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$ruleIterator$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 42
    iget v3, v0, Lio/nekohasekai/sagernet/database/ProfileManager$ruleIterator$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object p1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$ruleIterator$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v3, v0, Lio/nekohasekai/sagernet/database/ProfileManager$ruleIterator$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .local v3, "what":Lkotlin/jvm/functions/Function2;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v3    # "what":Lkotlin/jvm/functions/Function2;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .local p1, "what":Lkotlin/jvm/functions/Function2;
    sget-object v3, Lio/nekohasekai/sagernet/database/ProfileManager;->ruleListeners:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v4, 0x0

    .line 44
    .local v4, "$i$a$-synchronized-ProfileManager$ruleIterator$ruleListeners$1":I
    :try_start_0
    sget-object v5, Lio/nekohasekai/sagernet/database/ProfileManager;->ruleListeners:Ljava/util/ArrayList;

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .end local v4    # "$i$a$-synchronized-ProfileManager$ruleIterator$ruleListeners$1":I
    monitor-exit v3

    move-object v3, v5

    .line 46
    .local v3, "ruleListeners":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, p1

    move-object p1, v4

    .end local p1    # "what":Lkotlin/jvm/functions/Function2;
    .local v3, "what":Lkotlin/jvm/functions/Function2;
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;

    .line 47
    .local v4, "listener":Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;
    iput-object v3, v0, Lio/nekohasekai/sagernet/database/ProfileManager$ruleIterator$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$ruleIterator$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lio/nekohasekai/sagernet/database/ProfileManager$ruleIterator$1;->label:I

    invoke-interface {v3, v4, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "listener":Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;
    if-ne v4, v2, :cond_1

    .line 42
    return-object v2

    .line 47
    :cond_1
    :goto_2
    goto :goto_1

    .line 49
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 43
    .end local v3    # "what":Lkotlin/jvm/functions/Function2;
    :catchall_0
    move-exception p1

    monitor-exit v3

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateProfile(Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "profile"    # Lio/nekohasekai/sagernet/database/ProxyEntity;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 89
    sget-object v0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->updateProxy(Lio/nekohasekai/sagernet/database/ProxyEntity;)I

    .line 90
    new-instance v0, Lio/nekohasekai/sagernet/database/ProfileManager$updateProfile$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/nekohasekai/sagernet/database/ProfileManager$updateProfile$2;-><init>(Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0, p2}, Lio/nekohasekai/sagernet/database/ProfileManager;->iterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 91
    return-object v0
.end method

.method public final updateProfile(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/nekohasekai/sagernet/database/ProfileManager$updateProfile$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/nekohasekai/sagernet/database/ProfileManager$updateProfile$3;

    iget v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$updateProfile$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$updateProfile$3;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$updateProfile$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/database/ProfileManager$updateProfile$3;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/database/ProfileManager$updateProfile$3;-><init>(Lio/nekohasekai/sagernet/database/ProfileManager;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/nekohasekai/sagernet/database/ProfileManager$updateProfile$3;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 93
    iget v3, v0, Lio/nekohasekai/sagernet/database/ProfileManager$updateProfile$3;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 p1, 0x0

    .local p1, "$i$f$forEach":I
    const/4 v3, 0x0

    .local v3, "$i$a$-forEach-ProfileManager$updateProfile$4":I
    iget-object v4, v0, Lio/nekohasekai/sagernet/database/ProfileManager$updateProfile$3;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v3    # "$i$a$-forEach-ProfileManager$updateProfile$4":I
    .end local p1    # "$i$f$forEach":I
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    .local p1, "profiles":Ljava/util/List;
    sget-object v3, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v3

    invoke-interface {v3, p1}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->updateProxy(Ljava/util/List;)I

    .line 95
    check-cast p1, Ljava/lang/Iterable;

    .local p1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 243
    .local v3, "$i$f$forEach":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move p1, v3

    .end local v3    # "$i$f$forEach":I
    .local p1, "$i$f$forEach":I
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    check-cast v3, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .local v3, "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    const/4 v5, 0x0

    .line 96
    .local v5, "$i$a$-forEach-ProfileManager$updateProfile$4":I
    sget-object v6, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    new-instance v7, Lio/nekohasekai/sagernet/database/ProfileManager$updateProfile$4$1;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v8}, Lio/nekohasekai/sagernet/database/ProfileManager$updateProfile$4$1;-><init>(Lio/nekohasekai/sagernet/database/ProxyEntity;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    iput-object v4, v0, Lio/nekohasekai/sagernet/database/ProfileManager$updateProfile$3;->L$0:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, v0, Lio/nekohasekai/sagernet/database/ProfileManager$updateProfile$3;->label:I

    invoke-virtual {v6, v7, v0}, Lio/nekohasekai/sagernet/database/ProfileManager;->iterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    if-ne v3, v2, :cond_1

    .line 93
    return-object v2

    .line 96
    :cond_1
    move v3, v5

    .line 97
    .end local v5    # "$i$a$-forEach-ProfileManager$updateProfile$4":I
    .local v3, "$i$a$-forEach-ProfileManager$updateProfile$4":I
    :goto_2
    nop

    .line 243
    .end local v3    # "$i$a$-forEach-ProfileManager$updateProfile$4":I
    goto :goto_1

    .line 244
    :cond_2
    nop

    .line 98
    .end local p1    # "$i$f$forEach":I
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateRule(Lio/nekohasekai/sagernet/database/RuleEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "rule"    # Lio/nekohasekai/sagernet/database/RuleEntity;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 166
    sget-object v0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getRulesDao()Lio/nekohasekai/sagernet/database/RuleEntity$Dao;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/nekohasekai/sagernet/database/RuleEntity$Dao;->updateRule(Lio/nekohasekai/sagernet/database/RuleEntity;)V

    .line 167
    new-instance v0, Lio/nekohasekai/sagernet/database/ProfileManager$updateRule$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/nekohasekai/sagernet/database/ProfileManager$updateRule$2;-><init>(Lio/nekohasekai/sagernet/database/RuleEntity;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0, p2}, Lio/nekohasekai/sagernet/database/ProfileManager;->ruleIterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 168
    return-object v0
.end method
