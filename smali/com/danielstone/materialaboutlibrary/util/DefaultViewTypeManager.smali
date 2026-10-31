.class public Lcom/danielstone/materialaboutlibrary/util/DefaultViewTypeManager;
.super Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;
.source "DefaultViewTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danielstone/materialaboutlibrary/util/DefaultViewTypeManager$ItemLayout;,
        Lcom/danielstone/materialaboutlibrary/util/DefaultViewTypeManager$ItemType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayout(I)I
    .registers 3
    .param p1, "itemType"    # I

    .line 29
    packed-switch p1, :pswitch_data_c

    .line 35
    const/4 v0, -0x1

    return v0

    .line 33
    :pswitch_5
    sget v0, Lcom/danielstone/materialaboutlibrary/util/DefaultViewTypeManager$ItemLayout;->TITLE_LAYOUT:I

    return v0

    .line 31
    :pswitch_8
    sget v0, Lcom/danielstone/materialaboutlibrary/util/DefaultViewTypeManager$ItemLayout;->ACTION_LAYOUT:I

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public getViewHolder(ILandroid/view/View;)Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;
    .registers 4
    .param p1, "itemType"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 40
    packed-switch p1, :pswitch_data_10

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 44
    :pswitch_5
    invoke-static {p2}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getViewHolder(Landroid/view/View;)Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;

    move-result-object v0

    return-object v0

    .line 42
    :pswitch_a
    invoke-static {p2}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getViewHolder(Landroid/view/View;)Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method public setupItem(ILcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;Landroid/content/Context;)V
    .registers 7
    .param p1, "itemType"    # I
    .param p2, "holder"    # Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;
    .param p3, "item"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;
    .param p4, "context"    # Landroid/content/Context;

    .line 51
    packed-switch p1, :pswitch_data_1a

    goto :goto_18

    .line 56
    :pswitch_4
    move-object v0, p2

    check-cast v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;

    move-object v1, p3

    check-cast v1, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;

    invoke-static {v0, v1, p4}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->setupItem(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;Landroid/content/Context;)V

    goto :goto_18

    .line 53
    :pswitch_e
    move-object v0, p2

    check-cast v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;

    move-object v1, p3

    check-cast v1, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    invoke-static {v0, v1, p4}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->setupItem(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;Landroid/content/Context;)V

    .line 54
    nop

    .line 59
    :goto_18
    return-void

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_e
        :pswitch_4
    .end packed-switch
.end method
