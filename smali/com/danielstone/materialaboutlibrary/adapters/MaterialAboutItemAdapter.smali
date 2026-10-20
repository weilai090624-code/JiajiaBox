.class public Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MaterialAboutItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;

.field private final differ:Landroidx/recyclerview/widget/AsyncListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncListDiffer<",
            "Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;",
            ">;"
        }
    .end annotation
.end field

.field private viewTypeManager:Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter$1;

    invoke-direct {v0}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter$1;-><init>()V

    sput-object v0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    new-instance v0, Landroidx/recyclerview/widget/AsyncListDiffer;

    sget-object v1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->differ:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->setHasStableIds(Z)V

    .line 35
    new-instance v0, Lcom/danielstone/materialaboutlibrary/util/DefaultViewTypeManager;

    invoke-direct {v0}, Lcom/danielstone/materialaboutlibrary/util/DefaultViewTypeManager;-><init>()V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->viewTypeManager:Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;)V
    .locals 2
    .param p1, "customViewTypeManager"    # Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    new-instance v0, Landroidx/recyclerview/widget/AsyncListDiffer;

    sget-object v1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->differ:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->setHasStableIds(Z)V

    .line 40
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->viewTypeManager:Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;

    .line 41
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->differ:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->differ:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .line 67
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->differ:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 77
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->differ:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;->getType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->onBindViewHolder(Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;
    .param p2, "position"    # I

    .line 61
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->viewTypeManager:Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;

    invoke-virtual {p0, p2}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->getItemViewType(I)I

    move-result v1

    iget-object v2, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->differ:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    iget-object v3, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;->setupItem(ILcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->context:Landroid/content/Context;

    .line 47
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->viewTypeManager:Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;

    invoke-virtual {v0, p2}, Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;->getLayout(I)I

    move-result v0

    .line 53
    .local v0, "layoutId":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 56
    iget-object v2, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->viewTypeManager:Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;

    invoke-virtual {v2, p2, v1}, Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;->getViewHolder(ILandroid/view/View;)Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;

    move-result-object v2

    return-object v2

    .line 48
    .end local v0    # "layoutId":I
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not bound to RecyclerView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;",
            ">;)V"
        }
    .end annotation

    .line 81
    .local p1, "newData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    .line 83
    .local v2, "item":Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;
    invoke-virtual {v2}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;->clone()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v2    # "item":Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;
    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->differ:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;)V

    .line 86
    return-void
.end method
