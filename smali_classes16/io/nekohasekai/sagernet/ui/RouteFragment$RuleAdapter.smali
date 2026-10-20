.class public final Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RouteFragment.kt"

# interfaces
.implements Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;
.implements Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/RouteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RuleAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$DocumentHolder;,
        Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;",
        "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface<",
        "Lio/nekohasekai/sagernet/database/RuleEntity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRouteFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RouteFragment.kt\nio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,310:1\n1557#2:311\n1628#2,3:312\n360#2,7:315\n360#2,7:322\n*S KotlinDebug\n*F\n+ 1 RouteFragment.kt\nio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter\n*L\n219#1:311\n219#1:312,3\n234#1:315,7\n244#1:322,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u0008\u0012\u0004\u0012\u00020\u00050\u0004:\u000234B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\r\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u0010\u000fJ\u0018\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J\u0018\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J\u0008\u0010\u0019\u001a\u00020\u0014H\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u0014H\u0016J\u0016\u0010\u001f\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u0014J\u0006\u0010\"\u001a\u00020#J\u000e\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u0014J\"\u0010&\u001a\u00020\u000e2\u0018\u0010\'\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00050)0(H\u0016J\"\u0010*\u001a\u00020\u000e2\u0018\u0010\'\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00050)0(H\u0016J\u0016\u0010+\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020\u0005H\u0096@\u00a2\u0006\u0002\u0010-J\u0016\u0010.\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020\u0005H\u0096@\u00a2\u0006\u0002\u0010-J\u0016\u0010/\u001a\u00020\u000e2\u0006\u00100\u001a\u00020\u001bH\u0096@\u00a2\u0006\u0002\u00101J\u000e\u00102\u001a\u00020\u000eH\u0096@\u00a2\u0006\u0002\u0010\u000fR!\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\u00050\tj\u0008\u0012\u0004\u0012\u00020\u0005`\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u001c\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u001dj\u0008\u0012\u0004\u0012\u00020\u0005`\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lio/nekohasekai/sagernet/database/ProfileManager$RuleListener;",
        "Lio/nekohasekai/sagernet/widget/UndoSnackbarManager$Interface;",
        "Lio/nekohasekai/sagernet/database/RuleEntity;",
        "<init>",
        "(Lio/nekohasekai/sagernet/ui/RouteFragment;)V",
        "ruleList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getRuleList",
        "()Ljava/util/ArrayList;",
        "reload",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "getItemViewType",
        "position",
        "onBindViewHolder",
        "holder",
        "getItemCount",
        "getItemId",
        "",
        "updated",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
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
        "onAdd",
        "rule",
        "(Lio/nekohasekai/sagernet/database/RuleEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onUpdated",
        "onRemoved",
        "ruleId",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onCleared",
        "DocumentHolder",
        "RuleHolder",
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
.field private final ruleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

