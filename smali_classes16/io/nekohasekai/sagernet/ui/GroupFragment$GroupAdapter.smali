.class public final Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GroupFragment.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/database/GroupManager$Listener;
.implements Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/GroupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GroupAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;",
        ">;",
        "Lio/nekohasekai/sagernet/database/GroupManager$Listener;",
        "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface<",
        "Lio/nekohasekai/sagernet/database/ProxyGroup;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGroupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GroupFragment.kt\nio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,562:1\n295#2,2:563\n1557#2:565\n1628#2,3:566\n360#2,7:569\n360#2,7:576\n360#2,7:583\n*S KotlinDebug\n*F\n+ 1 GroupFragment.kt\nio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter\n*L\n177#1:563,2\n255#1:565\n255#1:566,3\n277#1:569,7\n293#1:576,7\n307#1:583,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0004\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00030\u00012\u00020\u00042\u0008\u0012\u0004\u0012\u00020\u00060\u0005B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\r\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u001c\u0010\u0010\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u001c\u0010\u0015\u001a\u00020\u000e2\n\u0010\u0016\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0014H\u0016J\u0008\u0010\u0018\u001a\u00020\u0014H\u0016J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u0014H\u0016J\u0016\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u0014J\u0006\u0010 \u001a\u00020!J\u000e\u0010\"\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u0014J\"\u0010$\u001a\u00020\u000e2\u0018\u0010%\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00060\'0&H\u0016J\"\u0010(\u001a\u00020\u000e2\u0018\u0010%\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00060\'0&H\u0016J\u0016\u0010)\u001a\u00020\u000e2\u0006\u0010*\u001a\u00020\u0006H\u0096@\u00a2\u0006\u0002\u0010+J\u0016\u0010,\u001a\u00020\u000e2\u0006\u0010-\u001a\u00020\u001aH\u0096@\u00a2\u0006\u0002\u0010.J\u0016\u0010/\u001a\u00020\u000e2\u0006\u0010*\u001a\u00020\u0006H\u0096@\u00a2\u0006\u0002\u0010+J\u0016\u0010/\u001a\u00020\u000e2\u0006\u0010-\u001a\u00020\u001aH\u0096@\u00a2\u0006\u0002\u0010.R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;",
        "Lio/nekohasekai/sagernet/ui/GroupFragment;",
        "Lio/nekohasekai/sagernet/database/GroupManager$Listener;",
        "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;",
        "Lio/nekohasekai/sagernet/database/ProxyGroup;",
        "<init>",
        "(Lio/nekohasekai/sagernet/ui/GroupFragment;)V",
        "groupList",
        "Ljava/util/ArrayList;",
        "getGroupList",
        "()Ljava/util/ArrayList;",
        "reload",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "getItemCount",
        "getItemId",
        "",
        "updated",
        "Ljava/util/HashSet;",
        "move",
        "from",
        "to",
        "commitMove",
        "Lkotlinx/coroutines/Job;",
        "remove",
        "index",
        "undo",
        "actions",
        "",
        "Lkotlin/Pair;",
        "commit",
        "groupAdd",
        "group",
        "(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "groupRemoved",
        "groupId",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "groupUpdated",
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
.field private final groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/GroupFragment;

