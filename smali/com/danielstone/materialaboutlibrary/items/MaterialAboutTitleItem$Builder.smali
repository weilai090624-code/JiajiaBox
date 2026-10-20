.class public Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;
.super Ljava/lang/Object;
.source "MaterialAboutTitleItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private desc:Ljava/lang/CharSequence;

.field private descRes:I

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconRes:I

.field onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

.field onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

.field private text:Ljava/lang/CharSequence;

.field private textRes:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 286
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 287
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->text:Ljava/lang/CharSequence;

    .line 288
    const/4 v1, 0x0

    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->textRes:I

    .line 290
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->desc:Ljava/lang/CharSequence;

    .line 291
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->descRes:I

    .line 293
    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->icon:Landroid/graphics/drawable/Drawable;

    .line 294
    iput v1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->iconRes:I

    return-void
.end method

.method static synthetic access$000(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;

    .line 283
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;

    .line 283
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->textRes:I

    return v0
.end method

.method static synthetic access$200(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;

    .line 283
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->desc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;

    .line 283
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->descRes:I

    return v0
.end method

.method static synthetic access$400(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;

    .line 283
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;

    .line 283
    iget v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->iconRes:I

    return v0
.end method


# virtual methods
.method public build()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;
    .locals 2

    .line 347
    new-instance v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;-><init>(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$1;)V

    return-object v0
.end method

.method public desc(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;
    .locals 1
    .param p1, "desc"    # I

    .line 318
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->descRes:I

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->desc:Ljava/lang/CharSequence;

    .line 320
    return-object p0
.end method

.method public desc(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;
    .locals 1
    .param p1, "desc"    # Ljava/lang/CharSequence;

    .line 311
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->desc:Ljava/lang/CharSequence;

    .line 312
    const/4 v0, 0x0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->descRes:I

    .line 313
    return-object p0
.end method

.method public icon(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;
    .locals 1
    .param p1, "iconRes"    # I

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->icon:Landroid/graphics/drawable/Drawable;

    .line 332
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->iconRes:I

    .line 333
    return-object p0
.end method

.method public icon(Landroid/graphics/drawable/Drawable;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 324
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->icon:Landroid/graphics/drawable/Drawable;

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->iconRes:I

    .line 326
    return-object p0
.end method

.method public setOnClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;
    .locals 0
    .param p1, "onClickAction"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 337
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->onClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 338
    return-object p0
.end method

.method public setOnLongClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;
    .locals 0
    .param p1, "onLongClickAction"    # Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 342
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->onLongClickAction:Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    .line 343
    return-object p0
.end method

.method public text(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;
    .locals 1
    .param p1, "text"    # I

    .line 305
    iput p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->textRes:I

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->text:Ljava/lang/CharSequence;

    .line 307
    return-object p0
.end method

.method public text(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 298
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->text:Ljava/lang/CharSequence;

    .line 299
    const/4 v0, 0x0

    iput v0, p0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem$Builder;->textRes:I

    .line 300
    return-object p0
.end method
