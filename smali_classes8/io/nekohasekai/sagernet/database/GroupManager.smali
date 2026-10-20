.class public final Lio/nekohasekai/sagernet/database/GroupManager;
.super Ljava/lang/Object;
.source "GroupManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/database/GroupManager$Interface;,
        Lio/nekohasekai/sagernet/database/GroupManager$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGroupManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupManager.kt\nio/nekohasekai/sagernet/database/GroupManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n1863#2,2:115\n1557#2:117\n1628#2,3:118\n*S KotlinDebug\n*F\n+ 1 GroupManager.kt\nio/nekohasekai/sagernet/database/GroupManager\n*L\n39#1:115,2\n109#1:117\n109#1:118,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\'(B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J7\u0010\u000e\u001a\u00020\u000f2\'\u0010\u0010\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0011\u00a2\u0006\u0002\u0008\u0013H\u0086@\u00a2\u0006\u0002\u0010\u0014J\u000e\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0006J\u000e\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0006J\u0016\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001aH\u0086@\u00a2\u0006\u0002\u0010\u001bJ\u000e\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001aJ\u0016\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u001fH\u0086@\u00a2\u0006\u0002\u0010 J\u0016\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001aH\u0086@\u00a2\u0006\u0002\u0010\u001bJ\u0016\u0010!\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001aH\u0086@\u00a2\u0006\u0002\u0010\u001bJ\u0016\u0010\"\u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001fH\u0086@\u00a2\u0006\u0002\u0010 J\u0016\u0010#\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u001fH\u0086@\u00a2\u0006\u0002\u0010 J\u0016\u0010$\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001aH\u0086@\u00a2\u0006\u0002\u0010\u001bJ\u001c\u0010$\u001a\u00020\u000f2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0%H\u0086@\u00a2\u0006\u0002\u0010&R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006)"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/database/GroupManager;",
        "",
        "<init>",
        "()V",
        "listeners",
        "Ljava/util/ArrayList;",
        "Lio/nekohasekai/sagernet/database/GroupManager$Listener;",
        "Lkotlin/collections/ArrayList;",
        "userInterface",
        "Lio/nekohasekai/sagernet/database/GroupManager$Interface;",
        "getUserInterface",
        "()Lio/nekohasekai/sagernet/database/GroupManager$Interface;",
        "setUserInterface",
        "(Lio/nekohasekai/sagernet/database/GroupManager$Interface;)V",
        "iterator",
        "",
        "what",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addListener",
        "listener",
        "removeListener",
        "clearGroup",
        "groupId",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "rearrange",
        "postUpdate",
        "group",
        "Lio/nekohasekai/sagernet/database/ProxyGroup;",
        "(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "postReload",
        "createGroup",
        "updateGroup",
        "deleteGroup",
        "",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Listener",
        "Interface",
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
.field public static final INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

