.class public Landroidx/core/content/res/FontResourcesParserCompat;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$Api21Impl;,
        Landroidx/core/content/res/FontResourcesParserCompat$FetchStrategy;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MILLIS:I = 0x1f4

.field public static final FETCH_STRATEGY_ASYNC:I = 0x1

.field public static final FETCH_STRATEGY_BLOCKING:I = 0x0

.field public static final INFINITE_TIMEOUT_VALUE:I = -0x1

.field private static final ITALIC:I = 0x1

.field private static final NORMAL_WEIGHT:I = 0x190


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    return-void
.end method

.method private static getType(Landroid/content/res/TypedArray;I)I
    .registers 3
    .param p0, "typedArray"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I

    .line 254
    nop

    .line 255
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat$Api21Impl;->getType(Landroid/content/res/TypedArray;I)I

    move-result v0

    return v0
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    nop

    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    const/4 v0, 0x1

    if-eq v1, v0, :cond_d

    goto :goto_1

    .line 188
    :cond_d
    if-ne v1, v2, :cond_14

    .line 191
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object v0

    return-object v0

    .line 189
    :cond_14
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readCerts(Landroid/content/res/Resources;I)Ljava/util/List;
    .registers 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "certsId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .line 273
    if-nez p1, :cond_7

    .line 274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 276
    :cond_7
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 278
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    :try_start_b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-nez v1, :cond_19

    .line 279
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_52

    .line 297
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 279
    return-object v1

    .line 282
    :cond_19
    :try_start_19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/core/content/res/FontResourcesParserCompat;->getType(Landroid/content/res/TypedArray;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_42

    .line 286
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_41

    .line 287
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 288
    .local v4, "certId":I
    if-eqz v4, :cond_3e

    .line 289
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v4    # "certId":I
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .end local v3    # "i":I
    :cond_41
    goto :goto_4d

    .line 293
    :cond_42
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catchall {:try_start_19 .. :try_end_4d} :catchall_52

    .line 295
    :goto_4d
    nop

    .line 297
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 295
    return-object v1

    .line 297
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :catchall_52
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    throw v1
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "font-family"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 199
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object v1

    return-object v1

    .line 201
    :cond_16
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 202
    return-object v1
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .registers 16
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 209
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Landroidx/core/R$styleable;->FontFamily:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 210
    .local v1, "array":Landroid/content/res/TypedArray;
    sget v2, Landroidx/core/R$styleable;->FontFamily_fontProviderAuthority:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "authority":Ljava/lang/String;
    sget v3, Landroidx/core/R$styleable;->FontFamily_fontProviderPackage:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "providerPackage":Ljava/lang/String;
    sget v4, Landroidx/core/R$styleable;->FontFamily_fontProviderQuery:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "query":Ljava/lang/String;
    sget v5, Landroidx/core/R$styleable;->FontFamily_fontProviderCerts:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 214
    .local v5, "certsId":I
    sget v7, Landroidx/core/R$styleable;->FontFamily_fontProviderFetchStrategy:I

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    .line 216
    .local v7, "strategy":I
    sget v8, Landroidx/core/R$styleable;->FontFamily_fontProviderFetchTimeout:I

    const/16 v9, 0x1f4

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    .line 218
    .local v8, "timeoutMs":I
    sget v9, Landroidx/core/R$styleable;->FontFamily_fontProviderSystemFontFamily:I

    .line 219
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, "systemFontFamilyName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    const/4 v10, 0x3

    if-eqz v2, :cond_5b

    if-eqz v3, :cond_5b

    if-eqz v4, :cond_5b

    .line 223
    :goto_42
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v10, :cond_4c

    .line 224
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_42

    .line 226
    :cond_4c
    invoke-static {p1, v5}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v6

    .line 227
    .local v6, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    new-instance v10, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    new-instance v11, Landroidx/core/provider/FontRequest;

    invoke-direct {v11, v2, v3, v4, v6}, Landroidx/core/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v10, v11, v7, v8, v9}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;-><init>(Landroidx/core/provider/FontRequest;IILjava/lang/String;)V

    return-object v10

    .line 234
    .end local v6    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :cond_5b
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v11, "fonts":Ljava/util/List;, "Ljava/util/List<Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;>;"
    :goto_60
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    if-eq v12, v10, :cond_86

    .line 236
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_6e

    goto :goto_60

    .line 237
    :cond_6e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 238
    .local v12, "tag":Ljava/lang/String;
    const-string v13, "font"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_82

    .line 239
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat;->readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_85

    .line 241
    :cond_82
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 243
    .end local v12    # "tag":Ljava/lang/String;
    :goto_85
    goto :goto_60

    .line 244
    :cond_86
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8e

    .line 245
    const/4 v6, 0x0

    return-object v6

    .line 248
    :cond_8e
    new-instance v10, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    new-array v6, v6, [Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-interface {v11, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-direct {v10, v6}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;-><init>([Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)V

    return-object v10
.end method

.method private static readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .registers 23
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 313
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Landroidx/core/R$styleable;->FontFamilyFont:[I

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 314
    .local v1, "array":Landroid/content/res/TypedArray;
    sget v3, Landroidx/core/R$styleable;->FontFamilyFont_fontWeight:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 315
    sget v3, Landroidx/core/R$styleable;->FontFamilyFont_fontWeight:I

    goto :goto_19

    .line 316
    :cond_17
    sget v3, Landroidx/core/R$styleable;->FontFamilyFont_android_fontWeight:I

    :goto_19
    nop

    .line 317
    .local v3, "weightAttr":I
    const/16 v4, 0x190

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 318
    .local v4, "weight":I
    sget v5, Landroidx/core/R$styleable;->FontFamilyFont_fontStyle:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 319
    sget v5, Landroidx/core/R$styleable;->FontFamilyFont_fontStyle:I

    goto :goto_2d

    .line 320
    :cond_2b
    sget v5, Landroidx/core/R$styleable;->FontFamilyFont_android_fontStyle:I

    :goto_2d
    move v12, v5

    .line 321
    .local v12, "styleAttr":I
    const/4 v5, 0x0

    invoke-virtual {v1, v12, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    const/4 v7, 0x1

    if-ne v7, v6, :cond_38

    const/4 v8, 0x1

    goto :goto_39

    :cond_38
    const/4 v8, 0x0

    .line 322
    .local v8, "isItalic":Z
    :goto_39
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_ttcIndex:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 323
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_ttcIndex:I

    goto :goto_46

    .line 324
    :cond_44
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_android_ttcIndex:I

    :goto_46
    move v13, v6

    .line 326
    .local v13, "ttcIndexAttr":I
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_fontVariationSettings:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 327
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_fontVariationSettings:I

    goto :goto_54

    .line 328
    :cond_52
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_android_fontVariationSettings:I

    :goto_54
    move v14, v6

    .line 329
    .local v14, "variationSettingsAttr":I
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 330
    .local v15, "variationSettings":Ljava/lang/String;
    invoke-virtual {v1, v13, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 331
    .local v16, "ttcIndex":I
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_font:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 332
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_font:I

    goto :goto_6a

    .line 333
    :cond_68
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_android_font:I

    :goto_6a
    move v11, v6

    .line 334
    .local v11, "resourceAttr":I
    invoke-virtual {v1, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 335
    .local v17, "resourceId":I
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 336
    .local v18, "filename":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 337
    :goto_76
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_81

    .line 338
    invoke-static/range {p0 .. p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_76

    .line 340
    :cond_81
    new-instance v19, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-object/from16 v5, v19

    move-object/from16 v6, v18

    move v7, v4

    move-object v9, v15

    move/from16 v10, v16

    move/from16 v20, v11

    .end local v11    # "resourceAttr":I
    .local v20, "resourceAttr":I
    move/from16 v11, v17

    invoke-direct/range {v5 .. v11}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;-><init>(Ljava/lang/String;IZLjava/lang/String;II)V

    return-object v19
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    const/4 v0, 0x1

    .line 346
    .local v0, "depth":I
    :goto_1
    if-lez v0, :cond_12

    .line 347
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    goto :goto_11

    .line 352
    :pswitch_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 349
    :pswitch_e
    add-int/lit8 v0, v0, 0x1

    .line 350
    nop

    .line 353
    :goto_11
    goto :goto_1

    .line 356
    :cond_12
    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_e
        :pswitch_b
    .end packed-switch
.end method

.method private static toByteArrayList([Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "stringArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<[B>;"
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_16

    aget-object v4, p0, v3

    .line 305
    .local v4, "item":Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v4    # "item":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 307
    :cond_16
    return-object v0
.end method
