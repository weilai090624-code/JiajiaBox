.class public final Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "JJHomeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/JJHomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NodeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJJHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JJHomeFragment.kt\nio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1013:1\n360#2,7:1014\n*S KotlinDebug\n*F\n+ 1 JJHomeFragment.kt\nio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter\n*L\n926#1:1014,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0004\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0014\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u000e\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0008J\u000e\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\rJ\u001c\u0010\u0015\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u001c\u0010\u001a\u001a\u00020\u000f2\n\u0010\u001b\u001a\u00060\u0002R\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0019H\u0016J\u0008\u0010\u001d\u001a\u00020\u0019H\u0016R*\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;",
        "Lio/nekohasekai/sagernet/ui/JJHomeFragment;",
        "<init>",
        "(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)V",
        "value",
        "",
        "Lio/nekohasekai/sagernet/database/ProxyEntity;",
        "list",
        "getList",
        "()Ljava/util/List;",
        "selectedId",
        "",
        "submit",
        "",
        "newList",
        "rowChanged",
        "profile",
        "select",
        "id",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "getItemCount",
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
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation
.end field

.field private selectedId:J

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;


# direct methods
.method public constructor <init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)V
    .registers 4
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/ui/JJHomeFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 913
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 915
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->list:Ljava/util/List;

    .line 917
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedProxy()J

    move-result-wide v0

    iput-wide v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->selectedId:J

    .line 913
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 948
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->list:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 4
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 913
    move-object v0, p1

    check-cast v0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;

    invoke-virtual {p0, v0, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->onBindViewHolder(Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;I)V
    .registers 9
    .param p1, "holder"    # Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/nekohasekai/sagernet/database/ProxyEntity;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/nekohasekai/sagernet/database/ProxyEntity;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v1

    iget-wide v3, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->selectedId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    invoke-virtual {p1, v0, v1}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;->bind(Lio/nekohasekai/sagernet/database/ProxyEntity;Z)V

    .line 946
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 4
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 913
    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0032

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 941
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v0}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeHolder;-><init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;Landroid/view/View;)V

    return-object v1
.end method

.method public final rowChanged(Lio/nekohasekai/sagernet/database/ProxyEntity;)V
    .registers 14
    .param p1, "profile"    # Lio/nekohasekai/sagernet/database/ProxyEntity;

    const-string v0, "profile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->list:Ljava/util/List;

    .local v0, "$this$indexOfFirst$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 1014
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .line 1015
    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1016
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lio/nekohasekai/sagernet/database/ProxyEntity;

    .local v5, "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    const/4 v6, 0x0

    .line 926
    .local v6, "$i$a$-indexOfFirst-JJHomeFragment$NodeAdapter$rowChanged$index$1":I
    invoke-virtual {v5}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v7

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getId()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_29

    const/4 v7, 0x1

    goto :goto_2a

    :cond_29
    const/4 v7, 0x0

    .line 1016
    .end local v5    # "it":Lio/nekohasekai/sagernet/database/ProxyEntity;
    .end local v6    # "$i$a$-indexOfFirst-JJHomeFragment$NodeAdapter$rowChanged$index$1":I
    :goto_2a
    if-eqz v7, :cond_2d

    .line 1017
    goto :goto_33

    .line 1018
    :cond_2d
    nop

    .end local v4    # "item$iv":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1020
    :cond_31
    const/4 v3, -0x1

    const/4 v2, -0x1

    .line 926
    .end local v0    # "$this$indexOfFirst$iv":Ljava/util/List;
    .end local v1    # "$i$f$indexOfFirst":I
    .end local v2    # "index$iv":I
    :goto_33
    move v0, v2

    .line 927
    .local v0, "index":I
    if-gez v0, :cond_37

    return-void

    .line 928
    :cond_37
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->list:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 929
    .local v1, "updated":Ljava/util/List;
    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 930
    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->list:Ljava/util/List;

    .line 931
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->notifyItemChanged(I)V

    .line 932
    return-void
.end method

.method public final select(J)V
    .registers 3
    .param p1, "id"    # J

    .line 935
    iput-wide p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->selectedId:J

    .line 936
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->notifyDataSetChanged()V

    .line 937
    return-void
.end method

.method public final submit(Ljava/util/List;)V
    .registers 4
    .param p1, "newList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 920
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/NodeActions;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->list:Ljava/util/List;

    .line 921
    sget-object v0, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/database/DataStore;->getSelectedProxy()J

    move-result-wide v0

    iput-wide v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->selectedId:J

    .line 922
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/JJHomeFragment$NodeAdapter;->notifyDataSetChanged()V

    .line 923
    return-void
.end method
