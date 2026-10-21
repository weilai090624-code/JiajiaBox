.class public Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;
.super Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;
.source "MaterialAboutTitleItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;,
        Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;
    }
.end annotation


# instance fields
.field private desc:Ljava/lang/CharSequence;

.field private descRes:I

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconRes:I

.field private onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

.field private onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

.field private text:Ljava/lang/CharSequence;

.field private textRes:I


# direct methods
.method public constructor <init>(III)V
    .registers 6
    .param p1, "textRes"    # I
    .param p2, "descRes"    # I
    .param p3, "iconRes"    # I

    .line 52
    invoke-direct {p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->text:Ljava/lang/CharSequence;

    .line 23
    const/4 v1, 0x0

    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->textRes:I

    .line 24
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->desc:Ljava/lang/CharSequence;

    .line 25
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->descRes:I

    .line 26
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 27
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->iconRes:I

    .line 28
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 29
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 53
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->textRes:I

    .line 54
    iput p2, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->descRes:I

    .line 55
    iput p3, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->iconRes:I

    .line 56
    return-void
.end method

.method private constructor <init>(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;

    .line 32
    invoke-direct {p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->text:Ljava/lang/CharSequence;

    .line 23
    const/4 v1, 0x0

    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->textRes:I

    .line 24
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->desc:Ljava/lang/CharSequence;

    .line 25
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->descRes:I

    .line 26
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 27
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->iconRes:I

    .line 28
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 29
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 33
    # getter for: Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->text:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->access$000(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->text:Ljava/lang/CharSequence;

    .line 34
    # getter for: Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->textRes:I
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->access$100(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->textRes:I

    .line 36
    # getter for: Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->desc:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->access$200(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->desc:Ljava/lang/CharSequence;

    .line 37
    # getter for: Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->descRes:I
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->access$300(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->descRes:I

    .line 39
    # getter for: Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->icon:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->access$400(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 40
    # getter for: Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->iconRes:I
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->access$500(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->iconRes:I

    .line 42
    iget-object v0, p1, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 43
    iget-object v0, p1, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;
    .param p2, "x1"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$1;

    .line 20
    invoke-direct {p0, p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;-><init>(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;)V
    .registers 4
    .param p1, "item"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;

    .line 138
    invoke-direct {p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->text:Ljava/lang/CharSequence;

    .line 23
    const/4 v1, 0x0

    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->textRes:I

    .line 24
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->desc:Ljava/lang/CharSequence;

    .line 25
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->descRes:I

    .line 26
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 27
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->iconRes:I

    .line 28
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 29
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 139
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->id:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->text:Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getTextRes()I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->textRes:I

    .line 142
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getDesc()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->desc:Ljava/lang/CharSequence;

    .line 143
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getDescRes()I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->descRes:I

    .line 144
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 145
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getIconRes()I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->iconRes:I

    .line 146
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getOnClickAction()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 147
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getOnLongClickAction()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "desc"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-direct {p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->text:Ljava/lang/CharSequence;

    .line 23
    const/4 v1, 0x0

    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->textRes:I

    .line 24
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->desc:Ljava/lang/CharSequence;

    .line 25
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->descRes:I

    .line 26
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 27
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->iconRes:I

    .line 28
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 29
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 47
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->text:Ljava/lang/CharSequence;

    .line 48
    iput-object p2, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->desc:Ljava/lang/CharSequence;

    .line 49
    iput-object p3, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 50
    return-void
.end method

.method public static getViewHolder(Landroid/view/View;)Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .line 59
    new-instance v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;

    invoke-direct {v0, p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static setupItem(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;Landroid/content/Context;)V
    .registers 18
    .param p0, "holder"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;
    .param p1, "item"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;
    .param p2, "context"    # Landroid/content/Context;

    .line 64
    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 65
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getTextRes()I

    move-result v2

    .line 67
    .local v2, "textRes":I
    iget-object v3, v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->text:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    const/16 v3, 0x8

    if-eqz v1, :cond_19

    .line 69
    iget-object v5, v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 70
    :cond_19
    if-eqz v2, :cond_21

    .line 71
    iget-object v5, v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_26

    .line 73
    :cond_21
    iget-object v5, v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    :goto_26
    invoke-virtual/range {p1 .. p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getDesc()Ljava/lang/CharSequence;

    move-result-object v5

    .line 77
    .local v5, "desc":Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getDescRes()I

    move-result v6

    .line 79
    .local v6, "descRes":I
    iget-object v7, v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->desc:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    if-eqz v5, :cond_3b

    .line 81
    iget-object v3, v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->desc:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_48

    .line 82
    :cond_3b
    if-eqz v6, :cond_43

    .line 83
    iget-object v3, v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->desc:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_48

    .line 85
    :cond_43
    iget-object v7, v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->desc:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    :goto_48
    invoke-virtual/range {p1 .. p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 89
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p1 .. p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getIconRes()I

    move-result v7

    .line 90
    .local v7, "drawableRes":I
    if-eqz v3, :cond_58

    .line 91
    iget-object v8, v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5f

    .line 92
    :cond_58
    if-eqz v7, :cond_5f

    .line 93
    iget-object v8, v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    :cond_5f
    :goto_5f
    const/4 v8, 0x0

    .local v8, "pL":I
    const/4 v9, 0x0

    .local v9, "pT":I
    const/4 v10, 0x0

    .local v10, "pR":I
    const/4 v11, 0x0

    .line 97
    .local v11, "pB":I
    nop

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getOnClickAction()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v12

    if-nez v12, :cond_77

    invoke-virtual/range {p1 .. p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getOnLongClickAction()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v12

    if-eqz v12, :cond_71

    goto :goto_77

    .line 109
    :cond_71
    iget-object v12, v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->view:Landroid/view/View;

    invoke-virtual {v12, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8e

    .line 105
    :cond_77
    :goto_77
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 106
    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    sget v13, Lcom/danielstone/materialaboutlibrary/R$attr;->selectableItemBackground:I

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v4, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 107
    iget-object v12, v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->view:Landroid/view/View;

    iget v13, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v12, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    .end local v4    # "outValue":Landroid/util/TypedValue;
    nop

    .line 111
    :goto_8e
    invoke-virtual/range {p1 .. p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getOnClickAction()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->setOnClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)V

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->getOnLongClickAction()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$MaterialAboutTitleItemViewHolder;->setOnLongClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)V

    .line 114
    nop

    .line 117
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->clone()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;
    .registers 2

    .line 152
    new-instance v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;

    invoke-direct {v0, p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;-><init>(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->clone()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/CharSequence;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->desc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDescRes()I
    .registers 2

    .line 186
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->descRes:I

    return v0
.end method

.method public getDetailString()Ljava/lang/String;
    .registers 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaterialAboutTitleItem{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->textRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->desc:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->descRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->iconRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onClickAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onLongClickAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconRes()I
    .registers 2

    .line 206
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->iconRes:I

    return v0
.end method

.method public getOnClickAction()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    return-object v0
.end method

.method public getOnLongClickAction()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextRes()I
    .registers 2

    .line 166
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->textRes:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public setDesc(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;
    .registers 3
    .param p1, "desc"    # Ljava/lang/CharSequence;

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->descRes:I

    .line 181
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->desc:Ljava/lang/CharSequence;

    .line 182
    return-object p0
.end method

.method public setDescRes(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;
    .registers 3
    .param p1, "descRes"    # I

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->desc:Ljava/lang/CharSequence;

    .line 191
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->textRes:I

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->descRes:I

    .line 192
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->iconRes:I

    .line 201
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 202
    return-object p0
.end method

.method public setIconRes(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;
    .registers 3
    .param p1, "iconRes"    # I

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 211
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->iconRes:I

    .line 212
    return-object p0
.end method

.method public setOnClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;
    .registers 2
    .param p1, "onClickAction"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 220
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 221
    return-object p0
.end method

.method public setOnLongClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;
    .registers 2
    .param p1, "onLongClickAction"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 229
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 230
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->textRes:I

    .line 161
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->text:Ljava/lang/CharSequence;

    .line 162
    return-object p0
.end method

.method public setTextRes(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;
    .registers 3
    .param p1, "textRes"    # I

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->text:Ljava/lang/CharSequence;

    .line 171
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;->textRes:I

    .line 172
    return-object p0
.end method
