.class final Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AppListActivity.kt"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView$SectionedAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/AppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;",
        ">;",
        "Landroid/widget/Filterable;",
        "Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView$SectionedAdapter;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppListActivity.kt\nio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,322:1\n136#2,9:323\n216#2:332\n217#2:335\n145#2:336\n1#3:333\n1#3:334\n*S KotlinDebug\n*F\n+ 1 AppListActivity.kt\nio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter\n*L\n104#1:323,9\n104#1:332\n104#1:335\n104#1:336\n104#1:334\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Y\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u001e\u0008\u0082\u0004\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00030\u00012\u00020\u00042\u00020\u0005B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000f\u001a\u00020\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0011J\u001c\u0010\u0012\u001a\u00020\u00102\n\u0010\u0013\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J*\u0010\u0012\u001a\u00020\u00102\n\u0010\u0013\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\tH\u0016J\u001c\u0010\u0018\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0015H\u0016J\u0008\u0010\u001c\u001a\u00020\u0015H\u0016J\u0008\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020#2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R \u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0010\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001f\u00a8\u0006$"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;",
        "Lio/nekohasekai/sagernet/ui/AppListActivity;",
        "Landroid/widget/Filterable;",
        "Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView$SectionedAdapter;",
        "<init>",
        "(Lio/nekohasekai/sagernet/ui/AppListActivity;)V",
        "filteredApps",
        "",
        "Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;",
        "getFilteredApps",
        "()Ljava/util/List;",
        "setFilteredApps",
        "(Ljava/util/List;)V",
        "reload",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onBindViewHolder",
        "holder",
        "position",
        "",
        "payloads",
        "",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "getItemCount",
        "filterImpl",
        "io/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$filterImpl$1",
        "Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$filterImpl$1;",
        "getFilter",
        "Landroid/widget/Filter;",
        "getSectionName",
        "",
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
.field private final filterImpl:Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$filterImpl$1;

.field private filteredApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;


