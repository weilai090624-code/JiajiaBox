.class public Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder;
.super Ljava/lang/Object;
.source "ConvenienceBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAppTitleItem(Landroid/content/Context;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 34
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 35
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 36
    .local v3, "appName":Ljava/lang/CharSequence;
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 37
    .local v4, "applicationIcon":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_0

    const-string v5, ""

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-static {v5, v4}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder;->createAppTitleItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;

    move-result-object v5

    return-object v5
.end method

.method public static createAppTitleItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;
    .locals 2
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "applicationIcon"    # Landroid/graphics/drawable/Drawable;

    .line 28
    new-instance v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutTitleItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static createEmailItem(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/lang/String;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "showEmail"    # Z
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "emailSubject"    # Ljava/lang/String;

    .line 254
    sget v0, Lcom/danielstone/materialaboutlibrary/R$string;->mal_send_email:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder;->createEmailItem(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    move-result-object v0

    return-object v0
.end method

.method public static createEmailItem(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "showEmail"    # Z
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "emailSubject"    # Ljava/lang/String;
    .param p6, "chooserTitle"    # Ljava/lang/CharSequence;

    .line 245
    new-instance v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    invoke-direct {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;-><init>()V

    .line 246
    invoke-virtual {v0, p2}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->text(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    move-object v1, p4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 247
    :goto_0
    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0, p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 249
    invoke-static {p0, p4, p5, p6}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder;->createEmailOnClickAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->setOnClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->build()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    move-result-object v0

    .line 245
    return-object v0
.end method

.method public static createEmailOnClickAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "emailSubject"    # Ljava/lang/String;

    .line 206
    sget v0, Lcom/danielstone/materialaboutlibrary/R$string;->mal_send_email:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder;->createEmailOnClickAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v0

    return-object v0
.end method

.method public static createEmailOnClickAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "emailSubject"    # Ljava/lang/String;
    .param p3, "chooserTitle"    # Ljava/lang/CharSequence;

    .line 219
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    .local v0, "emailIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    new-instance v1, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$4;

    invoke-direct {v1, p0, v0, p3}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$4;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public static createLicenseCard(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "libraryTitle"    # Ljava/lang/CharSequence;
    .param p3, "year"    # Ljava/lang/CharSequence;
    .param p4, "name"    # Ljava/lang/CharSequence;
    .param p5, "license"    # Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;

    .line 347
    new-instance v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    invoke-direct {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;-><init>()V

    .line 348
    invoke-virtual {v0, p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 349
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->setIconGravity(I)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 350
    invoke-virtual {v0, p2}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->text(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {p5}, Lcom/danielstone/materialaboutlibrary/util/OpenSourceLicense;->getResourceId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v1

    const/4 v1, 0x1

    aput-object p4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->build()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    move-result-object v0

    .line 354
    .local v0, "licenseItem":Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    new-instance v1, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;

    invoke-direct {v1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->addItem(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItem;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard$Builder;->build()Lcom/danielstone/materialaboutlibrary/model/MaterialAboutCard;

    move-result-object v1

    return-object v1
.end method

.method public static createMapItem(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "subText"    # Ljava/lang/CharSequence;
    .param p4, "addressQuery"    # Ljava/lang/String;

    .line 337
    new-instance v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    invoke-direct {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;-><init>()V

    .line 338
    invoke-virtual {v0, p2}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->text(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 339
    invoke-virtual {v0, p3}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 340
    invoke-virtual {v0, p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 341
    invoke-static {p0, p4}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder;->createMapOnClickAction(Landroid/content/Context;Ljava/lang/String;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->setOnClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->build()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    move-result-object v0

    .line 337
    return-object v0
.end method

.method public static createMapOnClickAction(Landroid/content/Context;Ljava/lang/String;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "addressQuery"    # Ljava/lang/String;

    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "mapIntent":Landroid/content/Intent;
    const-string v1, "geo:0,0"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 312
    new-instance v1, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$6;

    invoke-direct {v1, p0, v0}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$6;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v1
.end method

.method public static createPhoneItem(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/String;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "showNumber"    # Z
    .param p4, "number"    # Ljava/lang/String;

    .line 292
    new-instance v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    invoke-direct {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;-><init>()V

    .line 293
    invoke-virtual {v0, p2}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->text(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    move-object v1, p4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 294
    :goto_0
    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {v0, p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 296
    invoke-static {p0, p4}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder;->createPhoneOnClickAction(Landroid/content/Context;Ljava/lang/String;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->setOnClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->build()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    move-result-object v0

    .line 292
    return-object v0
.end method

.method public static createPhoneOnClickAction(Landroid/content/Context;Ljava/lang/String;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "phoneIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 269
    new-instance v1, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$5;

    invoke-direct {v1, p0, v0}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$5;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v1
.end method

.method public static createRateActionItem(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "subText"    # Ljava/lang/CharSequence;

    .line 197
    new-instance v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    invoke-direct {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;-><init>()V

    .line 198
    invoke-virtual {v0, p2}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->text(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 199
    invoke-virtual {v0, p3}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0, p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 201
    invoke-static {p0}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder;->createRateOnClickAction(Landroid/content/Context;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->setOnClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->build()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    move-result-object v0

    .line 197
    return-object v0
.end method

.method public static createRateOnClickAction(Landroid/content/Context;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 163
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    .local v1, "goToMarket":Landroid/content/Intent;
    nop

    .line 165
    const/high16 v2, 0x48080000    # 139264.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    new-instance v2, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$3;

    invoke-direct {v2, p0, v1}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$3;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v2
.end method

.method public static createVersionActionItem(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "includeVersionCode"    # Z

    .line 50
    const-string v0, ""

    .line 51
    .local v0, "versionName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 53
    .local v1, "versionCode":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 54
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v0, v3

    .line 55
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 58
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 56
    :catch_0
    move-exception v2

    .line 59
    :goto_0
    new-instance v2, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    invoke-direct {v2}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;-><init>()V

    .line 60
    invoke-virtual {v2, p2}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->text(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v2

    .line 62
    invoke-virtual {v2, p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->build()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    move-result-object v2

    .line 59
    return-object v2
.end method

.method public static createWebViewDialogItem(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "subText"    # Ljava/lang/CharSequence;
    .param p4, "dialogTitle"    # Ljava/lang/CharSequence;
    .param p5, "dialogNegativeButton"    # Ljava/lang/CharSequence;
    .param p6, "htmlString"    # Ljava/lang/String;
    .param p7, "isStringUrl"    # Z
    .param p8, "supportZoom"    # Z

    .line 111
    new-instance v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    invoke-direct {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;-><init>()V

    .line 112
    invoke-virtual {v0, p2}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->text(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p3}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 115
    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    move v6, p8

    invoke-static/range {v1 .. v6}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder;->createWebViewDialogOnClickAction(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->setOnClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->build()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    move-result-object v0

    .line 111
    return-object v0
.end method

.method public static createWebViewDialogItem(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 11
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "subText"    # Ljava/lang/CharSequence;
    .param p4, "dialogTitle"    # Ljava/lang/CharSequence;
    .param p5, "htmlString"    # Ljava/lang/String;
    .param p6, "isStringUrl"    # Z
    .param p7, "supportZoom"    # Z

    .line 107
    sget v0, Lcom/danielstone/materialaboutlibrary/R$string;->mal_close:I

    move-object v10, p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder;->createWebViewDialogItem(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    move-result-object v0

    return-object v0
.end method

.method public static createWebViewDialogOnClickAction(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "dialogTitle"    # Ljava/lang/CharSequence;
    .param p2, "dialogNegativeButton"    # Ljava/lang/CharSequence;
    .param p3, "htmlString"    # Ljava/lang/String;
    .param p4, "isStringUrl"    # Z
    .param p5, "supportZoom"    # Z

    .line 72
    new-instance v7, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move v4, p4

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZLjava/lang/String;Ljava/lang/CharSequence;)V

    return-object v7
.end method

.method public static createWebViewDialogOnClickAction(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;
    .locals 7
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "dialogTitle"    # Ljava/lang/CharSequence;
    .param p2, "htmlString"    # Ljava/lang/String;
    .param p3, "isStringUrl"    # Z
    .param p4, "supportZoom"    # Z

    .line 67
    sget v0, Lcom/danielstone/materialaboutlibrary/R$string;->mal_close:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder;->createWebViewDialogOnClickAction(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v0

    return-object v0
.end method

.method public static createWebsiteActionItem(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLandroid/net/Uri;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "showAddress"    # Z
    .param p4, "websiteUrl"    # Landroid/net/Uri;

    .line 146
    new-instance v0, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    invoke-direct {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;-><init>()V

    .line 147
    invoke-virtual {v0, p2}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->text(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 148
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->subText(Ljava/lang/CharSequence;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 150
    invoke-static {p0, p4}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder;->createWebsiteOnClickAction(Landroid/content/Context;Landroid/net/Uri;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->setOnClickAction(Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem$Builder;->build()Lcom/danielstone/materialaboutlibrary/items/MaterialAboutActionItem;

    move-result-object v0

    .line 146
    return-object v0
.end method

.method public static createWebsiteOnClickAction(Landroid/content/Context;Landroid/net/Uri;)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "websiteUrl"    # Landroid/net/Uri;

    .line 121
    new-instance v0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$2;

    invoke-direct {v0, p1, p0}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$2;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    return-object v0
.end method
