.class public Landroidx/constraintlayout/widget/ConstraintAttribute;
.super Ljava/lang/Object;
.source "ConstraintAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransitionLayout"


# instance fields
.field mBooleanValue:Z

.field private mColorValue:I

.field private mFloatValue:F

.field private mIntegerValue:I

.field private mMethod:Z

.field mName:Ljava/lang/String;

.field private mStringValue:Ljava/lang/String;

.field private mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V
    .registers 4
    .param p1, "source"    # Landroidx/constraintlayout/widget/ConstraintAttribute;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "value"
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    .line 267
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    .line 268
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 269
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setValue(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributeType"    # Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "attributeType"
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    .line 255
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    .line 256
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 257
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;Ljava/lang/Object;Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributeType"    # Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "method"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "attributeType",
            "value",
            "method"
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    .line 260
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 262
    iput-boolean p4, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    .line 263
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setValue(Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method private static clamp(I)I
    .registers 3
    .param p0, "c"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 443
    const/16 v0, 0xff

    .line 444
    .local v0, "N":I
    shr-int/lit8 v1, p0, 0x1f

    not-int v1, v1

    and-int/2addr p0, v1

    .line 445
    sub-int/2addr p0, v0

    .line 446
    shr-int/lit8 v1, p0, 0x1f

    and-int/2addr p0, v1

    .line 447
    add-int/2addr p0, v0

    .line 448
    return p0
.end method

.method public static extractAttributes(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/HashMap;
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation

    .line 300
    .local p0, "base":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 301
    .local v0, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 302
    .local v1, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 303
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 306
    .local v4, "constraintAttribute":Landroidx/constraintlayout/widget/ConstraintAttribute;
    :try_start_23
    const-string v5, "BackgroundColor"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/ColorDrawable;

    .line 308
    .local v5, "viewColor":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 309
    .local v6, "val":Ljava/lang/Object;
    new-instance v7, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-direct {v7, v4, v6}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    nop

    .end local v5    # "viewColor":Landroid/graphics/drawable/ColorDrawable;
    .end local v6    # "val":Ljava/lang/Object;
    goto :goto_7a

    .line 311
    :cond_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 312
    .local v5, "method":Ljava/lang/reflect/Method;
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 313
    .restart local v6    # "val":Ljava/lang/Object;
    new-instance v7, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-direct {v7, v4, v6}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_23 .. :try_end_6b} :catch_76
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_6b} :catch_71
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_6b} :catch_6c

    goto :goto_7a

    .line 320
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "val":Ljava/lang/Object;
    :catch_6c
    move-exception v5

    .line 321
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_7b

    .line 318
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_71
    move-exception v5

    .line 319
    .local v5, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v5}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_7a

    .line 316
    :catch_76
    move-exception v5

    .line 317
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 322
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :goto_7a
    nop

    .line 323
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "constraintAttribute":Landroidx/constraintlayout/widget/ConstraintAttribute;
    :goto_7b
    goto :goto_11

    .line 324
    :cond_7c
    return-object v0
.end method