.field private final updated:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$MnBfIkB1aqP6_zNy5wQX3DycALw(Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;)V
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->reload$lambda$2(Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fVUKjUlwGzM51VrNtPWSH_oSQ_Q(Lio/nekohasekai/sagernet/database/ProxyGroup;)Z
    .locals 0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->reload$lambda$1(Lio/nekohasekai/sagernet/database/ProxyGroup;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/ui/GroupFragment;)V
    .locals 2
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/ui/GroupFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    .line 191
    nop

    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->setHasStableIds(Z)V

    .line 194
    new-instance v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$1;-><init>(Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 197
    nop

    .line 215
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->updated:Ljava/util/HashSet;

    .line 169
    return-void
.end method

.method public static final synthetic access$getUpdated$p(Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;)Ljava/util/HashSet;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;

    .line 169
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->updated:Ljava/util/HashSet;

    return-object v0
.end method

.method private static final reload$lambda$1(Lio/nekohasekai/sagernet/database/ProxyGroup;)Z
    .locals 1
    .param p0, "it"    # Lio/nekohasekai/sagernet/database/ProxyGroup;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getUngrouped()Z

    move-result v0

    return v0
.end method

.method private static final reload$lambda$2(Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;)V
    .locals 0
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;

    .line 187
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->notifyDataSetChanged()V

    .line 188
    return-void
.end method


# virtual methods
.method public commit(Ljava/util/List;)V
    .locals 10
    .param p1, "actions"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "actions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 565
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 566
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 567
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/Pair;

    .local v7, "it":Lkotlin/Pair;
    const/4 v8, 0x0

    .line 255
    .local v8, "$i$a$-map-GroupFragment$GroupAdapter$commit$groups$1":I
    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 567
    .end local v7    # "it":Lkotlin/Pair;
    .end local v8    # "$i$a$-map-GroupFragment$GroupAdapter$commit$groups$1":I
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 568
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 565
    nop

    .line 255
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    move-object v0, v2

    .line 256
    .local v0, "groups":Ljava/util/List;
    new-instance v1, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$commit$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$commit$1;-><init>(Ljava/util/List;Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 260
    return-void
.end method

.method public final commitMove()Lkotlinx/coroutines/Job;
    .locals 2

    .line 237
    new-instance v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$commitMove$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$commitMove$1;-><init>(Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 240
    return-object v0
.end method

.method public final getGroupList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 208
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 212
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public groupAdd(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    instance-of v0, p2, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$1;

    iget v1, v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$1;

    invoke-direct {v0, p0, p2}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$1;-><init>(Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 262
    iget v3, v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$1;->label:I

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
    iget-object p1, v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local p1, "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;

    .local v3, "this":Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v3    # "this":Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;
    .end local p1    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    :pswitch_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 263
    .restart local v3    # "this":Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;
    .restart local p1    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    iget-object v4, v3, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$1;->label:I

    const-wide/16 v4, 0x12c

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_1

    .line 262
    return-object v2

    .line 266
    :cond_1
    :goto_1
    new-instance v4, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$2;

    iget-object v5, v3, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, p1, v6}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$2;-><init>(Lio/nekohasekai/sagernet/ui/GroupFragment;Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v6, v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupAdd$1;->label:I

    invoke-static {v4, v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v3    # "this":Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;
    .end local p1    # "group":Lio/nekohasekai/sagernet/database/ProxyGroup;
    if-ne p1, v2, :cond_2

    .line 262
    return-object v2

    .line 274
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

.method public groupRemoved(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
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

    .line 277
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    .local v0, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 569
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .line 570
    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 571
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v6, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v7, 0x0

    .line 277
    .local v7, "$i$a$-indexOfFirst-GroupFragment$GroupAdapter$groupRemoved$index$1":I
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v8

    cmp-long v10, v8, p1

    if-nez v10, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 571
    .end local v6    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v7    # "$i$a$-indexOfFirst-GroupFragment$GroupAdapter$groupRemoved$index$1":I
    :goto_1
    if-eqz v8, :cond_1

    .line 572
    goto :goto_2

    .line 573
    :cond_1
    nop

    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 575
    :cond_2
    const/4 v2, -0x1

    .line 277
    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v1    # "$i$f$indexOfFirst":I
    .end local v2    # "index$iv":I
    :goto_2
    move v0, v2

    .line 278
    .local v0, "index":I
    if-ne v0, v5, :cond_3

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 279
    :cond_3
    new-instance v1, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupRemoved$2;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v0, v3}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupRemoved$2;-><init>(Lio/nekohasekai/sagernet/ui/GroupFragment;Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, p3}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_4

    return-object v1

    :cond_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 290
    return-object v1
.end method

.method public groupUpdated(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
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

    .line 307
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    .local v0, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 583
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .line 584
    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 585
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v6, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v7, 0x0

    .line 307
    .local v7, "$i$a$-indexOfFirst-GroupFragment$GroupAdapter$groupUpdated$index$2":I
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v8

    cmp-long v10, v8, p1

    if-nez v10, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 585
    .end local v6    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v7    # "$i$a$-indexOfFirst-GroupFragment$GroupAdapter$groupUpdated$index$2":I
    :goto_1
    if-eqz v8, :cond_1

    .line 586
    goto :goto_2

    .line 587
    :cond_1
    nop

    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 589
    :cond_2
    const/4 v2, -0x1

    .line 307
    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v1    # "$i$f$indexOfFirst":I
    .end local v2    # "index$iv":I
    :goto_2
    move v0, v2

    .line 308
    .local v0, "index":I
    if-ne v0, v5, :cond_4

    .line 309
    invoke-virtual {p0, p3}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->reload(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_3

    return-object v1

    .line 310
    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 312
    :cond_4
    new-instance v1, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupUpdated$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupUpdated$4;-><init>(Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, p3}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_5

    return-object v1

    :cond_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 315
    return-object v1
.end method

.method public groupUpdated(Lio/nekohasekai/sagernet/database/ProxyGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
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

    .line 293
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    .local v0, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 576
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .line 577
    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 578
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v6, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v7, 0x0

    .line 293
    .local v7, "$i$a$-indexOfFirst-GroupFragment$GroupAdapter$groupUpdated$index$1":I
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v8

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-nez v12, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 578
    .end local v6    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v7    # "$i$a$-indexOfFirst-GroupFragment$GroupAdapter$groupUpdated$index$1":I
    :goto_1
    if-eqz v8, :cond_1

    .line 579
    goto :goto_2

    .line 580
    :cond_1
    nop

    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 582
    :cond_2
    const/4 v2, -0x1

    .line 293
    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v1    # "$i$f$indexOfFirst":I
    .end local v2    # "index$iv":I
    :goto_2
    move v0, v2

    .line 294
    .local v0, "index":I
    if-ne v0, v5, :cond_4

    .line 295
    invoke-virtual {p0, p2}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->reload(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_3

    return-object v1

    .line 296
    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 298
    :cond_4
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 299
    new-instance v1, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupUpdated$2;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v0, v3}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$groupUpdated$2;-><init>(Lio/nekohasekai/sagernet/ui/GroupFragment;Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;ILkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, p2}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_5

    return-object v1

    :cond_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 304
    return-object v1
.end method

.method public final move(II)V
    .locals 13
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 218
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 219
    .local v0, "first":Lio/nekohasekai/sagernet/database/ProxyGroup;
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getUserOrder()J

    move-result-wide v2

    .line 220
    .local v2, "previousOrder":J
    new-instance v4, Lkotlin/Pair;

    if-ge p1, p2, :cond_0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    :cond_0
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, p2, 0x1

    invoke-static {v6, p1}, Lkotlin/ranges/RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object v6

    .line 220
    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .local v5, "step":I
    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/ranges/IntProgression;

    .line 223
    .local v4, "range":Lkotlin/ranges/IntProgression;
    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v6

    .local v6, "i":I
    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v7

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v8

    if-lez v8, :cond_1

    if-le v6, v7, :cond_2

    :cond_1
    if-gez v8, :cond_3

    if-gt v7, v6, :cond_3

    .line 224
    :cond_2
    :goto_1
    iget-object v9, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    add-int v10, v6, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 225
    .local v9, "next":Lio/nekohasekai/sagernet/database/ProxyGroup;
    invoke-virtual {v9}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getUserOrder()J

    move-result-wide v10

    .line 226
    .local v10, "order":J
    invoke-virtual {v9, v2, v3}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setUserOrder(J)V

    .line 227
    move-wide v2, v10

    .line 228
    iget-object v12, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v12, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v12, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->updated:Ljava/util/HashSet;

    invoke-virtual {v12, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 223
    .end local v9    # "next":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v10    # "order":J
    if-eq v6, v7, :cond_3

    add-int/2addr v6, v8

    goto :goto_1

    .line 231
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v0, v2, v3}, Lio/nekohasekai/sagernet/database/ProxyGroup;->setUserOrder(J)V

    .line 232
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->updated:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->notifyItemMoved(II)V

    .line 235
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 169
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;

    invoke-virtual {p0, v0, p2}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->onBindViewHolder(Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;I)V
    .locals 2
    .param p1, "holder"    # Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/nekohasekai/sagernet/database/ProxyGroup;

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;->bind(Lio/nekohasekai/sagernet/database/ProxyGroup;)V

    .line 205
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 169
    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    new-instance v0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;

    move-result-object v2

    const-string v3, "inflate(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupHolder;-><init>(Lio/nekohasekai/sagernet/ui/GroupFragment;Lio/nekohasekai/sagernet/databinding/LayoutGroupItemBinding;)V

    return-object v0
.end method

.method public final reload(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 176
    sget-object v0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getGroupDao()Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;

    move-result-object v0

    invoke-interface {v0}, Lio/nekohasekai/sagernet/database/ProxyGroup$Dao;->allGroups()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, "groups":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 563
    .local v2, "$i$f$firstOrNull":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .local v5, "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    const/4 v6, 0x0

    .line 177
    .local v6, "$i$a$-firstOrNull-GroupFragment$GroupAdapter$reload$ungrouped$1":I
    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getUngrouped()Z

    move-result v5

    .line 563
    .end local v5    # "it":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v6    # "$i$a$-firstOrNull-GroupFragment$GroupAdapter$reload$ungrouped$1":I
    if-eqz v5, :cond_0

    goto :goto_0

    .line 564
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    .line 177
    .end local v1    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_0
    move-object v1, v4

    check-cast v1, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 179
    .local v1, "ungrouped":Lio/nekohasekai/sagernet/database/ProxyGroup;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    if-eqz v1, :cond_2

    .line 180
    sget-object v2, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object v2

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/ProxyGroup;->getId()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->countByGroup(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    .line 182
    new-instance v2, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 184
    :cond_2
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 185
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->this$0:Lio/nekohasekai/sagernet/ui/GroupFragment;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/GroupFragment;->getGroupListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    new-instance v3, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 189
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method

.method public final remove(I)V
    .locals 1
    .param p1, "index"    # I

    .line 243
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 244
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->notifyItemRemoved(I)V

    .line 245
    return-void
.end method

.method public undo(Ljava/util/List;)V
    .locals 4
    .param p1, "actions"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Lio/nekohasekai/sagernet/database/ProxyGroup;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "actions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .local v2, "index":I
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/nekohasekai/sagernet/database/ProxyGroup;

    .line 249
    .local v1, "item":Lio/nekohasekai/sagernet/database/ProxyGroup;
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->groupList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 250
    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/GroupFragment$GroupAdapter;->notifyItemInserted(I)V

    .end local v1    # "item":Lio/nekohasekai/sagernet/database/ProxyGroup;
    .end local v2    # "index":I
    goto :goto_0

    .line 252
    :cond_0
    return-void
.end method
