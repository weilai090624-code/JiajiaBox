.class public Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MaterialAboutListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;",
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
            "Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;",
            ">;"
        }
    .end annotation
.end field

.field private viewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

.field private viewTypeManager:Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 181
    new-instance v0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$1;

    invoke-direct {v0}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$1;-><init>()V

    sput-object v0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    new-instance v0, Landroidx/recyclerview/widget/AsyncListDiffer;

    sget-object v1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->differ:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->setHasStableIds(Z)V

    .line 42
    new-instance v0, Lcom/danielstone/materialaboutlibrary/util/DefaultViewTypeManager;

    invoke-direct {v0}, Lcom/danielstone/materialaboutlibrary/util/DefaultViewTypeManager;-><init>()V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->viewTypeManager:Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;

    .line 43
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->viewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;)V
    .locals 2
    .param p1, "customViewTypeManager"    # Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;

    .line 46
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    new-instance v0, Landroidx/recyclerview/widget/AsyncListDiffer;

    sget-object v1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->DIFF_CALLBACK:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->differ:Landroidx/recyclerview/widget/AsyncListDiffer;

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->setHasStableIds(Z)V

    .line 48
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->viewTypeManager:Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;

    .line 49
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->viewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;

    .line 29
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;)Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;

    .line 29
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->viewTypeManager:Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;

    return-object v0
.end method


# virtual methods
.method getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->differ:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->differ:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .line 123
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->differ:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 29
    check-cast p1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->onBindViewHolder(Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;
    .param p2, "position"    # I

    .line 66
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->differ:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    .line 68
    .local v0, "card":Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;
    iget-object v1, p1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;->cardView:Landroid/view/View;

    instance-of v1, v1, Landroidx/cardview/widget/CardView;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;->cardView:Landroid/view/View;

    check-cast v1, Landroidx/cardview/widget/CardView;

    .line 70
    .local v1, "cardView":Landroidx/cardview/widget/CardView;
    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getCardColor()I

    move-result v2

    .line 71
    .local v2, "cardColor":I
    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 78
    .end local v1    # "cardView":Landroidx/cardview/widget/CardView;
    .end local v2    # "cardColor":I
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 79
    .local v1, "title":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getTitleRes()I

    move-result v2

    .line 81
    .local v2, "titleRes":I
    iget-object v3, p1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;->title:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    if-eqz v1, :cond_2

    .line 83
    iget-object v3, p1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 84
    :cond_2
    if-eqz v2, :cond_3

    .line 85
    iget-object v3, p1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 87
    :cond_3
    iget-object v3, p1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;->title:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :goto_1
    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getTitleColor()I

    move-result v3

    .line 92
    .local v3, "titleColor":I
    iget-object v5, p1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    .line 93
    if-eqz v3, :cond_4

    .line 94
    iget-object v5, p1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 96
    :cond_4
    iget-object v5, p1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    :cond_5
    :goto_2
    iget-object v5, p1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;->cardView:Landroid/view/View;

    instance-of v5, v5, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v5, :cond_7

    .line 102
    iget-object v5, p1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;->cardView:Landroid/view/View;

    check-cast v5, Lcom/google/android/material/card/MaterialCardView;

    .line 103
    .local v5, "materialCardView":Lcom/google/android/material/card/MaterialCardView;
    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->isOutline()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 104
    iget-object v4, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/danielstone/materialaboutlibrary/R$dimen;->mal_stroke_width:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v5, v4}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 105
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/google/android/material/card/MaterialCardView;->setCardElevation(F)V

    goto :goto_3

    .line 107
    :cond_6
    invoke-virtual {v5, v4}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 108
    iget-object v4, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/danielstone/materialaboutlibrary/R$dimen;->mal_card_elevation:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/google/android/material/card/MaterialCardView;->setCardElevation(F)V

    .line 113
    .end local v5    # "materialCardView":Lcom/google/android/material/card/MaterialCardView;
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getCustomAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 114
    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getCustomAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;->useCustomAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_4

    .line 116
    :cond_8
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;->useMaterialAboutItemAdapter()V

    .line 117
    iget-object v4, p1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v4, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;

    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;->setData(Ljava/util/ArrayList;)V

    .line 119
    :goto_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->context:Landroid/content/Context;

    .line 55
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/danielstone/materialaboutlibrary/R$layout;->mal_material_about_list_card:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 58
    new-instance v1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;

    iget-object v2, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->viewPool:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v1, p0, v0, v2}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$MaterialAboutListViewHolder;-><init>(Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    return-object v1

    .line 60
    .end local v0    # "view":Landroid/view/View;
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
            "Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;",
            ">;)V"
        }
    .end annotation

    .line 132
    .local p1, "newData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    .line 134
    .local v2, "card":Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;
    invoke-virtual {v2}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->clone()Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v2    # "card":Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;
    goto :goto_0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->differ:Landroidx/recyclerview/widget/AsyncListDiffer;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/AsyncListDiffer;->submitList(Ljava/util/List;)V

    .line 137
    return-void
.end method
