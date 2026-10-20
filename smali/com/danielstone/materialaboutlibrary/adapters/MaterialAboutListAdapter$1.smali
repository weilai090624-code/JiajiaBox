.class final Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$1;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "MaterialAboutListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;)Z
    .locals 5
    .param p1, "oldItem"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;
    .param p2, "newItem"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    .line 190
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 191
    .local v0, "result":Z
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    return v3

    .line 192
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 193
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    invoke-virtual {v2}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;->getDetailString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    invoke-virtual {v4}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;->getDetailString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v3

    .line 192
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 181
    check-cast p1, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    check-cast p2, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    invoke-virtual {p0, p1, p2}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$1;->areContentsTheSame(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;)Z
    .locals 2
    .param p1, "oldItem"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;
    .param p2, "newItem"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    .line 184
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 181
    check-cast p1, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    check-cast p2, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    invoke-virtual {p0, p1, p2}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter$1;->areItemsTheSame(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;)Z

    move-result p1

    return p1
.end method
