.class public Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
.super Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;
.source "MaterialAboutActionItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;,
        Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;,
        Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$IconGravity;
    }
.end annotation


# static fields
.field public static final GRAVITY_BOTTOM:I = 0x2

.field public static final GRAVITY_MIDDLE:I = 0x1

.field public static final GRAVITY_TOP:I


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconGravity:I

.field private iconRes:I

.field private onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

.field private onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

.field private showIcon:Z

.field private subText:Ljava/lang/CharSequence;

.field private subTextRes:I

.field private text:Ljava/lang/CharSequence;

.field private textRes:I


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .param p1, "textRes"    # I
    .param p2, "subTextRes"    # I
    .param p3, "iconRes"    # I

    .line 81
    invoke-direct {p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->text:Ljava/lang/CharSequence;

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->textRes:I

    .line 33
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subText:Ljava/lang/CharSequence;

    .line 34
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subTextRes:I

    .line 35
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 36
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconRes:I

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->showIcon:Z

    .line 38
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconGravity:I

    .line 39
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 40
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 82
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->textRes:I

    .line 83
    iput p2, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subTextRes:I

    .line 84
    iput p3, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconRes:I

    .line 85
    return-void
.end method

.method public constructor <init>(IIILcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)V
    .locals 2
    .param p1, "textRes"    # I
    .param p2, "subTextRes"    # I
    .param p3, "iconRes"    # I
    .param p4, "onClickAction"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 74
    invoke-direct {p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->text:Ljava/lang/CharSequence;

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->textRes:I

    .line 33
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subText:Ljava/lang/CharSequence;

    .line 34
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subTextRes:I

    .line 35
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 36
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconRes:I

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->showIcon:Z

    .line 38
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconGravity:I

    .line 39
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 40
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 75
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->textRes:I

    .line 76
    iput p2, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subTextRes:I

    .line 77
    iput p3, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconRes:I

    .line 78
    iput-object p4, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 79
    return-void
.end method

.method private constructor <init>(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    .line 43
    invoke-direct {p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->text:Ljava/lang/CharSequence;

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->textRes:I

    .line 33
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subText:Ljava/lang/CharSequence;

    .line 34
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subTextRes:I

    .line 35
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 36
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconRes:I

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->showIcon:Z

    .line 38
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconGravity:I

    .line 39
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 40
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 44
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->access$000(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->text:Ljava/lang/CharSequence;

    .line 45
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->access$100(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->textRes:I

    .line 47
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->access$200(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subText:Ljava/lang/CharSequence;

    .line 48
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->access$300(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subTextRes:I

    .line 50
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->access$400(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 51
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->access$500(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconRes:I

    .line 53
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->access$600(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->showIcon:Z

    .line 55
    invoke-static {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->access$700(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconGravity:I

    .line 57
    iget-object v0, p1, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 58
    iget-object v0, p1, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;
    .param p2, "x1"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$1;

    .line 26
    invoke-direct {p0, p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;-><init>(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;)V
    .locals 2
    .param p1, "item"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    .line 187
    invoke-direct {p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->text:Ljava/lang/CharSequence;

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->textRes:I

    .line 33
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subText:Ljava/lang/CharSequence;

    .line 34
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subTextRes:I

    .line 35
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 36
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconRes:I

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->showIcon:Z

    .line 38
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconGravity:I

    .line 39
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 40
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 188
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->id:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->text:Ljava/lang/CharSequence;

    .line 190
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getTextRes()I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->textRes:I

    .line 191
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getSubText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subText:Ljava/lang/CharSequence;

    .line 192
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getSubTextRes()I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subTextRes:I

    .line 193
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 194
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getIconRes()I

    move-result v0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconRes:I

    .line 195
    iget-boolean v0, p1, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->showIcon:Z

    iput-boolean v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->showIcon:Z

    .line 196
    iget v0, p1, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconGravity:I

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconGravity:I

    .line 197
    iget-object v0, p1, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 198
    iget-object v0, p1, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 199
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "subText"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-direct {p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->text:Ljava/lang/CharSequence;

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->textRes:I

    .line 33
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subText:Ljava/lang/CharSequence;

    .line 34
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subTextRes:I

    .line 35
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 36
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconRes:I

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->showIcon:Z

    .line 38
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconGravity:I

    .line 39
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 40
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 69
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->text:Ljava/lang/CharSequence;

    .line 70
    iput-object p2, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subText:Ljava/lang/CharSequence;

    .line 71
    iput-object p3, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "subText"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "onClickAction"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 61
    invoke-direct {p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->text:Ljava/lang/CharSequence;

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->textRes:I

    .line 33
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subText:Ljava/lang/CharSequence;

    .line 34
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subTextRes:I

    .line 35
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 36
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconRes:I

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->showIcon:Z

    .line 38
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconGravity:I

    .line 39
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 40
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 62
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->text:Ljava/lang/CharSequence;

    .line 63
    iput-object p2, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subText:Ljava/lang/CharSequence;

    .line 64
    iput-object p3, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 65
    iput-object p4, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 66
    return-void
.end method

.method public static getViewHolder(Landroid/view/View;)Lcom/danielstone/materialaboutlibrary/holders/MaterialAboutItemViewHolder;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 88
    new-instance v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;

    invoke-direct {v0, p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static setupItem(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;Landroid/content/Context;)V
    .locals 13
    .param p0, "holder"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;
    .param p1, "item"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .param p2, "context"    # Landroid/content/Context;

    .line 92
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 93
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getTextRes()I

    move-result v1

    .line 95
    .local v1, "textRes":I
    iget-object v2, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->text:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 97
    iget-object v4, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    :cond_0
    if-eqz v1, :cond_1

    .line 99
    iget-object v4, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :goto_0
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getSubText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 105
    .local v4, "subText":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getSubTextRes()I

    move-result v5

    .line 107
    .local v5, "subTextRes":I
    iget-object v6, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    if-eqz v4, :cond_2

    .line 109
    iget-object v6, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 110
    :cond_2
    if-eqz v5, :cond_3

    .line 111
    iget-object v6, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 113
    :cond_3
    iget-object v6, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    :goto_1
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->shouldShowIcon()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 117
    iget-object v2, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 119
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getIconRes()I

    move-result v6

    .line 120
    .local v6, "drawableRes":I
    if-eqz v2, :cond_4

    .line 121
    iget-object v7, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 122
    :cond_4
    if-eqz v6, :cond_5

    .line 123
    iget-object v7, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "drawableRes":I
    :cond_5
    :goto_2
    goto :goto_3

    .line 126
    :cond_6
    iget-object v6, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    :goto_3
    iget-object v2, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 130
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getIconGravity()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_4

    .line 138
    :pswitch_0
    const/16 v6, 0x50

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_4

    .line 135
    :pswitch_1
    const/16 v6, 0x10

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 136
    goto :goto_4

    .line 132
    :pswitch_2
    const/16 v6, 0x30

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 133
    nop

    .line 141
    :goto_4
    iget-object v6, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    const/4 v6, 0x0

    .local v6, "pL":I
    const/4 v7, 0x0

    .local v7, "pT":I
    const/4 v8, 0x0

    .local v8, "pR":I
    const/4 v9, 0x0

    .line 144
    .local v9, "pB":I
    nop

    .line 151
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getOnClickAction()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v10

    if-nez v10, :cond_8

    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getOnLongClickAction()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v10

    if-eqz v10, :cond_7

    goto :goto_5

    .line 156
    :cond_7
    iget-object v10, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->view:Landroid/view/View;

    invoke-virtual {v10, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .line 152
    :cond_8
    :goto_5
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 153
    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    sget v11, Lcom/danielstone/materialaboutlibrary/R$attr;->selectableItemBackground:I

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v3, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 154
    iget-object v10, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->view:Landroid/view/View;

    iget v11, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 155
    .end local v3    # "outValue":Landroid/util/TypedValue;
    nop

    .line 158
    :goto_6
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getOnClickAction()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->setOnClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)V

    .line 159
    invoke-virtual {p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->getOnLongClickAction()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$MaterialAboutActionItemViewHolder;->setOnLongClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)V

    .line 161
    nop

    .line 164
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clone()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;
    .locals 1

    .line 203
    new-instance v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    invoke-direct {v0, p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;-><init>(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->clone()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;

    move-result-object v0

    return-object v0
.end method

.method public getDetailString()Ljava/lang/String;
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaterialAboutActionItem{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->textRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subTextRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subTextRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->showIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconGravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconGravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onClickAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onLongClickAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

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
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconGravity()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconGravity:I

    return v0
.end method

.method public getIconRes()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconRes:I

    return v0
.end method

.method public getOnClickAction()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    return-object v0
.end method

.method public getOnLongClickAction()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    return-object v0
.end method

.method public getSubText()Ljava/lang/CharSequence;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSubTextRes()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subTextRes:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextRes()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->textRes:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconRes:I

    .line 251
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 252
    return-object p0
.end method

.method public setIconGravity(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 0
    .param p1, "iconGravity"    # I

    .line 280
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconGravity:I

    .line 281
    return-object p0
.end method

.method public setIconRes(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 1
    .param p1, "iconRes"    # I

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 261
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->iconRes:I

    .line 262
    return-object p0
.end method

.method public setOnClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 0
    .param p1, "onClickAction"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 289
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 290
    return-object p0
.end method

.method public setOnLongClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 0
    .param p1, "onLongClickAction"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 298
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 299
    return-object p0
.end method

.method public setShouldShowIcon(Z)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 0
    .param p1, "showIcon"    # Z

    .line 270
    iput-boolean p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->showIcon:Z

    .line 271
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 1
    .param p1, "subText"    # Ljava/lang/CharSequence;

    .line 230
    const/4 v0, 0x0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subTextRes:I

    .line 231
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subText:Ljava/lang/CharSequence;

    .line 232
    return-object p0
.end method

.method public setSubTextRes(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 1
    .param p1, "subTextRes"    # I

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subText:Ljava/lang/CharSequence;

    .line 241
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->subTextRes:I

    .line 242
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->textRes:I

    .line 211
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->text:Ljava/lang/CharSequence;

    .line 212
    return-object p0
.end method

.method public setTextRes(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 1
    .param p1, "textRes"    # I

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->text:Ljava/lang/CharSequence;

    .line 221
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->textRes:I

    .line 222
    return-object p0
.end method

.method public shouldShowIcon()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;->showIcon:Z

    return v0
.end method