.method public static parse(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parser",
            "custom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    .line 452
    .local p2, "custom":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 453
    .local v0, "attributeSet":Landroid/util/AttributeSet;
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute:[I

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 454
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    .line 455
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 456
    .local v3, "method":Z
    const/4 v4, 0x0

    .line 457
    .local v4, "value":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 458
    .local v5, "type":Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    .line 459
    .local v6, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_13
    if-ge v7, v6, :cond_f5

    .line 460
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 461
    .local v8, "attr":I
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_attributeName:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-ne v8, v9, :cond_4a

    .line 462
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 463
    if-eqz v2, :cond_f1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_f1

    .line 464
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f1

    .line 466
    :cond_4a
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_methodName:I

    if-ne v8, v9, :cond_55

    .line 467
    const/4 v3, 0x1

    .line 468
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f1

    .line 469
    :cond_55
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customBoolean:I

    if-ne v8, v9, :cond_65

    .line 470
    invoke-virtual {v1, v8, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 471
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->BOOLEAN_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    goto/16 :goto_f1

    .line 472
    :cond_65
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customColorValue:I

    if-ne v8, v9, :cond_75

    .line 473
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 474
    invoke-virtual {v1, v8, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_f1

    .line 475
    :cond_75
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customColorDrawableValue:I

    if-ne v8, v9, :cond_85

    .line 476
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->COLOR_DRAWABLE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 477
    invoke-virtual {v1, v8, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_f1

    .line 478
    :cond_85
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customPixelDimension:I

    const/4 v11, 0x0

    if-ne v8, v9, :cond_a2

    .line 479
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 480
    nop

    .line 482
    invoke-virtual {v1, v8, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    .line 483
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 480
    invoke-static {v10, v9, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_f1

    .line 484
    :cond_a2
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customDimension:I

    if-ne v8, v9, :cond_b1

    .line 485
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->DIMENSION_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 486
    invoke-virtual {v1, v8, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_f1

    .line 487
    :cond_b1
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customFloatValue:I

    if-ne v8, v9, :cond_c2

    .line 488
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 489
    const/high16 v9, 0x7fc00000    # Float.NaN

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_f1

    .line 490
    :cond_c2
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customIntegerValue:I

    const/4 v10, -0x1

    if-ne v8, v9, :cond_d2

    .line 491
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->INT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 492
    invoke-virtual {v1, v8, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_f1

    .line 493
    :cond_d2
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customStringValue:I

    if-ne v8, v9, :cond_dd

    .line 494
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 495
    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_f1

    .line 496
    :cond_dd
    sget v9, Landroidx/constraintlayout/widget/R$styleable;->CustomAttribute_customReference:I

    if-ne v8, v9, :cond_f1

    .line 497
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->REFERENCE_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 498
    invoke-virtual {v1, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 499
    .local v9, "tmp":I
    if-ne v9, v10, :cond_ed

    .line 500
    invoke-virtual {v1, v8, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 502
    :cond_ed
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 459
    .end local v8    # "attr":I
    .end local v9    # "tmp":I
    :cond_f1
    :goto_f1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_13

    .line 505
    .end local v7    # "i":I
    :cond_f5
    if-eqz v2, :cond_101

    if-eqz v4, :cond_101

    .line 506
    new-instance v7, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-direct {v7, v2, v5, v4, v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;Ljava/lang/Object;Z)V

    invoke-virtual {p2, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :cond_101
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 509
    return-void
.end method

.method public static setAttributes(Landroid/view/View;Ljava/util/HashMap;)V
    .registers 15
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    .line 328
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    const-string v0, "\" not found on "

    const-string v1, " Custom Attribute \""

    const-string v2, "TransitionLayout"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 329
    .local v3, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 330
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 331
    .local v6, "constraintAttribute":Landroidx/constraintlayout/widget/ConstraintAttribute;
    move-object v7, v5

    .line 332
    .local v7, "methodName":Ljava/lang/String;
    iget-boolean v8, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    if-nez v8, :cond_3c

    .line 333
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 337
    :cond_3c
    :try_start_3c
    sget-object v8, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v9, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v9}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v8, :pswitch_data_1aa

    goto/16 :goto_1a5

    .line 365
    :pswitch_4d
    new-array v8, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 366
    .local v8, "method":Ljava/lang/reflect/Method;
    iget v11, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v11, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    goto/16 :goto_1a5

    .line 343
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :pswitch_66
    new-array v8, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 344
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    iget v11, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v11, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    goto/16 :goto_1a5

    .line 339
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :pswitch_7f
    new-array v8, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 340
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    iget v11, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v11, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    goto/16 :goto_1a5

    .line 347
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :pswitch_98
    new-array v8, v10, [Ljava/lang/Class;

    const-class v11, Landroid/graphics/drawable/Drawable;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 348
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 349
    .local v11, "drawable":Landroid/graphics/drawable/ColorDrawable;
    iget v12, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 350
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v11, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    goto/16 :goto_1a5

    .line 353
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v11    # "drawable":Landroid/graphics/drawable/ColorDrawable;
    :pswitch_b5
    new-array v8, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 354
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    iget v11, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v11, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    goto/16 :goto_1a5

    .line 357
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :pswitch_ce
    new-array v8, v10, [Ljava/lang/Class;

    const-class v11, Ljava/lang/CharSequence;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 358
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    iget-object v11, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v11, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    goto/16 :goto_1a5

    .line 361
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :pswitch_e3
    new-array v8, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 362
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    iget-boolean v11, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v11, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    goto/16 :goto_1a5

    .line 369
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :pswitch_fc
    new-array v8, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 370
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    iget v11, v6, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v11, v10, v9

    invoke-virtual {v8, p0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_113
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3c .. :try_end_113} :catch_15f
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_113} :catch_13a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3c .. :try_end_113} :catch_115

    goto/16 :goto_1a5

    .line 379
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :catch_115
    move-exception v8

    .line 380
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1a6

    .line 376
    .end local v8    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_13a
    move-exception v8

    .line 377
    .local v8, "e":Ljava/lang/IllegalAccessException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1a5

    .line 372
    :catch_15f
    move-exception v8

    .line 373
    .local v8, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v8}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " must have a method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v8    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1a5
    nop

    .line 383
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "constraintAttribute":Landroidx/constraintlayout/widget/ConstraintAttribute;
    .end local v7    # "methodName":Ljava/lang/String;
    :goto_1a6
    goto/16 :goto_12

    .line 384
    :cond_1a8
    return-void

    nop

    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_fc
        :pswitch_e3
        :pswitch_ce
        :pswitch_b5
        :pswitch_98
        :pswitch_7f
        :pswitch_66
        :pswitch_4d
    .end packed-switch
.end method


# virtual methods
.method public applyCustom(Landroid/view/View;)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 387
    const-string v0, "\" not found on "

    const-string v1, " Custom Attribute \""

    const-string v2, "TransitionLayout"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 388
    .local v3, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    .line 389
    .local v4, "name":Ljava/lang/String;
    move-object v5, v4

    .line 390
    .local v5, "methodName":Ljava/lang/String;
    iget-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    if-nez v6, :cond_24

    .line 391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 395
    :cond_24
    :try_start_24
    sget-object v6, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v6, :pswitch_data_176

    goto/16 :goto_174

    .line 424
    :pswitch_35
    new-array v6, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 425
    .local v6, "method":Ljava/lang/reflect/Method;
    iget v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v7

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_174

    .line 402
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :pswitch_4e
    new-array v6, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 403
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    iget v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v7

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    goto/16 :goto_174

    .line 406
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :pswitch_67
    new-array v6, v8, [Ljava/lang/Class;

    const-class v9, Landroid/graphics/drawable/Drawable;

    aput-object v9, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 407
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 408
    .local v9, "drawable":Landroid/graphics/drawable/ColorDrawable;
    iget v10, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 409
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v7

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    goto/16 :goto_174

    .line 412
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v9    # "drawable":Landroid/graphics/drawable/ColorDrawable;
    :pswitch_84
    new-array v6, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 413
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    iget v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v7

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    goto/16 :goto_174

    .line 416
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :pswitch_9d
    new-array v6, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/CharSequence;

    aput-object v9, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 417
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    iget-object v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v7

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    goto/16 :goto_174

    .line 420
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :pswitch_b2
    new-array v6, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 421
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    iget-boolean v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v7

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    goto/16 :goto_174

    .line 398
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :pswitch_cb
    new-array v6, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 399
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    iget v9, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v7

    invoke-virtual {v6, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_24 .. :try_end_e2} :catch_12e
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_e2} :catch_109
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_e2} :catch_e4

    .line 400
    goto/16 :goto_174

    .line 435
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :catch_e4
    move-exception v6

    .line 436
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_175

    .line 432
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_109
    move-exception v6

    .line 433
    .local v6, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_174

    .line 428
    :catch_12e
    move-exception v6

    .line 429
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must have a method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :goto_174
    nop

    .line 440
    :goto_175
    return-void

    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_cb
        :pswitch_b2
        :pswitch_9d
        :pswitch_84
        :pswitch_67
        :pswitch_cb
        :pswitch_4e
        :pswitch_35
    .end packed-switch
.end method

.method public diff(Landroidx/constraintlayout/widget/ConstraintAttribute;)Z
    .registers 6
    .param p1, "constraintAttribute"    # Landroidx/constraintlayout/widget/ConstraintAttribute;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraintAttribute"
        }
    .end annotation

    .line 232
    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    if-eq v1, v2, :cond_a

    goto :goto_4d

    .line 235
    :cond_a
    sget-object v1, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_4e

    .line 251
    return v0

    .line 249
    :pswitch_19
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0

    .line 240
    :pswitch_23
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    return v0

    .line 243
    :pswitch_2d
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    if-ne v1, v3, :cond_34

    const/4 v0, 0x1

    :cond_34
    return v0

    .line 245
    :pswitch_35
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    if-ne v1, v3, :cond_3c

    const/4 v0, 0x1

    :cond_3c
    return v0

    .line 247
    :pswitch_3d
    iget-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    iget-boolean v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    if-ne v1, v3, :cond_44

    const/4 v0, 0x1

    :cond_44
    return v0

    .line 238
    :pswitch_45
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    iget v3, p1, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    if-ne v1, v3, :cond_4c

    const/4 v0, 0x1

    :cond_4c
    return v0

    .line 233
    :cond_4d
    :goto_4d
    return v0

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_45
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
        :pswitch_2d
        :pswitch_45
        :pswitch_23
        :pswitch_19
    .end packed-switch
.end method

.method public getColorValue()I
    .registers 2

    .line 89
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    return v0
.end method

.method public getFloatValue()F
    .registers 2

    .line 77
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    return v0
.end method

.method public getIntegerValue()I
    .registers 2

    .line 73
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;
    .registers 2

    .line 93
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    return-object v0
.end method

.method public getValueToInterpolate()F
    .registers 3

    .line 149
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 164
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 162
    :pswitch_10
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    return v0

    .line 153
    :pswitch_13
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    return v0

    .line 151
    :pswitch_16
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    int-to-float v0, v0

    return v0

    .line 156
    :pswitch_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Color does not have a single color to interpolate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :pswitch_22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot interpolate String"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :pswitch_2a
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    if-eqz v0, :cond_31

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return v0

    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_2a
        :pswitch_22
        :pswitch_1a
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public getValuesToInterpolate([F)V
    .registers 15
    .param p1, "ret"    # [F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ret"
        }
    .end annotation

    .line 168
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_76

    goto :goto_75

    .line 195
    :pswitch_f
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    aput v0, p1, v1

    goto :goto_75

    .line 173
    :pswitch_14
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    aput v0, p1, v1

    .line 174
    goto :goto_75

    .line 170
    :pswitch_19
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    int-to-float v0, v0

    aput v0, p1, v1

    .line 171
    goto :goto_75

    .line 177
    :pswitch_1f
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 178
    .local v0, "a":I
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 179
    .local v2, "r":I
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 180
    .local v3, "g":I
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    and-int/lit16 v4, v4, 0xff

    .line 181
    .local v4, "b":I
    int-to-float v5, v2

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    float-to-double v7, v5

    const-wide v9, 0x400199999999999aL    # 2.2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v5, v7

    .line 182
    .local v5, "f_r":F
    int-to-float v7, v3

    div-float/2addr v7, v6

    float-to-double v7, v7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 183
    .local v7, "f_g":F
    int-to-float v8, v4

    div-float/2addr v8, v6

    float-to-double v11, v8

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    .line 184
    .local v8, "f_b":F
    aput v5, p1, v1

    .line 185
    const/4 v1, 0x1

    aput v7, p1, v1

    .line 186
    const/4 v1, 0x2

    aput v8, p1, v1

    .line 187
    int-to-float v1, v0

    div-float/2addr v1, v6

    const/4 v6, 0x3

    aput v1, p1, v6

    .line 188
    goto :goto_75

    .line 190
    .end local v0    # "a":I
    .end local v2    # "r":I
    .end local v3    # "g":I
    .end local v4    # "b":I
    .end local v5    # "f_r":F
    .end local v7    # "f_g":F
    .end local v8    # "f_b":F
    :pswitch_62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Color does not have a single color to interpolate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :pswitch_6a
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    if-eqz v0, :cond_71

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_72

    :cond_71
    const/4 v0, 0x0

    :goto_72
    aput v0, p1, v1

    .line 193
    nop

    .line 198
    :goto_75
    return-void

    :pswitch_data_76
    .packed-switch 0x2
        :pswitch_6a
        :pswitch_62
        :pswitch_1f
        :pswitch_1f
        :pswitch_19
        :pswitch_14
        :pswitch_f
    .end packed-switch
.end method

.method public isBooleanValue()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    return v0
.end method

.method public isContinuous()Z
    .registers 3

    .line 101
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 107
    const/4 v0, 0x1

    return v0

    .line 105
    :pswitch_f
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public isMethod()Z
    .registers 2

    .line 69
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    return v0
.end method

.method public numberOfInterpolatedValues()I
    .registers 3

    .line 134
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 139
    const/4 v0, 0x1

    return v0

    .line 137
    :pswitch_f
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x4
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public setColorValue(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 116
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    .line 117
    return-void
.end method

.method public setFloatValue(F)V
    .registers 2
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 112
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    .line 113
    return-void
.end method

.method public setIntValue(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 120
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    .line 121
    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 274
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    goto :goto_46

    .line 293
    :pswitch_e
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    goto :goto_46

    .line 280
    :pswitch_18
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    .line 281
    goto :goto_46

    .line 284
    :pswitch_22
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    .line 285
    goto :goto_46

    .line 287
    :pswitch_2c
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    .line 288
    goto :goto_46

    .line 290
    :pswitch_32
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    .line 291
    goto :goto_46

    .line 277
    :pswitch_3c
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    .line 278
    nop

    .line 296
    :goto_46
    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_32
        :pswitch_2c
        :pswitch_22
        :pswitch_22
        :pswitch_3c
        :pswitch_18
        :pswitch_e
    .end packed-switch
.end method

.method public setValue([F)V
    .registers 8
    .param p1, "value"    # [F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 201
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintAttribute$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_54

    goto :goto_52

    .line 220
    :pswitch_f
    aget v0, p1, v1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    goto :goto_52

    .line 207
    :pswitch_14
    aget v0, p1, v1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    .line 208
    goto :goto_52

    .line 211
    :pswitch_19
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    .line 212
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/4 v1, 0x3

    aget v1, p1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->clamp(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    .line 213
    goto :goto_52

    .line 215
    :pswitch_37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Color does not have a single color to interpolate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :pswitch_3f
    aget v0, p1, v1

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v2, v4

    if-lez v0, :cond_49

    const/4 v1, 0x1

    :cond_49
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    .line 218
    goto :goto_52

    .line 204
    :pswitch_4c
    aget v0, p1, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    .line 205
    nop

    .line 223
    :goto_52
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_3f
        :pswitch_37
        :pswitch_19
        :pswitch_19
        :pswitch_4c
        :pswitch_14
        :pswitch_f
    .end packed-switch
.end method
