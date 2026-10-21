.class public final Lmoe/matsuri/nb4a/ui/RequestedUpdates;
.super Ljava/lang/Object;
.source "RequestedUpdates.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static button(Landroid/content/Context;I)Landroid/widget/TextView;
    .registers 3

    .line 290
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 291
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 292
    const-string p1, "#C2C2CB"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    const/high16 p1, 0x41700000    # 15.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 294
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 295
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 p1, 0x41200000    # 10.0f

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 296
    invoke-virtual {v0, p0, p0, p0, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 297
    return-object v0
.end method

.method private static chinaResolve(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    const-string v0, "dns"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 37
    const/4 v0, 0x0

    if-nez p0, :cond_b

    move-object p0, v0

    goto :goto_11

    :cond_b
    const-string v1, "servers"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 38
    :goto_11
    if-nez p0, :cond_14

    return-object v0

    .line 39
    :cond_14
    nop

    .line 40
    const/4 v1, 0x0

    const-string v2, "dns-direct"

    const/4 v3, 0x0

    :goto_19
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    const-string v5, "tag"

    if-ge v3, v4, :cond_35

    .line 41
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dns-remote"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    move-object v2, v5

    .line 40
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 43
    :cond_35
    nop

    :goto_36
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_70

    .line 44
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 45
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 46
    :cond_4d
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "action"

    const-string v1, "resolve"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "server"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 47
    const-string v0, "strategy"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6f

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    :cond_6f
    return-object p0

    .line 51
    :cond_70
    return-object v0
.end method

.method private static column(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/LinearLayout;
    .registers 6

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 276
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 277
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 278
    const/high16 v2, 0x41b00000    # 22.0f

    mul-float v2, v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 279
    const/high16 v3, 0x41800000    # 16.0f

    mul-float v0, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 280
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 281
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const/high16 p0, 0x41900000    # 18.0f

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 283
    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 285
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    return-object v1
.end method

.method public static confirm(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 7

    .line 320
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 321
    const v1, 0x7f13009e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->column(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 322
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 323
    const v3, 0x7f130245

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 324
    const-string v3, "#B8B8C0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41800000    # 16.0f

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 327
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 328
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 329
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 330
    const v3, 0x800005

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 331
    const/high16 v3, 0x1040000

    invoke-static {p0, v3}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->button(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v3

    .line 332
    new-instance v4, Lmoe/matsuri/nb4a/ui/RequestedUpdates$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Lmoe/matsuri/nb4a/ui/RequestedUpdates$$ExternalSyntheticLambda2;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    const v4, 0x104000a

    invoke-static {p0, v4}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->button(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object p0

    .line 334
    new-instance v4, Lmoe/matsuri/nb4a/ui/RequestedUpdates$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, p1}, Lmoe/matsuri/nb4a/ui/RequestedUpdates$$ExternalSyntheticLambda3;-><init>(Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 339
    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 340
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    invoke-static {v0, v1}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->show(Landroid/app/Dialog;Landroid/widget/LinearLayout;)V

    .line 342
    return-void
.end method

.method private static disabledChinaTag(Ljava/lang/String;ZZ)Z
    .registers 3

    .line 271
    if-nez p1, :cond_a

    const-string p1, "geosite:cn"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    :cond_a
    if-nez p2, :cond_26

    const-string p1, "geoip:cn"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    const-string p1, "cn-ip-v4"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    const-string p1, "cn-ip-v6"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    :cond_24
    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method public static editUrl(Lmoe/matsuri/nb4a/ui/UrlTestPreference;)V
    .registers 9

    .line 345
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/UrlTestPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 346
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 347
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/UrlTestPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->column(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 348
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-virtual {p0}, Lmoe/matsuri/nb4a/ui/UrlTestPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 350
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 351
    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 352
    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 353
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 354
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 356
    const v7, 0x7f1302a9

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 357
    const-string v7, "#B8B8C0"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 359
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 360
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 361
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 362
    sget-object v7, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v7}, Lio/nekohasekai/sagernet/database/DataStore;->getConnectionTestConcurrent()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 363
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 365
    const v6, 0x800005

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 366
    const/high16 v6, 0x1040000

    invoke-static {v0, v6}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->button(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v6

    .line 367
    new-instance v7, Lmoe/matsuri/nb4a/ui/RequestedUpdates$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1}, Lmoe/matsuri/nb4a/ui/RequestedUpdates$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    const v7, 0x104000a

    invoke-static {v0, v7}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->button(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v0

    .line 369
    new-instance v7, Lmoe/matsuri/nb4a/ui/RequestedUpdates$$ExternalSyntheticLambda1;

    invoke-direct {v7, v3, v5, p0, v1}, Lmoe/matsuri/nb4a/ui/RequestedUpdates$$ExternalSyntheticLambda1;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Lmoe/matsuri/nb4a/ui/UrlTestPreference;Landroid/app/Dialog;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 390
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 391
    invoke-static {v1, v2}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->show(Landroid/app/Dialog;Landroid/widget/LinearLayout;)V

    .line 392
    return-void
.end method

.method private static filterChinaRules(Lorg/json/JSONArray;ZZ)Lorg/json/JSONArray;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 244
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_78

    .line 245
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 246
    const-string v4, "rule_set"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 247
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_24

    .line 248
    check-cast v5, Ljava/lang/String;

    invoke-static {v5, p1, p2}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->disabledChinaTag(Ljava/lang/String;ZZ)Z

    move-result v4

    if-eqz v4, :cond_56

    goto :goto_75

    .line 249
    :cond_24
    instance-of v6, v5, Lorg/json/JSONArray;

    if-eqz v6, :cond_56

    .line 250
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 251
    check-cast v5, Lorg/json/JSONArray;

    .line 252
    const/4 v7, 0x0

    :goto_30
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_46

    .line 253
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 254
    invoke-static {v8, p1, p2}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->disabledChinaTag(Ljava/lang/String;ZZ)Z

    move-result v9

    if-nez v9, :cond_43

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 252
    :cond_43
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 256
    :cond_46
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_53

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_53

    goto :goto_75

    .line 257
    :cond_53
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    :cond_56
    const-string v4, "rules"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 260
    if-eqz v5, :cond_72

    .line 261
    invoke-static {v5, p1, p2}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->filterChinaRules(Lorg/json/JSONArray;ZZ)Lorg/json/JSONArray;

    move-result-object v6

    .line 262
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_6f

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_6f

    goto :goto_75

    .line 263
    :cond_6f
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    :cond_72
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 244
    :goto_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 267
    :cond_78
    return-object v0
.end method

.method private static insertRule(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 28
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gt v1, v2, :cond_21

    .line 29
    if-ne v1, p1, :cond_11

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 30
    :cond_11
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1e

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 28
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 32
    :cond_21
    return-object v0
.end method

.method static synthetic lambda$confirm$1(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 332
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$confirm$2(Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .registers 3

    .line 335
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 336
    const/4 p2, -0x1

    invoke-interface {p1, p0, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 337
    return-void
.end method

.method static synthetic lambda$editUrl$3(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 367
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$editUrl$4(Landroid/widget/EditText;Landroid/widget/EditText;Lmoe/matsuri/nb4a/ui/UrlTestPreference;Landroid/app/Dialog;Landroid/view/View;)V
    .registers 8

    .line 370
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 371
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 372
    const-string v1, "http"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "https"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_28
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_34

    .line 373
    :cond_2e
    const-string p1, "\u8bf7\u8f93\u5165\u6709\u6548\u7684 HTTP/HTTPS \u94fe\u63a5"

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 374
    return-void

    .line 377
    :cond_34
    :try_start_34
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_40} :catch_59

    if-lez p0, :cond_53

    .line 381
    nop

    .line 382
    invoke-virtual {p2, p1}, Lmoe/matsuri/nb4a/ui/UrlTestPreference;->setConcurrent(Landroid/widget/EditText;)V

    .line 383
    invoke-virtual {p2, p4}, Lmoe/matsuri/nb4a/ui/UrlTestPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_52

    .line 384
    invoke-virtual {p2, p4}, Lmoe/matsuri/nb4a/ui/UrlTestPreference;->setText(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 387
    :cond_52
    return-void

    .line 377
    :cond_53
    :try_start_53
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_59} :catch_59

    .line 378
    :catch_59
    move-exception p0

    .line 379
    const-string p0, "\u8bf7\u8f93\u5165\u5927\u4e8e 0 \u7684\u5e76\u53d1\u6570"

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 380
    return-void
.end method

.method static synthetic lambda$sortResults$0(Lio/nekohasekai/sagernet/database/ProxyEntity;Lio/nekohasekai/sagernet/database/ProxyEntity;)I
    .registers 5

    .line 57
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getStatus()I

    move-result v0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getPing()I

    move-result v0

    if-ltz v0, :cond_15

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getPing()I

    move-result p0

    goto :goto_18

    :cond_15
    const p0, 0x7fffffff

    .line 58
    :goto_18
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getStatus()I

    move-result v0

    if-ne v0, v2, :cond_28

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getPing()I

    move-result v0

    if-ltz v0, :cond_28

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/database/ProxyEntity;->getPing()I

    move-result v1

    .line 56
    :cond_28
    invoke-static {p0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public static routeDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 66
    const-string v0, "chinaDomainBypass"

    invoke-static {v0}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->enabled(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "chinaIpBypass"

    invoke-static {v1}, Lmoe/matsuri/nb4a/ui/LocalAppearanceSettings;->enabled(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p0, v0, v1}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->routeDomain(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static routeDomain(Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 35

    .line 71
    move-object/from16 v0, p0

    const-string v1, "clash_api"

    const-string v2, "experimental"

    const-string v3, "outbounds"

    const-string v4, "rules"

    const-string v5, "outbound"

    const-string v6, "route"

    const-string v7, "action"

    :try_start_10
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_496

    .line 73
    nop

    .line 74
    const-string v10, "proxy"

    const-string v11, "tag"

    const/4 v12, 0x1

    if-eqz v9, :cond_3b

    .line 75
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_23
    :try_start_23
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v14, v13, :cond_3c

    .line 76
    invoke-virtual {v9, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_38

    const/4 v15, 0x1

    .line 75
    :cond_38
    add-int/lit8 v14, v14, 0x1

    goto :goto_23

    .line 74
    :cond_3b
    const/4 v15, 0x0

    .line 79
    :cond_3c
    if-nez v15, :cond_3f

    return-object v0

    .line 80
    :cond_3f
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 81
    if-nez v0, :cond_4a

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 82
    :cond_4a
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 83
    if-nez v9, :cond_55

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 84
    :cond_55
    const-string v13, "external_controller"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    invoke-virtual {v8, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    if-nez v0, :cond_6b

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 89
    :cond_6b
    const-string v1, "find_process"

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 90
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_74} :catch_496

    .line 91
    nop

    .line 92
    nop

    .line 93
    const-string v2, "direct"

    const-string v3, "bypass"

    if-eqz v1, :cond_9b

    .line 94
    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_7f
    :try_start_7f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v9, v15, :cond_9d

    .line 95
    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 96
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    .line 97
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_97} :catch_496

    or-int/2addr v14, v15

    .line 94
    add-int/lit8 v9, v9, 0x1

    goto :goto_7f

    .line 93
    :cond_9b
    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 100
    :cond_9d
    if-eqz v13, :cond_a1

    move-object v9, v3

    goto :goto_a6

    :cond_a1
    if-eqz v14, :cond_a5

    move-object v9, v2

    goto :goto_a6

    :cond_a5
    const/4 v9, 0x0

    .line 101
    :goto_a6
    const-string v13, "type"

    if-nez v9, :cond_bd

    if-eqz v1, :cond_bd

    .line 102
    :try_start_ac
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v9, v13, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 103
    goto :goto_be

    .line 105
    :cond_bd
    move-object v3, v9

    :goto_be
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 106
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 107
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 108
    const-string v14, "domain_suffix"

    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    const-string v12, "linjiajia.top"

    invoke-virtual {v15, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v9, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    invoke-virtual {v9, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    invoke-virtual {v9, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_e2} :catch_496

    .line 111
    nop

    .line 112
    nop

    .line 113
    nop

    .line 114
    const-string v12, "hijack-dns"

    const-string v14, "sniff"

    const-string v15, "resolve"

    move-object/from16 v17, v4

    const-string v4, "geosite:cn"

    move-object/from16 v18, v6

    const-string v6, "geoip:cn"

    move-object/from16 v19, v10

    const-string v10, "rule_set"

    move-object/from16 p0, v13

    const-string v13, "cn-ip-v6"

    move-object/from16 v20, v11

    const-string v11, "cn-ip-v4"

    if-eqz v1, :cond_228

    .line 115
    move-object/from16 v21, v0

    const/4 v0, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_10a
    move-object/from16 v25, v5

    :try_start_10c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_221

    .line 116
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 117
    move-object/from16 v26, v1

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13c

    move-object/from16 v27, v7

    const-string v7, "dns-direct"

    move-object/from16 v28, v3

    const-string v3, "server"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_140

    .line 119
    invoke-static {v8}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->chinaResolve(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 120
    if-eqz v3, :cond_140

    move-object v5, v3

    goto :goto_140

    .line 118
    :cond_13c
    move-object/from16 v28, v3

    move-object/from16 v27, v7

    .line 122
    :cond_140
    :goto_140
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_155

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_155

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_153

    goto :goto_155

    :cond_153
    const/4 v1, 0x0

    goto :goto_156

    :cond_155
    :goto_155
    const/4 v1, 0x1

    .line 123
    :goto_156
    if-nez v24, :cond_15f

    if-nez v1, :cond_15f

    .line 124
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 125
    const/16 v24, 0x1

    .line 127
    :cond_15f
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 128
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_178

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_178

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_176

    goto :goto_178

    :cond_176
    const/4 v3, 0x0

    goto :goto_179

    :cond_178
    :goto_178
    const/4 v3, 0x1

    .line 129
    :goto_179
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    or-int v7, v22, v7

    .line 130
    move/from16 v29, v3

    instance-of v3, v1, Lorg/json/JSONArray;

    if-eqz v3, :cond_1bb

    .line 131
    move-object v3, v1

    check-cast v3, Lorg/json/JSONArray;

    .line 132
    move/from16 v22, v7

    const/4 v7, 0x0

    :goto_18b
    move-object/from16 v30, v9

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v7, v9, :cond_1b8

    .line 133
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    .line 134
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1a9

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_1a9

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1ab

    :cond_1a9
    const/16 v29, 0x1

    .line 135
    :cond_1ab
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b3

    const/16 v22, 0x1

    .line 132
    :cond_1b3
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v9, v30

    goto :goto_18b

    :cond_1b8
    move/from16 v3, v29

    goto :goto_1c1

    .line 130
    :cond_1bb
    move-object/from16 v30, v9

    move/from16 v22, v7

    move/from16 v3, v29

    .line 138
    :goto_1c1
    or-int v23, v23, v3

    .line 139
    if-eqz v3, :cond_210

    .line 140
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1db

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v5, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    :cond_1db
    instance-of v3, v1, Lorg/json/JSONArray;

    if-eqz v3, :cond_207

    .line 142
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 143
    check-cast v1, Lorg/json/JSONArray;

    .line 144
    const/4 v7, 0x0

    :goto_1e7
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v7, v9, :cond_204

    .line 145
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 146
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1fe

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v3, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_201

    .line 147
    :cond_1fe
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 144
    :goto_201
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e7

    .line 149
    :cond_204
    invoke-virtual {v5, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    :cond_207
    invoke-static {v8}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->chinaResolve(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_210

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 154
    :cond_210
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 115
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v25

    move-object/from16 v1, v26

    move-object/from16 v7, v27

    move-object/from16 v3, v28

    move-object/from16 v9, v30

    goto/16 :goto_10a

    :cond_221
    move-object/from16 v28, v3

    move-object/from16 v27, v7

    move-object/from16 v30, v9

    goto :goto_238

    .line 114
    :cond_228
    move-object/from16 v21, v0

    move-object/from16 v28, v3

    move-object/from16 v25, v5

    move-object/from16 v27, v7

    move-object/from16 v30, v9

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 157
    :goto_238
    if-eqz v28, :cond_38a

    .line 158
    const/4 v0, 0x0

    .line 159
    :goto_23b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_263

    .line 160
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 v3, v27

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25e

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25e

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25e

    goto :goto_265

    .line 162
    :cond_25e
    add-int/lit8 v0, v0, 0x1

    .line 163
    move-object/from16 v27, v3

    goto :goto_23b

    .line 159
    :cond_263
    move-object/from16 v3, v27

    .line 164
    :goto_265
    if-nez v22, :cond_27e

    .line 165
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 166
    invoke-virtual {v1, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    move-object/from16 v5, v25

    move-object/from16 v9, v28

    invoke-virtual {v1, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    add-int/lit8 v7, v0, 0x1

    invoke-static {v2, v0, v1}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->insertRule(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v7

    goto :goto_282

    .line 164
    :cond_27e
    move-object/from16 v5, v25

    move-object/from16 v9, v28

    .line 170
    :goto_282
    if-nez v23, :cond_2ae

    .line 171
    invoke-static {v8}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->chinaResolve(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_291

    add-int/lit8 v7, v0, 0x1

    invoke-static {v2, v0, v1}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->insertRule(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v7

    .line 173
    :cond_291
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 174
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v1, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    invoke-virtual {v1, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    invoke-static {v2, v0, v1}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->insertRule(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v2, v0

    .line 178
    :cond_2ae
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 179
    if-nez v1, :cond_2bb

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 180
    :cond_2bb
    nop

    .line 181
    nop

    .line 182
    nop

    .line 183
    nop

    .line 184
    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_2c7
    move-object/from16 v23, v2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v7, v2, :cond_2fc

    .line 185
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v25, v8

    move-object/from16 v8, v20

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    or-int v15, v15, v20

    .line 187
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    or-int v16, v16, v20

    .line 188
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    or-int v21, v21, v20

    .line 189
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int v22, v22, v2

    .line 184
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v20, v8

    move-object/from16 v2, v23

    move-object/from16 v8, v25

    goto :goto_2c7

    .line 191
    :cond_2fc
    move-object/from16 v25, v8

    move-object/from16 v8, v20

    if-nez v15, :cond_327

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "local"

    move-object/from16 v15, p0

    invoke-virtual {v2, v15, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "format"

    move-object/from16 v28, v9

    const-string v9, "binary"

    invoke-virtual {v2, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "path"

    invoke-virtual {v2, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_32b

    :cond_327
    move-object/from16 v15, p0

    move-object/from16 v28, v9

    .line 192
    :goto_32b
    if-nez v16, :cond_34d

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "local"

    invoke-virtual {v2, v15, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "format"

    const-string v7, "binary"

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "path"

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 193
    :cond_34d
    const/4 v2, 0x0

    :goto_34e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_372

    .line 194
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 195
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_368

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36f

    :cond_368
    invoke-static {v4}, Lmoe/matsuri/nb4a/ui/ChinaIpRules;->ruleSet(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 193
    :cond_36f
    add-int/lit8 v2, v2, 0x1

    goto :goto_34e

    .line 197
    :cond_372
    if-nez v21, :cond_37b

    invoke-static {v11}, Lmoe/matsuri/nb4a/ui/ChinaIpRules;->ruleSet(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 198
    :cond_37b
    if-nez v22, :cond_384

    invoke-static {v13}, Lmoe/matsuri/nb4a/ui/ChinaIpRules;->ruleSet(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 199
    :cond_384
    invoke-virtual {v0, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v2, v23

    goto :goto_392

    .line 157
    :cond_38a
    move-object/from16 v0, v21

    move-object/from16 v5, v25

    move-object/from16 v3, v27

    move-object/from16 v25, v8

    .line 201
    :goto_392
    if-nez v24, :cond_399

    move-object/from16 v1, v30

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 202
    :cond_399
    const/4 v13, 0x0

    .line 203
    :goto_39a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v13, v1, :cond_3b8

    .line 204
    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b5

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b5

    goto :goto_3b8

    .line 206
    :cond_3b5
    add-int/lit8 v13, v13, 0x1

    .line 207
    goto :goto_39a

    .line 208
    :cond_3b8
    :goto_3b8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 209
    const-string v4, "domain_suffix"

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const-string v7, "google.com"

    .line 210
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "googleapis.com"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "gstatic.com"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "googleusercontent.com"

    .line 211
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "googlevideo.com"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "youtube.com"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "youtu.be"

    .line 212
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "ggpht.com"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "googleadservices.com"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "googlesyndication.com"

    .line 213
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "doubleclick.net"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "openai.com"

    .line 214
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "chatgpt.com"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "oaistatic.com"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "oaiusercontent.com"

    .line 215
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v7, "auth0.com"

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v6

    .line 209
    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    move-object/from16 v4, v19

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    move-object/from16 v4, v18

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    invoke-static {v2, v13, v1}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->insertRule(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    .line 219
    if-eqz v28, :cond_47c

    .line 220
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 221
    const-string v6, "package_name"

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    const-string v8, "com.netease.cloudmusic"

    .line 222
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v8, "com.ss.android.ugc.aweme.lite"

    .line 223
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v8, "dark.segssiavto.exdmrkakvc"

    .line 224
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v8, "com.android.mms"

    .line 225
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v8, "com.oplus.pantanal.ums"

    .line 226
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v8, "com.heytap.market"

    .line 227
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v8, "com.heytap.speechassist"

    .line 228
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v7

    .line 221
    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    move-object/from16 v9, v28

    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    invoke-static {v1, v13, v2}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->insertRule(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    .line 233
    :cond_47c
    move-object/from16 v2, v17

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    move/from16 v3, p1

    move/from16 v5, p2

    invoke-static {v1, v3, v5}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->filterChinaRules(Lorg/json/JSONArray;ZZ)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    move-object/from16 v1, v25

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_495
    .catch Ljava/lang/Exception; {:try_start_10c .. :try_end_495} :catch_496

    return-object v0

    .line 237
    :catch_496
    move-exception v0

    .line 238
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot apply linjiajia.top proxy rule"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static show(Landroid/app/Dialog;Landroid/widget/LinearLayout;)V
    .registers 8

    .line 301
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 302
    new-instance v1, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-direct {v1, v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;-><init>(Landroid/content/Context;)V

    .line 303
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setCornerRadiusDp(F)V

    .line 304
    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeil(F)V

    .line 305
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setFrostVeilColor(I)V

    .line 306
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 308
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 309
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 310
    if-eqz p1, :cond_41

    .line 311
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 312
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 313
    const v1, 0x3e6147ae    # 0.22f

    invoke-virtual {p1, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 315
    :cond_41
    invoke-static {p1, v0}, Lmoe/matsuri/nb4a/ui/DrawerDialogLayout;->apply(Landroid/view/Window;Landroid/content/Context;)V

    .line 316
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 317
    return-void
.end method

.method public static sortResults(Ljava/util/List;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lio/nekohasekai/sagernet/database/ProxyEntity;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    new-instance p0, Lmoe/matsuri/nb4a/ui/RequestedUpdates$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lmoe/matsuri/nb4a/ui/RequestedUpdates$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 59
    nop

    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v1, 0x1

    move-wide v3, v1

    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/nekohasekai/sagernet/database/ProxyEntity;

    add-long v6, v3, v1

    invoke-virtual {v5, v3, v4}, Lio/nekohasekai/sagernet/database/ProxyEntity;->setUserOrder(J)V

    move-wide v3, v6

    goto :goto_15

    .line 61
    :cond_28
    sget-object p0, Lio/nekohasekai/sagernet/database/SagerDatabase;->Companion:Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/database/SagerDatabase$Companion;->getProxyDao()Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;

    move-result-object p0

    invoke-interface {p0, v0}, Lio/nekohasekai/sagernet/database/ProxyEntity$Dao;->updateProxy(Ljava/util/List;)I

    .line 62
    return-object v0
.end method