# direct methods
.method public static synthetic $r8$lambda$BQmOKERITe79JCXFI1iu1P73JDM(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/Comparable;
    .registers 2

    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->reload$lambda$2(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$i4bjWzNw9AeD-T5nJuAByugByWQ(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/Comparable;
    .registers 1

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->reload$lambda$3(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/Comparable;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lio/nekohasekai/sagernet/ui/AppListActivity;)V
    .registers 4
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/ui/AppListActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 100
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    # getter for: Lio/nekohasekai/sagernet/ui/AppListActivity;->apps:Ljava/util/List;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$getApps$p(Lio/nekohasekai/sagernet/ui/AppListActivity;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->filteredApps:Ljava/util/List;

    .line 127
    new-instance v0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$filterImpl$1;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    invoke-direct {v0, v1, p0}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$filterImpl$1;-><init>(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->filterImpl:Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$filterImpl$1;

    .line 97
    return-void
.end method

.method private static final reload$lambda$2(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/Comparable;
    .registers 3
    .param p0, "this$0"    # Lio/nekohasekai/sagernet/ui/AppListActivity;
    .param p1, "it"    # Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    # invokes: Lio/nekohasekai/sagernet/ui/AppListActivity;->isProxiedApp(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Z
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$isProxiedApp(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method private static final reload$lambda$3(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)Ljava/lang/Comparable;
    .registers 2
    .param p0, "it"    # Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .line 146
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->filterImpl:Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$filterImpl$1;

    check-cast v0, Landroid/widget/Filter;

    return-object v0
.end method

.method public final getFilteredApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->filteredApps:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 125
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->filteredApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "position"    # I

    .line 149
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->filteredApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->firstOrNull(Ljava/lang/CharSequence;)Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    :cond_18
    const-string v0, ""

    :cond_1a
    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 4
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 97
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;

    invoke-virtual {p0, v0, p2}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->onBindViewHolder(Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .registers 5
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I
    .param p3, "p2"    # Ljava/util/List;

    .line 97
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;

    invoke-virtual {p0, v0, p2, p3}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->onBindViewHolder(Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;I)V
    .registers 4
    .param p1, "holder"    # Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->filteredApps:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    invoke-virtual {p1, v0}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->bind(Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;)V

    return-void
.end method

.method public onBindViewHolder(Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;ILjava/util/List;)V
    .registers 5
    .param p1, "holder"    # Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;
    .param p2, "position"    # I
    .param p3, "payloads"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;",
            "I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 115
    invoke-virtual {p1, p3}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;->handlePayload(Ljava/util/List;)V

    .line 116
    return-void

    .line 119
    :cond_17
    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->onBindViewHolder(Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;I)V

    .line 120
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 4
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 97
    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/ui/AppListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;

    move-result-object v2

    const-string v3, "inflate(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppViewHolder;-><init>(Lio/nekohasekai/sagernet/ui/AppListActivity;Lio/nekohasekai/sagernet/databinding/LayoutAppsItemBinding;)V

    return-object v0
.end method

.method public final reload(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 24
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

    .line 103
    move-object/from16 v0, p0

    sget-object v1, Lio/nekohasekai/sagernet/utils/PackageCache;->INSTANCE:Lio/nekohasekai/sagernet/utils/PackageCache;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/utils/PackageCache;->reload()V

    .line 104
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    sget-object v2, Lio/nekohasekai/sagernet/ui/AppListActivity;->Companion:Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;

    # invokes: Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;->getCachedApps()Ljava/util/Map;
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;->access$getCachedApps(Lio/nekohasekai/sagernet/ui/AppListActivity$Companion;)Ljava/util/Map;

    move-result-object v2

    .local v2, "$this$mapNotNull$iv":Ljava/util/Map;
    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    const/4 v4, 0x0

    .line 323
    .local v4, "$i$f$mapNotNull":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v2

    .local v6, "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 331
    .local v7, "$i$f$mapNotNullTo":I
    move-object v8, v6

    .local v8, "$this$forEach$iv$iv$iv":Ljava/util/Map;
    const/4 v9, 0x0

    .line 332
    .local v9, "$i$f$forEach":I
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_25
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .local v11, "element$iv$iv$iv":Ljava/util/Map$Entry;
    move-object v12, v11

    .local v12, "element$iv$iv":Ljava/util/Map$Entry;
    const/4 v13, 0x0

    .line 331
    .local v13, "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    const/4 v14, 0x0

    .line 104
    .local v14, "$i$a$-mapNotNull-AppListActivity$AppsAdapter$reload$2":I
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .local v15, "packageName":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v2

    .end local v2    # "$this$mapNotNull$iv":Ljava/util/Map;
    .local v17, "$this$mapNotNull$iv":Ljava/util/Map;
    move-object/from16 v2, v16

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 105
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    move/from16 v16, v4

    .end local v4    # "$i$f$mapNotNull":I
    .local v16, "$i$f$mapNotNull":I
    invoke-interface/range {p1 .. p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    sget-object v18, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    move-object/from16 v19, v6

    .end local v6    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .local v19, "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    move-object/from16 v6, v18

    check-cast v6, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v4, v6}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lkotlinx/coroutines/Job;

    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->ensureActive(Lkotlinx/coroutines/Job;)V

    .line 106
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_78

    .line 333
    .local v4, "it":Landroid/content/pm/ApplicationInfo;
    const/4 v6, 0x0

    .line 106
    .local v6, "$i$a$-let-AppListActivity$AppsAdapter$reload$2$1":I
    move-object/from16 v18, v2

    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v18, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v2, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;

    move/from16 v20, v6

    .end local v6    # "$i$a$-let-AppListActivity$AppsAdapter$reload$2$1":I
    .local v20, "$i$a$-let-AppListActivity$AppsAdapter$reload$2$1":I
    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/AppListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object/from16 v21, v3

    const-string v3, "getPackageManager(...)"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v6, v4, v15}, Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .end local v4    # "it":Landroid/content/pm/ApplicationInfo;
    .end local v20    # "$i$a$-let-AppListActivity$AppsAdapter$reload$2$1":I
    goto :goto_7d

    .end local v18    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_78
    move-object/from16 v18, v2

    move-object/from16 v21, v3

    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v18    # "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .line 331
    .end local v14    # "$i$a$-mapNotNull-AppListActivity$AppsAdapter$reload$2":I
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v18    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_7d
    if-eqz v2, :cond_83

    .line 334
    .local v2, "it$iv$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 331
    .local v3, "$i$a$-let-MapsKt___MapsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 332
    .end local v2    # "it$iv$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-let-MapsKt___MapsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v12    # "element$iv$iv":Ljava/util/Map$Entry;
    .end local v13    # "$i$a$-forEach-MapsKt___MapsKt$mapNotNullTo$1$iv$iv":I
    :cond_83
    move/from16 v4, v16

    move-object/from16 v2, v17

    move-object/from16 v6, v19

    move-object/from16 v3, v21

    .end local v11    # "element$iv$iv$iv":Ljava/util/Map$Entry;
    goto :goto_25

    .line 335
    .end local v16    # "$i$f$mapNotNull":I
    .end local v17    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v19    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .local v2, "$this$mapNotNull$iv":Ljava/util/Map;
    .local v4, "$i$f$mapNotNull":I
    .local v6, "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    :cond_8c
    move-object/from16 v17, v2

    move/from16 v16, v4

    .line 336
    .end local v2    # "$this$mapNotNull$iv":Ljava/util/Map;
    .end local v4    # "$i$f$mapNotNull":I
    .end local v8    # "$this$forEach$iv$iv$iv":Ljava/util/Map;
    .end local v9    # "$i$f$forEach":I
    .restart local v16    # "$i$f$mapNotNull":I
    .restart local v17    # "$this$mapNotNull$iv":Ljava/util/Map;
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapNotNullTo$iv$iv":Ljava/util/Map;
    .end local v7    # "$i$f$mapNotNullTo":I
    move-object v2, v5

    check-cast v2, Ljava/util/List;

    .line 323
    nop

    .end local v16    # "$i$f$mapNotNull":I
    .end local v17    # "$this$mapNotNull$iv":Ljava/util/Map;
    check-cast v2, Ljava/lang/Iterable;

    .line 107
    const/4 v3, 0x2

    new-array v3, v3, [Lkotlin/jvm/functions/Function1;

    iget-object v4, v0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->this$0:Lio/nekohasekai/sagernet/ui/AppListActivity;

    new-instance v5, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$$ExternalSyntheticLambda0;-><init>(Lio/nekohasekai/sagernet/ui/AppListActivity;)V

    const/4 v4, 0x0

    aput-object v5, v3, v4

    new-instance v4, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter$$ExternalSyntheticLambda1;-><init>()V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Lkotlin/comparisons/ComparisonsKt;->compareBy([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 104
    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ui/AppListActivity;->access$setApps$p(Lio/nekohasekai/sagernet/ui/AppListActivity;Ljava/util/List;)V

    .line 108
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final setFilteredApps(Ljava/util/List;)V
    .registers 3
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/ui/AppListActivity$ProxiedApp;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AppListActivity$AppsAdapter;->filteredApps:Ljava/util/List;

    return-void
.end method