.field private final updated:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6QA3PDUWQNkJ8R6pPzixMc7qrz0(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Lio/nekohasekai/sagernet/ui/RouteFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->onCleared$lambda$7(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Lio/nekohasekai/sagernet/ui/RouteFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9dDfHvFak-bfx9FughaW6R2YdSo(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;ILio/nekohasekai/sagernet/database/RuleEntity;Lio/nekohasekai/sagernet/ui/RouteFragment;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->onUpdated$lambda$4(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;ILio/nekohasekai/sagernet/database/RuleEntity;Lio/nekohasekai/sagernet/ui/RouteFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RdpIKUoavEEhz4kxc9y3uj8q0_U(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Lio/nekohasekai/sagernet/database/RuleEntity;Lio/nekohasekai/sagernet/ui/RouteFragment;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->onAdd$lambda$2(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Lio/nekohasekai/sagernet/database/RuleEntity;Lio/nekohasekai/sagernet/ui/RouteFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UvR4RXJhiYylMWw-UbrvJ33ek_I(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;ILio/nekohasekai/sagernet/ui/RouteFragment;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->onRemoved$lambda$6(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;ILio/nekohasekai/sagernet/ui/RouteFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tuTY7gz1ztIWnM4Pgsv2Cf4r8ew(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Ljava/util/List;Lio/nekohasekai/sagernet/ui/RouteFragment;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->reload$lambda$0(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Ljava/util/List;Lio/nekohasekai/sagernet/ui/RouteFragment;)V

    return-void
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/ui/RouteFragment;)V
    .locals 2
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/ui/RouteFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    .line 140
    nop

    .line 141
    new-instance v0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$1;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 144
    nop

    .line 179
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->updated:Ljava/util/HashSet;

    .line 128
    return-void
.end method

.method public static final synthetic access$getUpdated$p(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;)Ljava/util/HashSet;
    .locals 1
    .param p0, "$this"    # Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    .line 128
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->updated:Ljava/util/HashSet;

    return-object v0
.end method

.method private static final onAdd$lambda$2(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Lio/nekohasekai/sagernet/database/RuleEntity;Lio/nekohasekai/sagernet/ui/RouteFragment;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;
    .param p1, "$rule"    # Lio/nekohasekai/sagernet/database/RuleEntity;
    .param p2, "this$1"    # Lio/nekohasekai/sagernet/ui/RouteFragment;

    .line 227
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p2}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleAdapter()Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->notifyItemInserted(I)V

    .line 229
    move-object v0, p2

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->needReload(Landroidx/fragment/app/Fragment;)V

    .line 230
    return-void
.end method

.method private static final onCleared$lambda$7(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Lio/nekohasekai/sagernet/ui/RouteFragment;)V
    .locals 1
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;
    .param p1, "this$1"    # Lio/nekohasekai/sagernet/ui/RouteFragment;

    .line 258
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 259
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleAdapter()Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->notifyDataSetChanged()V

    .line 260
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->needReload(Landroidx/fragment/app/Fragment;)V

    .line 261
    return-void
.end method

.method private static final onRemoved$lambda$6(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;ILio/nekohasekai/sagernet/ui/RouteFragment;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;
    .param p1, "$index"    # I
    .param p2, "this$1"    # Lio/nekohasekai/sagernet/ui/RouteFragment;

    .line 250
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 251
    invoke-virtual {p2}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleAdapter()Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->notifyItemRemoved(I)V

    .line 252
    move-object v0, p2

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->needReload(Landroidx/fragment/app/Fragment;)V

    .line 253
    return-void
.end method

.method private static final onUpdated$lambda$4(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;ILio/nekohasekai/sagernet/database/RuleEntity;Lio/nekohasekai/sagernet/ui/RouteFragment;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;
    .param p1, "$index"    # I
    .param p2, "$rule"    # Lio/nekohasekai/sagernet/database/RuleEntity;
    .param p3, "this$1"    # Lio/nekohasekai/sagernet/ui/RouteFragment;

    .line 237
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {p3}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleAdapter()Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->notifyItemChanged(I)V

    .line 239
    move-object v0, p3

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->needReload(Landroidx/fragment/app/Fragment;)V

    .line 240
    return-void
.end method

.method private static final reload$lambda$0(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Ljava/util/List;Lio/nekohasekai/sagernet/ui/RouteFragment;)V
    .locals 2
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;
    .param p1, "$rules"    # Ljava/util/List;
    .param p2, "this$1"    # Lio/nekohasekai/sagernet/ui/RouteFragment;

    .line 134
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 135
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 136
    invoke-virtual {p2}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleAdapter()Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->notifyDataSetChanged()V

    .line 137
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
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "actions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 311
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

    .line 312
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 313
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/Pair;

    .local v7, "it":Lkotlin/Pair;
    const/4 v8, 0x0

    .line 219
    .local v8, "$i$a$-map-RouteFragment$RuleAdapter$commit$rules$1":I
    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/nekohasekai/sagernet/database/RuleEntity;

    .line 313
    .end local v7    # "it":Lkotlin/Pair;
    .end local v8    # "$i$a$-map-RouteFragment$RuleAdapter$commit$rules$1":I
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 314
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 311
    nop

    .line 219
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    move-object v0, v2

    .line 220
    .local v0, "rules":Ljava/util/List;
    new-instance v1, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$commit$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$commit$1;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 223
    return-void
.end method

.method public final commitMove()Lkotlinx/coroutines/Job;
    .locals 3

    .line 198
    new-instance v0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$commitMove$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$commitMove$1;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Lio/nekohasekai/sagernet/ui/RouteFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->runOnDefaultDispatcher(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 204
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 171
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 175
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 176
    :cond_0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/database/RuleEntity;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/RuleEntity;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 158
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 159
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final getRuleList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final move(II)V
    .locals 13
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 181
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/nekohasekai/sagernet/database/RuleEntity;

    .line 182
    .local v0, "first":Lio/nekohasekai/sagernet/database/RuleEntity;
    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/RuleEntity;->getUserOrder()J

    move-result-wide v2

    .line 183
    .local v2, "previousOrder":J
    new-instance v4, Lkotlin/Pair;

    if-ge p1, p2, :cond_0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, p1, -0x1

    add-int/lit8 v7, p2, -0x1

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, p1, -0x1

    invoke-static {p2, v6}, Lkotlin/ranges/RangesKt;->downTo(II)Lkotlin/ranges/IntProgression;

    move-result-object v6

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

    .line 184
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

    .line 185
    :cond_2
    :goto_1
    iget-object v9, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    add-int v10, v6, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lio/nekohasekai/sagernet/database/RuleEntity;

    .line 186
    .local v9, "next":Lio/nekohasekai/sagernet/database/RuleEntity;
    invoke-virtual {v9}, Lio/nekohasekai/sagernet/database/RuleEntity;->getUserOrder()J

    move-result-wide v10

    .line 187
    .local v10, "order":J
    invoke-virtual {v9, v2, v3}, Lio/nekohasekai/sagernet/database/RuleEntity;->setUserOrder(J)V

    .line 188
    move-wide v2, v10

    .line 189
    iget-object v12, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    invoke-virtual {v12, v6, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v12, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->updated:Ljava/util/HashSet;

    invoke-virtual {v12, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v9    # "next":Lio/nekohasekai/sagernet/database/RuleEntity;
    .end local v10    # "order":J
    if-eq v6, v7, :cond_3

    add-int/2addr v6, v8

    goto :goto_1

    .line 192
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v0, v2, v3}, Lio/nekohasekai/sagernet/database/RuleEntity;->setUserOrder(J)V

    .line 193
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    add-int/lit8 v6, p2, -0x1

    invoke-virtual {v1, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->updated:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->notifyItemMoved(II)V

    .line 196
    return-void
.end method

.method public onAdd(Lio/nekohasekai/sagernet/database/RuleEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .line 226
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

    new-instance v2, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, v1}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$$ExternalSyntheticLambda4;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Lio/nekohasekai/sagernet/database/RuleEntity;Lio/nekohasekai/sagernet/ui/RouteFragment;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 231
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    instance-of v0, p1, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$DocumentHolder;

    if-eqz v0, :cond_0

    .line 164
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$DocumentHolder;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$DocumentHolder;->bind()V

    goto :goto_0

    .line 165
    :cond_0
    instance-of v0, p1, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;

    if-eqz v0, :cond_1

    .line 166
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lio/nekohasekai/sagernet/database/RuleEntity;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;->bind(Lio/nekohasekai/sagernet/database/RuleEntity;)V

    .line 168
    :cond_1
    :goto_0
    return-void
.end method

.method public onCleared(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .line 257
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

    new-instance v2, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v1}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$$ExternalSyntheticLambda2;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Lio/nekohasekai/sagernet/ui/RouteFragment;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 262
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    const-string v0, "inflate(...)"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 151
    new-instance v2, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$DocumentHolder;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {v3, p1, v1}, Lio/nekohasekai/sagernet/databinding/LayoutEmptyRouteBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutEmptyRouteBinding;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p0, v1}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$DocumentHolder;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Lio/nekohasekai/sagernet/databinding/LayoutEmptyRouteBinding;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 153
    :cond_0
    new-instance v2, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-static {v3, p1, v1}, Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p0, v1}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$RuleHolder;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Lio/nekohasekai/sagernet/databinding/LayoutRouteItemBinding;)V

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 150
    :goto_0
    return-object v2
.end method

.method public onRemoved(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
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

    .line 244
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    .local v0, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 322
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .line 323
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

    .line 324
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Lio/nekohasekai/sagernet/database/RuleEntity;

    .local v6, "it":Lio/nekohasekai/sagernet/database/RuleEntity;
    const/4 v7, 0x0

    .line 244
    .local v7, "$i$a$-indexOfFirst-RouteFragment$RuleAdapter$onRemoved$index$1":I
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/RuleEntity;->getId()J

    move-result-wide v8

    cmp-long v10, v8, p1

    if-nez v10, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 324
    .end local v6    # "it":Lio/nekohasekai/sagernet/database/RuleEntity;
    .end local v7    # "$i$a$-indexOfFirst-RouteFragment$RuleAdapter$onRemoved$index$1":I
    :goto_1
    if-eqz v8, :cond_1

    .line 325
    goto :goto_2

    .line 326
    :cond_1
    nop

    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    :cond_2
    const/4 v2, -0x1

    .line 244
    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v1    # "$i$f$indexOfFirst":I
    .end local v2    # "index$iv":I
    :goto_2
    move v0, v2

    .line 245
    .local v0, "index":I
    if-ne v0, v5, :cond_4

    .line 246
    new-instance v1, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$onRemoved$2;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$onRemoved$2;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, p3}, Lio/nekohasekai/sagernet/ktx/AsyncsKt;->onMainDispatcher(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_3

    return-object v1

    :cond_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 254
    return-object v1

    .line 249
    :cond_4
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

    new-instance v3, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v2}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$$ExternalSyntheticLambda1;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;ILio/nekohasekai/sagernet/ui/RouteFragment;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 254
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public onUpdated(Lio/nekohasekai/sagernet/database/RuleEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
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

    .line 234
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    .local v0, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 315
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .line 316
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

    .line 317
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v6, v4

    check-cast v6, Lio/nekohasekai/sagernet/database/RuleEntity;

    .local v6, "it":Lio/nekohasekai/sagernet/database/RuleEntity;
    const/4 v7, 0x0

    .line 234
    .local v7, "$i$a$-indexOfFirst-RouteFragment$RuleAdapter$onUpdated$index$1":I
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/database/RuleEntity;->getId()J

    move-result-wide v8

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/RuleEntity;->getId()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-nez v12, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 317
    .end local v6    # "it":Lio/nekohasekai/sagernet/database/RuleEntity;
    .end local v7    # "$i$a$-indexOfFirst-RouteFragment$RuleAdapter$onUpdated$index$1":I
    :goto_1
    if-eqz v8, :cond_1

    .line 318
    goto :goto_2

    .line 319
    :cond_1
    nop

    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    :cond_2
    const/4 v2, -0x1

    .line 234
    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v1    # "$i$f$indexOfFirst":I
    .end local v2    # "index$iv":I
    :goto_2
    move v0, v2

    .line 235
    .local v0, "index":I
    if-ne v0, v5, :cond_3

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 236
    :cond_3
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

    new-instance v3, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0, p1, v2}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$$ExternalSyntheticLambda3;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;ILio/nekohasekai/sagernet/database/RuleEntity;Lio/nekohasekai/sagernet/ui/RouteFragment;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 241
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
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

    instance-of v0, p1, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$reload$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$reload$1;

    iget v1, v0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$reload$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$reload$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$reload$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$reload$1;

    invoke-direct {v0, p0, p1}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$reload$1;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$reload$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 131
    iget v3, v0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$reload$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$reload$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;

    .local v2, "this":Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v1

    goto :goto_1

    .end local v2    # "this":Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, p0

    .line 132
    .local v3, "this":Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;
    sget-object v4, Lio/nekohasekai/sagernet/database/ProfileManager;->INSTANCE:Lio/nekohasekai/sagernet/database/ProfileManager;

    iput-object v3, v0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$reload$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$reload$1;->label:I

    invoke-virtual {v4, v0}, Lio/nekohasekai/sagernet/database/ProfileManager;->getRules(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_1

    .line 131
    return-object v2

    .line 132
    :cond_1
    move-object v2, v3

    .line 131
    .end local v3    # "this":Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;
    .restart local v2    # "this":Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;
    :goto_1
    move-object v3, v4

    check-cast v3, Ljava/util/List;

    .line 133
    .local v3, "rules":Ljava/util/List;
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/AiRoutingCard;->visibleRules(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v2, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/ui/RouteFragment;->getRuleListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    iget-object v5, v2, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->this$0:Lio/nekohasekai/sagernet/ui/RouteFragment;

    new-instance v6, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2, v3, v5}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;Ljava/util/List;Lio/nekohasekai/sagernet/ui/RouteFragment;)V

    invoke-virtual {v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 138
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(I)V
    .locals 2
    .param p1, "index"    # I

    .line 207
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 208
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->notifyItemRemoved(I)V

    .line 209
    return-void
.end method

.method public undo(Ljava/util/List;)V
    .locals 5
    .param p1, "actions"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Lio/nekohasekai/sagernet/database/RuleEntity;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "actions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
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

    check-cast v1, Lio/nekohasekai/sagernet/database/RuleEntity;

    .line 213
    .local v1, "item":Lio/nekohasekai/sagernet/database/RuleEntity;
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->ruleList:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 214
    invoke-virtual {p0, v2}, Lio/nekohasekai/sagernet/ui/RouteFragment$RuleAdapter;->notifyItemInserted(I)V

    .end local v1    # "item":Lio/nekohasekai/sagernet/database/RuleEntity;
    .end local v2    # "index":I
    goto :goto_0

    .line 216
    :cond_0
    return-void
.end method
