.class public Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;
.super Ljava/lang/Object;
.source "MaterialAboutActionItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconGravity:I

.field private iconRes:I

.field onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

.field onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

.field private showIcon:Z

.field private subText:Ljava/lang/CharSequence;

.field private subTextRes:I

.field private text:Ljava/lang/CharSequence;

.field private textRes:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 353
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 354
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->text:Ljava/lang/CharSequence;

    .line 355
    const/4 v1, 0x0

    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->textRes:I

    .line 357
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText:Ljava/lang/CharSequence;

    .line 358
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subTextRes:I

    .line 360
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->icon:Landroid/graphics/drawable/Drawable;

    .line 361
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->iconRes:I

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->showIcon:Z

    .line 364
    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->iconGravity:I

    return-void
.end method

.method static synthetic access$000(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    .line 350
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    .line 350
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->textRes:I

    return v0
.end method

.method static synthetic access$200(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    .line 350
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    .line 350
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subTextRes:I

    return v0
.end method

.method static synthetic access$400(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    .line 350
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    .line 350
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->iconRes:I

    return v0
.end method

.method static synthetic access$600(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    .line 350
    iget-boolean v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->showIcon:Z

    return v0
.end method

.method static synthetic access$700(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    .line 350
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->iconGravity:I

    return v0
.end method


# virtual methods
.method public build()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 2

    .line 435
    new-instance v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;-><init>(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$1;)V

    return-object v0
.end method

.method public icon(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;
    .locals 1
    .param p1, "iconRes"    # I

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->icon:Landroid/graphics/drawable/Drawable;

    .line 410
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->iconRes:I

    .line 411
    return-object p0
.end method

.method public icon(Landroid/graphics/drawable/Drawable;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 403
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->icon:Landroid/graphics/drawable/Drawable;

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->iconRes:I

    .line 405
    return-object p0
.end method

.method public setIconGravity(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;
    .locals 0
    .param p1, "iconGravity"    # I

    .line 420
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->iconGravity:I

    .line 421
    return-object p0
.end method

.method public setOnClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;
    .locals 0
    .param p1, "onClickAction"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 425
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 426
    return-object p0
.end method

.method public setOnLongClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;
    .locals 0
    .param p1, "onLongClickAction"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 430
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 431
    return-object p0
.end method

.method public showIcon(Z)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;
    .locals 0
    .param p1, "showIcon"    # Z

    .line 415
    iput-boolean p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->showIcon:Z

    .line 416
    return-object p0
.end method

.method public subText(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;
    .locals 1
    .param p1, "subTextRes"    # I

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText:Ljava/lang/CharSequence;

    .line 387
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subTextRes:I

    .line 388
    return-object p0
.end method

.method public subText(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;
    .locals 1
    .param p1, "subText"    # Ljava/lang/CharSequence;

    .line 380
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText:Ljava/lang/CharSequence;

    .line 381
    const/4 v0, 0x0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subTextRes:I

    .line 382
    return-object p0
.end method

.method public subTextHtml(Ljava/lang/String;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;
    .locals 3
    .param p1, "subTextHtml"    # Ljava/lang/String;

    .line 392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 393
    invoke-static {p1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 396
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText:Ljava/lang/CharSequence;

    .line 398
    :goto_0
    iput v2, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subTextRes:I

    .line 399
    return-object p0
.end method

.method public text(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;
    .locals 1
    .param p1, "text"    # I

    .line 374
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->textRes:I

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->text:Ljava/lang/CharSequence;

    .line 376
    return-object p0
.end method

.method public text(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 368
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->text:Ljava/lang/CharSequence;

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->textRes:I

    .line 370
    return-object p0
.end method
