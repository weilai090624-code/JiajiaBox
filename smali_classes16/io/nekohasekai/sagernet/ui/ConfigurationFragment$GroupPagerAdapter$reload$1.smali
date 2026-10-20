.class final Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigurationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->reload(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigurationFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigurationFragment.kt\nio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1764:1\n1#2:1765\n360#3,7:1766\n298#4,2:1773\n*S KotlinDebug\n*F\n+ 1 ConfigurationFragment.kt\nio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1\n*L\n952#1:1766,7\n968#1:1773,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.nekohasekai.sagernet.ui.ConfigurationFragment$GroupPagerAdapter$reload$1"
    f = "ConfigurationFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $now:Z

.field label:I

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

.field final synthetic this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;


# direct methods
.method public static synthetic $r8$lambda$V18HGXnQJ05-1Xb32IF9ek397Yc(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->invokeSuspend$lambda$4(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    return-void
.end method

.method constructor <init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;ZLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment;",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    iput-boolean p3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->$now:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$4(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V
    .locals 4
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;
    .param p1, "$newGroupList"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p2, "$set"    # Lkotlin/jvm/internal/Ref$BooleanRef;
    .param p3, "this$1"    # Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    .line 964
    iget-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->setGroupList(Ljava/util/ArrayList;)V

    .line 965
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->notifyDataSetChanged()V

    .line 966
    iget-boolean v0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getGroupPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->getSelectedGroupIndex()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 967
    :cond_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->getGroupList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 968
    .local v0, "hideTab":Z
    :goto_0
    invoke-virtual {p3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getTabLayout()Lcom/google/android/material/tabs/TabLayout;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .local v2, "$this$isGone$iv":Landroid/view/View;
    const/4 v3, 0x0

    .line 1773
    .local v3, "$i$f$setGone":I
    if-eqz v0, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1774
    nop

    .line 969
    .end local v2    # "$this$isGone$iv":Landroid/view/View;
    .end local v3    # "$i$f$setGone":I
    invoke-virtual {p3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    invoke-static {v2}, Lio/nekohasekai/sagernet/ktx/DimensKt;->dp2px(I)I

    move-result v2

    int-to-float v2, v2

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/Toolbar;->setElevation(F)V

    .line 970
    invoke-static {p3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->access$syncGlassInset(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    .line 971
    invoke-virtual {p3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getSelect()Z

    move-result v1

    if-nez v1, :cond_4

    .line 972
    invoke-virtual {p3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getGroupPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v1

    invoke-virtual {p3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getUpdateSelectedCallback()Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 974
    :cond_4
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    iget-boolean v3, p0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->$now:Z

    invoke-direct {v0, v1, v2, v3, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment;Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;ZLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 937
    iget v1, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    .line 938
    .local v1, "$result":Ljava/lang/Object;
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .local v2, "newGroupList":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v4

    invoke-interface {v4}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->allGroups()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 939
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 940
    sget-object v3, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v3

    new-instance v15, Lio/nekohasekai/sagernet/database/ProxyGroup;

    move-object v4, v15

    const/16 v19, 0x3fb

    const/16 v20, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v21, v15

    move-wide/from16 v15, v16

    const-wide/16 v17, 0x0

    invoke-direct/range {v4 .. v20}, Lio/nekohasekai/sagernet/database/ProxyGroup;-><init>(JJZLjava/lang/String;ILio/nekohasekai/sagernet/database/SubscriptionBean;IZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v21

    invoke-interface {v3, v4}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->createGroup(Lio/nekohasekai/sagernet/database/ProxyGroup;)J

    .line 941
    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v4

    invoke-interface {v4}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->allGroups()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 943
    :cond_0
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 1765
    .local v6, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v7, 0x0

    .line 943
    .local v7, "$i$a$-find-ConfigurationFragment$GroupPagerAdapter$reload$1$1":I
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getUngrouped()Z

    move-result v6

    .end local v6    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v7    # "$i$a$-find-ConfigurationFragment$GroupPagerAdapter$reload$1$1":I
    if-eqz v6, :cond_1

    goto :goto_0

    :cond_2
    move-object v4, v5

    :goto_0
    check-cast v4, Lio/nekohasekai/sagernet/database/ProxyGroup;

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_4

    move-object v3, v4

    .local v3, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v4, 0x0

    .line 944
    .local v4, "$i$a$-let-ConfigurationFragment$GroupPagerAdapter$reload$1$2":I
    sget-object v8, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v8}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v8

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v9

    invoke-interface {v8, v9, v10}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->countByGroup(J)J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-nez v10, :cond_3

    .line 945
    iget-object v8, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 947
    .end local v3    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    :cond_3
    nop

    .line 943
    .end local v4    # "$i$a$-let-ConfigurationFragment$GroupPagerAdapter$reload$1$2":I
    nop

    .line 949
    :cond_4
    new-instance v3, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .local v3, "selectedGroup":Lkotlin/jvm/internal/Ref$LongRef;
    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getSelectedItem()Lio/nekohasekai/sagernet/database/ProxyEntity;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getGroupId()J

    move-result-wide v8

    goto :goto_1

    :cond_5
    sget-object v4, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/database/DataStore;->currentGroupId()J

    move-result-wide v8

    :goto_1
    iput-wide v8, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 950
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 951
    .local v4, "set":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-wide v8, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v12, v8, v6

    if-lez v12, :cond_9

    .line 952
    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    iget-object v7, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    .local v7, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v8, 0x0

    .line 1766
    .local v8, "$i$f$indexOfFirst":I
    const/4 v9, 0x0

    .line 1767
    .local v9, "index$iv":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v7    # "$this$indexOfFirst$iv":Ljava/util/List;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1768
    .local v7, "item$iv":Ljava/lang/Object;
    check-cast v7, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v7, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v13, 0x0

    .line 952
    .local v13, "$i$a$-indexOfFirst-ConfigurationFragment$GroupPagerAdapter$reload$1$3":I
    invoke-virtual {v7}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v14

    iget-wide v10, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v17, v14, v10

    if-nez v17, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    .line 1768
    .end local v7    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v13    # "$i$a$-indexOfFirst-ConfigurationFragment$GroupPagerAdapter$reload$1$3":I
    :goto_3
    if-eqz v7, :cond_7

    .line 1769
    .end local v3    # "selectedGroup":Lkotlin/jvm/internal/Ref$LongRef;
    goto :goto_4

    .line 1770
    .restart local v3    # "selectedGroup":Lkotlin/jvm/internal/Ref$LongRef;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1772
    .end local v3    # "selectedGroup":Lkotlin/jvm/internal/Ref$LongRef;
    :cond_8
    const/4 v3, -0x1

    const/4 v9, -0x1

    .line 952
    .end local v8    # "$i$f$indexOfFirst":I
    .end local v9    # "index$iv":I
    :goto_4
    invoke-virtual {v6, v9}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->setSelectedGroupIndex(I)V

    .line 953
    const/4 v6, 0x1

    iput-boolean v6, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_5

    .line 954
    .restart local v3    # "selectedGroup":Lkotlin/jvm/internal/Ref$LongRef;
    :cond_9
    const/4 v6, 0x1

    iget-object v7, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->getGroupList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v6, :cond_a

    .line 955
    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;->getGroupList()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v6

    iput-wide v6, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 956
    sget-object v6, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedGroup()J

    move-result-wide v6

    iget-wide v8, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v10, v6, v8

    if-eqz v10, :cond_a

    .line 957
    sget-object v6, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    iget-wide v7, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v6, v7, v8}, Lio/nekohasekai/sagernet/database/DataStore;->setSelectedGroup(J)V

    .line 961
    .end local v3    # "selectedGroup":Lkotlin/jvm/internal/Ref$LongRef;
    :cond_a
    :goto_5
    iget-boolean v3, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->$now:Z

    if-eqz v3, :cond_b

    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 1765
    .local v3, "it":Landroidx/fragment/app/FragmentActivity;
    const/4 v5, 0x0

    .line 961
    .local v5, "$i$a$-let-ConfigurationFragment$GroupPagerAdapter$reload$1$runFunc$1":I
    new-instance v6, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1$runFunc$1$1;

    invoke-direct {v6, v3}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1$runFunc$1$1;-><init>(Ljava/lang/Object;)V

    move-object v5, v6

    check-cast v5, Lkotlin/reflect/KFunction;

    .end local v3    # "it":Landroidx/fragment/app/FragmentActivity;
    .end local v5    # "$i$a$-let-ConfigurationFragment$GroupPagerAdapter$reload$1$runFunc$1":I
    goto :goto_6

    :cond_b
    new-instance v3, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1$runFunc$2;

    iget-object v5, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    invoke-virtual {v5}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment;->getGroupPager()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v5

    invoke-direct {v3, v5}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1$runFunc$2;-><init>(Ljava/lang/Object;)V

    move-object v5, v3

    check-cast v5, Lkotlin/reflect/KFunction;

    :cond_c
    :goto_6
    move-object v3, v5

    .line 962
    .local v3, "runFunc":Lkotlin/reflect/KFunction;
    if-eqz v3, :cond_d

    .line 963
    move-object v5, v3

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->this$1:Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;

    iget-object v7, v0, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1;->this$0:Lio/nekohasekai/sagernet/ui/ConfigurationFragment;

    new-instance v8, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1$$ExternalSyntheticLambda0;

    invoke-direct {v8, v6, v2, v4, v7}, Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter$reload$1$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/ConfigurationFragment$GroupPagerAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lio/nekohasekai/sagernet/ui/ConfigurationFragment;)V

    invoke-interface {v5, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    .end local v2    # "newGroupList":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v3    # "runFunc":Lkotlin/reflect/KFunction;
    .end local v4    # "set":Lkotlin/jvm/internal/Ref$BooleanRef;
    :cond_d
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
