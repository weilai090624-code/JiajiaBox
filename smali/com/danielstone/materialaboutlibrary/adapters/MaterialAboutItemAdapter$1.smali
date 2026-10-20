.class final Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter$1;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "MaterialAboutItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;)Z
    .locals 2
    .param p1, "oldItem"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;
    .param p2, "newItem"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    .line 101
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;->getDetailString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;->getDetailString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 93
    check-cast p1, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    check-cast p2, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    invoke-virtual {p0, p1, p2}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter$1;->areContentsTheSame(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;)Z
    .locals 2
    .param p1, "oldItem"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;
    .param p2, "newItem"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    .line 96
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 93
    check-cast p1, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    check-cast p2, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    invoke-virtual {p0, p1, p2}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutItemAdapter$1;->areItemsTheSame(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;)Z

    move-result p1

    return p1
.end method