.field private static final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/nekohasekai/sagernet/database/GroupManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static userInterface:Lio/nekohasekai/sagernet/database/GroupManager$Interface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/nekohasekai/sagernet/database/GroupManager;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/database/GroupManager;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/database/GroupManager;->INSTANCE:Lio/nekohasekai/sagernet/database/GroupManager;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/database/GroupManager;->listeners:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Lio/nekohasekai/sagernet/database/GroupManager$Listener;)V
    .locals 3
    .param p1, "listener"    # Lio/nekohasekai/sagernet/database/GroupManager$Listener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lio/nekohasekai/sagernet/database/GroupManager;->listeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 46
    .local v1, "$i$a$-synchronized-GroupManager$addListener$1":I
    :try_start_0
    sget-object v2, Lio/nekohasekai/sagernet/database/GroupManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .end local v1    # "$i$a$-synchronized-GroupManager$addListener$1":I
    monitor-exit v0

    .line 48
    return-void

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final clearGroup(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1, "groupId"    # J
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

    .line 57
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedProxy(J)V

    .line 58
    sget-object v0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->deleteAll(J)I

    .line 59
    new-instance v0, Lio/nekohasekai/sagernet/database/GroupManager$clearGroup$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/nekohasekai/sagernet/database/GroupManager$clearGroup$2;-><init>(JLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0, p3}, Lio/nekohasekai/sagernet/database/GroupManager;->iterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 60
    return-object v0
.end method

.method public final createGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/nekohasekai/sagernet/database/GroupManager$createGroup$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/nekohasekai/sagernet/database/GroupManager$createGroup$1;

    iget v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$createGroup$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$createGroup$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$createGroup$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/database/GroupManager$createGroup$1;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/database/GroupManager$createGroup$1;-><init>(Lio/nekohasekai/sagernet/database/GroupManager;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$createGroup$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 82
    iget v3, v0, Lio/nekohasekai/sagernet/database/GroupManager$createGroup$1;->label:I

    const/4 v4, 0x1

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
    iget-object p1, v0, Lio/nekohasekai/sagernet/database/GroupManager$createGroup$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local p1, "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    .end local p1    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    :pswitch_1
    iget-object p1, v0, Lio/nekohasekai/sagernet/database/GroupManager$createGroup$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .restart local p1    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local p1    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 83
    .local v3, "this":Lio/nekohasekai/sagernet/database/GroupManager;
    .restart local p1    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    sget-object v5, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v5

    invoke-interface {v5}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->nextOrder()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x1

    :goto_1
    invoke-virtual {p1, v5, v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setUserOrder(J)V

    .line 84
    sget-object v5, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v5

    move-object v6, p1

    check-cast v6, Lio/nekohasekai/sagernet/fmt/Serializable;

    invoke-static {v6}, Lio/nekohasekai/sagernet/ktx/FormatsKt;->applyDefaultValues(Lio/nekohasekai/sagernet/fmt/Serializable;)Lio/nekohasekai/sagernet/fmt/Serializable;

    move-result-object v6

    check-cast v6, Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-interface {v5, v6}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->createGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;)J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setId(J)V

    .line 85
    new-instance v5, Lio/nekohasekai/sagernet/database/GroupManager$createGroup$2;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6}, Lio/nekohasekai/sagernet/database/GroupManager$createGroup$2;-><init>(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object p1, v0, Lio/nekohasekai/sagernet/database/GroupManager$createGroup$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lio/nekohasekai/sagernet/database/GroupManager$createGroup$1;->label:I

    invoke-virtual {v3, v5, v0}, Lio/nekohasekai/sagernet/database/GroupManager;->iterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "this":Lio/nekohasekai/sagernet/database/GroupManager;
    if-ne v3, v2, :cond_2

    .line 82
    return-object v2

    .line 86
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getType()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 87
    sget-object v3, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;->INSTANCE:Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;

    iput-object p1, v0, Lio/nekohasekai/sagernet/database/GroupManager$createGroup$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v0, Lio/nekohasekai/sagernet/database/GroupManager$createGroup$1;->label:I

    invoke-virtual {v3, v0}, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;->reconfigureUpdater(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_3

    .line 82
    return-object v2

    .line 89
    :cond_3
    :goto_3
    nop

    :cond_4
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final deleteGroup(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p3, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$1;

    iget v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$1;

    invoke-direct {v0, p0, p3}, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$1;-><init>(Lio/nekohasekai/sagernet/database/GroupManager;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 100
    iget v3, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$1;->label:I

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
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 101
    .local v3, "this":Lio/nekohasekai/sagernet/database/GroupManager;
    .local p1, "groupId":J
    sget-object v4, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->deleteById(J)I

    .line 102
    sget-object v4, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->deleteByGroup(J)V

    .line 103
    new-instance v4, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$2;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v5}, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$2;-><init>(JLkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x1

    iput v5, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$1;->label:I

    invoke-virtual {v3, v4, v0}, Lio/nekohasekai/sagernet/database/GroupManager;->iterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v3    # "this":Lio/nekohasekai/sagernet/database/GroupManager;
    .end local p1    # "groupId":J
    if-ne p1, v2, :cond_1

    .line 100
    return-object v2

    .line 104
    :cond_1
    :goto_1
    sget-object p1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;->INSTANCE:Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;

    const/4 p2, 0x2

    iput p2, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$1;->label:I

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;->reconfigureUpdater(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_2

    .line 100
    return-object v2

    .line 105
    :cond_2
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final deleteGroup(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$3;

    iget v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$3;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$3;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$3;-><init>(Lio/nekohasekai/sagernet/database/GroupManager;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$3;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 107
    iget v3, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$3;->label:I

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
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_1
    iget-object p1, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$3;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v3, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$3;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/nekohasekai/sagernet/database/GroupManager;

    .local v3, "this":Lio/nekohasekai/sagernet/database/GroupManager;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v3    # "this":Lio/nekohasekai/sagernet/database/GroupManager;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 108
    .restart local v3    # "this":Lio/nekohasekai/sagernet/database/GroupManager;
    .local p1, "group":Ljava/util/List;
    sget-object v4, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v4

    invoke-interface {v4, p1}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->deleteGroup(Ljava/util/List;)V

    .line 109
    sget-object v4, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v4

    move-object v5, p1

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 117
    .local v6, "$i$f$map":I
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .local v7, "destination$iv$iv":Ljava/util/Collection;
    const/4 v8, 0x0

    .line 118
    .local v8, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 119
    .local v5, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v5

    check-cast v10, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v10, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v11, 0x0

    .line 109
    .local v11, "$i$a$-map-GroupManager$deleteGroup$4":I
    invoke-virtual {v10}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v10

    .end local v10    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v11    # "$i$a$-map-GroupManager$deleteGroup$4":I
    invoke-static {v10, v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v10

    .line 119
    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    .end local v5    # "item$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$i$f$mapTo":I
    move-object v5, v7

    check-cast v5, Ljava/util/List;

    .line 117
    nop

    .end local v6    # "$i$f$map":I
    check-cast v5, Ljava/util/Collection;

    .line 109
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toLongArray(Ljava/util/Collection;)[J

    move-result-object v5

    invoke-interface {v4, v5}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->deleteByGroup([J)V

    .line 110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object p1, v4

    .end local p1    # "group":Ljava/util/List;
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v4, "proxyGroup":Lio/nekohasekai/sagernet/database/ProxyGroup;
    new-instance v6, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$5;

    invoke-direct {v6, v4, v5}, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$5;-><init>(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object v3, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$3;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$3;->L$1:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$3;->label:I

    invoke-virtual {v3, v6, v0}, Lio/nekohasekai/sagernet/database/GroupManager;->iterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "proxyGroup":Lio/nekohasekai/sagernet/database/ProxyGroup;
    if-ne v4, v2, :cond_2

    .line 107
    return-object v2

    .line 110
    :cond_2
    :goto_3
    goto :goto_2

    .line 111
    .end local v3    # "this":Lio/nekohasekai/sagernet/database/GroupManager;
    :cond_3
    sget-object p1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;->INSTANCE:Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;

    iput-object v5, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$3;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$3;->L$1:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v0, Lio/nekohasekai/sagernet/database/GroupManager$deleteGroup$3;->label:I

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;->reconfigureUpdater(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    .line 107
    return-object v2

    .line 112
    :cond_4
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getUserInterface()Lio/nekohasekai/sagernet/database/GroupManager$Interface;
    .locals 1

    .line 34
    sget-object v0, Lio/nekohasekai/sagernet/database/GroupManager;->userInterface:Lio/nekohasekai/sagernet/database/GroupManager$Interface;

    return-object v0
.end method

.method public final iterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/nekohasekai/sagernet/database/GroupManager$Listener;",
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

    instance-of v0, p2, Lio/nekohasekai/sagernet/database/GroupManager$iterator$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/nekohasekai/sagernet/database/GroupManager$iterator$1;

    iget v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$iterator$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$iterator$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$iterator$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/database/GroupManager$iterator$1;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/database/GroupManager$iterator$1;-><init>(Lio/nekohasekai/sagernet/database/GroupManager;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$iterator$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 36
    iget v3, v0, Lio/nekohasekai/sagernet/database/GroupManager$iterator$1;->label:I

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

    .local v3, "$i$a$-forEach-GroupManager$iterator$3":I
    iget-object v4, v0, Lio/nekohasekai/sagernet/database/GroupManager$iterator$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, v0, Lio/nekohasekai/sagernet/database/GroupManager$iterator$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .local v5, "what":Lkotlin/jvm/functions/Function2;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v3    # "$i$a$-forEach-GroupManager$iterator$3":I
    .end local v5    # "what":Lkotlin/jvm/functions/Function2;
    .end local p1    # "$i$f$forEach":I
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .local p1, "what":Lkotlin/jvm/functions/Function2;
    sget-object v3, Lio/nekohasekai/sagernet/database/GroupManager;->listeners:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v4, 0x0

    .line 38
    .local v4, "$i$a$-synchronized-GroupManager$iterator$2":I
    :try_start_0
    sget-object v5, Lio/nekohasekai/sagernet/database/GroupManager;->listeners:Ljava/util/ArrayList;

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .end local v4    # "$i$a$-synchronized-GroupManager$iterator$2":I
    monitor-exit v3

    move-object v3, v5

    check-cast v3, Ljava/lang/Iterable;

    .line 39
    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 115
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
    check-cast v3, Lio/nekohasekai/sagernet/database/GroupManager$Listener;

    .local v3, "listener":Lio/nekohasekai/sagernet/database/GroupManager$Listener;
    const/4 v6, 0x0

    .line 40
    .local v6, "$i$a$-forEach-GroupManager$iterator$3":I
    iput-object v5, v0, Lio/nekohasekai/sagernet/database/GroupManager$iterator$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lio/nekohasekai/sagernet/database/GroupManager$iterator$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, v0, Lio/nekohasekai/sagernet/database/GroupManager$iterator$1;->label:I

    invoke-interface {v5, v3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "listener":Lio/nekohasekai/sagernet/database/GroupManager$Listener;
    if-ne v3, v2, :cond_1

    .line 36
    return-object v2

    .line 40
    :cond_1
    move v3, v6

    .end local v6    # "$i$a$-forEach-GroupManager$iterator$3":I
    .local v3, "$i$a$-forEach-GroupManager$iterator$3":I
    :goto_2
    nop

    .line 41
    nop

    .line 115
    .end local v3    # "$i$a$-forEach-GroupManager$iterator$3":I
    goto :goto_1

    .line 116
    :cond_2
    nop

    .line 42
    .end local p1    # "$i$f$forEach":I
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 37
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

.method public final postReload(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "groupId"    # J
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

    .line 79
    new-instance v0, Lio/nekohasekai/sagernet/database/GroupManager$postReload$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/nekohasekai/sagernet/database/GroupManager$postReload$2;-><init>(JLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0, p3}, Lio/nekohasekai/sagernet/database/GroupManager;->iterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 80
    return-object v0
.end method

.method public final postUpdate(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "groupId"    # J
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

    .line 75
    sget-object v0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->getById(J)Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_0
    invoke-virtual {p0, v0, p3}, Lio/nekohasekai/sagernet/database/GroupManager;->postUpdate(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 76
    return-object v0
.end method

.method public final postUpdate(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "group"    # Lio/nekohasekai/sagernet/database/ProxyGroup;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 71
    new-instance v0, Lio/nekohasekai/sagernet/database/GroupManager$postUpdate$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/nekohasekai/sagernet/database/GroupManager$postUpdate$2;-><init>(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0, p2}, Lio/nekohasekai/sagernet/database/GroupManager;->iterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 72
    return-object v0
.end method

.method public final rearrange(J)V
    .locals 6
    .param p1, "groupId"    # J

    .line 63
    sget-object v0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->getByGroup(J)Ljava/util/List;

    move-result-object v0

    .line 64
    .local v0, "entities":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "index":I
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/nekohasekai/sagernet/database/ProxyEntity;

    add-int/lit8 v4, v1, 0x1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setUserOrder(J)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "index":I
    :cond_0
    sget-object v1, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->updateProxy(Ljava/util/List;)I

    .line 68
    return-void
.end method

.method public final removeListener(Lio/nekohasekai/sagernet/database/GroupManager$Listener;)V
    .locals 3
    .param p1, "listener"    # Lio/nekohasekai/sagernet/database/GroupManager$Listener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lio/nekohasekai/sagernet/database/GroupManager;->listeners:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 52
    .local v1, "$i$a$-synchronized-GroupManager$removeListener$1":I
    :try_start_0
    sget-object v2, Lio/nekohasekai/sagernet/database/GroupManager;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v1    # "$i$a$-synchronized-GroupManager$removeListener$1":I
    monitor-exit v0

    .line 54
    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final setUserInterface(Lio/nekohasekai/sagernet/database/GroupManager$Interface;)V
    .locals 0
    .param p1, "<set-?>"    # Lio/nekohasekai/sagernet/database/GroupManager$Interface;

    .line 34
    sput-object p1, Lio/nekohasekai/sagernet/database/GroupManager;->userInterface:Lio/nekohasekai/sagernet/database/GroupManager$Interface;

    return-void
.end method

.method public final updateGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/nekohasekai/sagernet/database/GroupManager$updateGroup$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/nekohasekai/sagernet/database/GroupManager$updateGroup$1;

    iget v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$updateGroup$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$updateGroup$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$updateGroup$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/database/GroupManager$updateGroup$1;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/database/GroupManager$updateGroup$1;-><init>(Lio/nekohasekai/sagernet/database/GroupManager;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/nekohasekai/sagernet/database/GroupManager$updateGroup$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 92
    iget v3, v0, Lio/nekohasekai/sagernet/database/GroupManager$updateGroup$1;->label:I

    const/4 v4, 0x1

    const/4 v5, 0x0

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
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget-object p1, v0, Lio/nekohasekai/sagernet/database/GroupManager$updateGroup$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local p1, "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p1    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 93
    .local v3, "this":Lio/nekohasekai/sagernet/database/GroupManager;
    .restart local p1    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    sget-object v6, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v6

    invoke-interface {v6, p1}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->updateGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;)V

    .line 94
    new-instance v6, Lio/nekohasekai/sagernet/database/GroupManager$updateGroup$2;

    invoke-direct {v6, p1, v5}, Lio/nekohasekai/sagernet/database/GroupManager$updateGroup$2;-><init>(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iput-object p1, v0, Lio/nekohasekai/sagernet/database/GroupManager$updateGroup$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lio/nekohasekai/sagernet/database/GroupManager$updateGroup$1;->label:I

    invoke-virtual {v3, v6, v0}, Lio/nekohasekai/sagernet/database/GroupManager;->iterator(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "this":Lio/nekohasekai/sagernet/database/GroupManager;
    if-ne v3, v2, :cond_1

    .line 92
    return-object v2

    .line 95
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getType()I

    move-result v3

    .end local p1    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    if-ne v3, v4, :cond_2

    .line 96
    sget-object p1, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;->INSTANCE:Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;

    iput-object v5, v0, Lio/nekohasekai/sagernet/database/GroupManager$updateGroup$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v0, Lio/nekohasekai/sagernet/database/GroupManager$updateGroup$1;->label:I

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/bg/SubscriptionUpdater;->reconfigureUpdater(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_2

    .line 92
    return-object v2

    .line 98
    :cond_2
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
