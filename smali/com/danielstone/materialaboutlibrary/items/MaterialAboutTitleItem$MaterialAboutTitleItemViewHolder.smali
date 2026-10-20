.class public Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;
.super Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;
.source "MaterialAboutTitleItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaterialAboutTitleItemViewHolder"
.end annotation


# instance fields
.field public final desc:Landroid/widget/TextView;

.field public final icon:Landroid/widget/ImageView;

.field private onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

.field private onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

.field public final text:Landroid/widget/TextView;

.field public final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 241
    invoke-direct {p0, p1}, Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;-><init>(Landroid/view/View;)V

    .line 242
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->view:Landroid/view/View;

    .line 243
    sget v0, Lcom/danielstone/materialaboutlibrary/R$id;->mal_item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->icon:Landroid/widget/ImageView;

    .line 244
    sget v0, Lcom/danielstone/materialaboutlibrary/R$id;->mal_item_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->text:Landroid/widget/TextView;

    .line 245
    sget v0, Lcom/danielstone/materialaboutlibrary/R$id;->mal_item_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->desc:Landroid/widget/TextView;

    .line 246
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 268
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    invoke-interface {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;->onClick()V

    .line 271
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 275
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    invoke-interface {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;->onClick()V

    .line 277
    const/4 v0, 0x1

    return v0

    .line 279
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOnClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)V
    .locals 2
    .param p1, "onClickAction"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 249
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 250
    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 255
    :goto_0
    return-void
.end method

.method public setOnLongClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)V
    .locals 2
    .param p1, "onLongClickAction"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 258
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 259
    if-eqz p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 264
    :goto_0
    return-void
.end method
