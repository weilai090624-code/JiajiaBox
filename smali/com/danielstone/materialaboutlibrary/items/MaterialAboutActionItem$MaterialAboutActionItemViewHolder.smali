.class public Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;
.super Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;
.source "MaterialAboutActionItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaterialAboutActionItemViewHolder"
.end annotation


# instance fields
.field public final icon:Landroid/widget/ImageView;

.field private onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

.field private onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

.field public final subText:Landroid/widget/TextView;

.field public final text:Landroid/widget/TextView;

.field public final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 316
    invoke-direct {p0, p1}, Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;-><init>(Landroid/view/View;)V

    .line 317
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->view:Landroid/view/View;

    .line 318
    sget v0, Lcom/danielstone/materialaboutlibrary/R$id;->mal_item_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->icon:Landroid/widget/ImageView;

    .line 319
    sget v0, Lcom/danielstone/materialaboutlibrary/R$id;->mal_item_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->text:Landroid/widget/TextView;

    .line 320
    sget v0, Lcom/danielstone/materialaboutlibrary/R$id;->mal_action_item_subtext:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->subText:Landroid/widget/TextView;

    .line 321
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 335
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    invoke-interface {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;->onClick()V

    .line 338
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 342
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    invoke-interface {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;->onClick()V

    .line 344
    const/4 v0, 0x1

    return v0

    .line 346
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setOnClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)V
    .locals 2
    .param p1, "onClickAction"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 324
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 325
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->view:Landroid/view/View;

    if-eqz p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    return-void
.end method

.method public setOnLongClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)V
    .locals 2
    .param p1, "onLongClickAction"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 329
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 330
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->view:Landroid/view/View;

    if-eqz p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 331
    return-void
.end method
