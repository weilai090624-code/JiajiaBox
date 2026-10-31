.class Landroidx/appcompat/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatTextHelper$Api28Impl;,
        Landroidx/appcompat/widget/AppCompatTextHelper$Api21Impl;,
        Landroidx/appcompat/widget/AppCompatTextHelper$Api17Impl;,
        Landroidx/appcompat/widget/AppCompatTextHelper$Api24Impl;,
        Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;
    }
.end annotation


# static fields
.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final TEXT_FONT_WEIGHT_UNSPECIFIED:I = -0x1


# instance fields
.field private mAsyncFontPending:Z

.field private final mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

.field private mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

.field private mFontTypeface:Landroid/graphics/Typeface;

.field private mFontWeight:I

.field private mStyle:I

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 4
    .param p1, "view"    # Landroid/widget/TextView;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 81
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 82
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 83
    return-void
.end method

.method private applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "info"    # Landroidx/appcompat/widget/TintInfo;

    .line 544
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 545
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    .line 547
    :cond_d
    return-void
.end method

.method private static createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableManager"    # Landroidx/appcompat/widget/AppCompatDrawableManager;
    .param p2, "drawableId"    # I

    .line 551
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 552
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_11

    .line 553
    new-instance v1, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v1}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    .line 554
    .local v1, "tintInfo":Landroidx/appcompat/widget/TintInfo;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 555
    iput-object v0, v1, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 556
    return-object v1

    .line 558
    .end local v1    # "tintInfo":Landroidx/appcompat/widget/TintInfo;
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method private setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 13
    .param p1, "drawableLeft"    # Landroid/graphics/drawable/Drawable;
    .param p2, "drawableTop"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRight"    # Landroid/graphics/drawable/Drawable;
    .param p4, "drawableBottom"    # Landroid/graphics/drawable/Drawable;
    .param p5, "drawableStart"    # Landroid/graphics/drawable/Drawable;
    .param p6, "drawableEnd"    # Landroid/graphics/drawable/Drawable;

    .line 675
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez p5, :cond_5f

    if-eqz p6, :cond_a

    goto/16 :goto_5f

    .line 682
    :cond_a
    if-nez p1, :cond_15

    if-nez p2, :cond_15

    if-nez p3, :cond_15

    if-eqz p4, :cond_13

    goto :goto_15

    :cond_13
    :goto_13
    goto/16 :goto_83

    .line 685
    :cond_15
    :goto_15
    nop

    .line 686
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v4}, Landroidx/appcompat/widget/AppCompatTextHelper$Api17Impl;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 687
    .local v4, "existingRel":[Landroid/graphics/drawable/Drawable;
    aget-object v5, v4, v3

    if-nez v5, :cond_49

    aget-object v5, v4, v2

    if-eqz v5, :cond_25

    goto :goto_49

    .line 695
    .end local v4    # "existingRel":[Landroid/graphics/drawable/Drawable;
    :cond_25
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 696
    .local v4, "existingAbs":[Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 697
    if-eqz p1, :cond_31

    move-object v3, p1

    goto :goto_33

    :cond_31
    aget-object v3, v4, v3

    .line 698
    :goto_33
    if-eqz p2, :cond_37

    move-object v1, p2

    goto :goto_39

    :cond_37
    aget-object v1, v4, v1

    .line 699
    :goto_39
    if-eqz p3, :cond_3d

    move-object v2, p3

    goto :goto_3f

    :cond_3d
    aget-object v2, v4, v2

    .line 700
    :goto_3f
    if-eqz p4, :cond_43

    move-object v0, p4

    goto :goto_45

    :cond_43
    aget-object v0, v4, v0

    .line 696
    :goto_45
    invoke-virtual {v5, v3, v1, v2, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_83

    .line 688
    .local v4, "existingRel":[Landroid/graphics/drawable/Drawable;
    :cond_49
    :goto_49
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    aget-object v3, v4, v3

    .line 689
    if-eqz p2, :cond_51

    move-object v1, p2

    goto :goto_53

    :cond_51
    aget-object v1, v4, v1

    :goto_53
    aget-object v2, v4, v2

    .line 690
    if-eqz p4, :cond_59

    move-object v0, p4

    goto :goto_5b

    :cond_59
    aget-object v0, v4, v0

    .line 688
    :goto_5b
    invoke-static {v5, v3, v1, v2, v0}, Landroidx/appcompat/widget/AppCompatTextHelper$Api17Impl;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 691
    return-void

    .line 676
    .end local v4    # "existingRel":[Landroid/graphics/drawable/Drawable;
    :cond_5f
    :goto_5f
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v4}, Landroidx/appcompat/widget/AppCompatTextHelper$Api17Impl;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 677
    .restart local v4    # "existingRel":[Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 678
    if-eqz p5, :cond_6b

    move-object v3, p5

    goto :goto_6d

    :cond_6b
    aget-object v3, v4, v3

    .line 679
    :goto_6d
    if-eqz p2, :cond_71

    move-object v1, p2

    goto :goto_73

    :cond_71
    aget-object v1, v4, v1

    .line 680
    :goto_73
    if-eqz p6, :cond_77

    move-object v2, p6

    goto :goto_79

    :cond_77
    aget-object v2, v4, v2

    .line 681
    :goto_79
    if-eqz p4, :cond_7d

    move-object v0, p4

    goto :goto_7f

    :cond_7d
    aget-object v0, v4, v0

    .line 677
    :goto_7f
    invoke-static {v5, v3, v1, v2, v0}, Landroidx/appcompat/widget/AppCompatTextHelper$Api17Impl;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .end local v4    # "existingRel":[Landroid/graphics/drawable/Drawable;
    goto :goto_13

    .line 703
    :goto_83
    return-void
.end method

.method private setCompoundTints()V
    .registers 2

    .line 663
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 664
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 665
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 666
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 667
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 668
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 669
    return-void
.end method

.method private setTextSizeInternal(IF)V
    .registers 4
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 592
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    .line 593
    return-void
.end method

.method private updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "a"    # Landroidx/appcompat/widget/TintTypedArray;

    .line 345
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_25

    .line 348
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textFontWeight:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 350
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v0, v1, :cond_25

    .line 351
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v2

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 355
    :cond_25
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_5b

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 356
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_5b

    .line 418
    :cond_37
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 420
    iput-boolean v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    .line 421
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    .line 422
    .local v0, "typefaceIndex":I
    packed-switch v0, :pswitch_data_e8

    goto :goto_5a

    .line 432
    :pswitch_4b
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_5a

    .line 428
    :pswitch_50
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 429
    goto :goto_5a

    .line 424
    :pswitch_55
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 425
    nop

    .line 436
    .end local v0    # "typefaceIndex":I
    :cond_5a
    :goto_5a
    return-void

    .line 357
    :cond_5b
    :goto_5b
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 358
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 359
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    goto :goto_6b

    .line 360
    :cond_69
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    :goto_6b
    nop

    .line 361
    .local v0, "fontFamilyId":I
    iget v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 362
    .local v5, "fontWeight":I
    iget v6, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 363
    .local v6, "style":I
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v7

    if-nez v7, :cond_b8

    .line 364
    new-instance v7, Ljava/lang/ref/WeakReference;

    iget-object v8, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 365
    .local v7, "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextHelper$1;

    invoke-direct {v8, p0, v5, v6, v7}, Landroidx/appcompat/widget/AppCompatTextHelper$1;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;IILjava/lang/ref/WeakReference;)V

    .line 384
    .local v8, "replyCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    :try_start_82
    iget v9, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v9, v8}, Landroidx/appcompat/widget/TintTypedArray;->getFont(IILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 385
    .local v9, "typeface":Landroid/graphics/Typeface;
    if-eqz v9, :cond_ab

    .line 386
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v3, :cond_a9

    iget v10, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v10, v1, :cond_a9

    .line 388
    nop

    .line 389
    invoke-static {v9, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v10

    iget v11, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    iget v12, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_a1

    const/4 v12, 0x1

    goto :goto_a2

    :cond_a1
    const/4 v12, 0x0

    .line 388
    :goto_a2
    invoke-static {v10, v11, v12}, Landroidx/appcompat/widget/AppCompatTextHelper$Api28Impl;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v10

    iput-object v10, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_ab

    .line 392
    :cond_a9
    iput-object v9, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 396
    :cond_ab
    :goto_ab
    iget-object v10, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v10, :cond_b1

    const/4 v10, 0x1

    goto :goto_b2

    :cond_b1
    const/4 v10, 0x0

    :goto_b2
    iput-boolean v10, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z
    :try_end_b4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_82 .. :try_end_b4} :catch_b7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_82 .. :try_end_b4} :catch_b5

    .line 399
    .end local v9    # "typeface":Landroid/graphics/Typeface;
    goto :goto_b8

    .line 397
    :catch_b5
    move-exception v9

    goto :goto_b8

    :catch_b7
    move-exception v9

    .line 401
    .end local v7    # "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    .end local v8    # "replyCallback":Landroidx/core/content/res/ResourcesCompat$FontCallback;
    :cond_b8
    :goto_b8
    iget-object v7, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez v7, :cond_e7

    .line 403
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 404
    .local v7, "fontFamilyName":Ljava/lang/String;
    if-eqz v7, :cond_e7

    .line 405
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v3, :cond_df

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v3, v1, :cond_df

    .line 407
    nop

    .line 408
    invoke-static {v7, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    iget v8, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_d8

    const/4 v2, 0x1

    .line 407
    :cond_d8
    invoke-static {v1, v3, v2}, Landroidx/appcompat/widget/AppCompatTextHelper$Api28Impl;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_e7

    .line 411
    :cond_df
    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-static {v7, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 415
    .end local v7    # "fontFamilyName":Ljava/lang/String;
    :cond_e7
    :goto_e7
    return-void

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_55
        :pswitch_50
        :pswitch_4b
    .end packed-switch
.end method


# virtual methods
.method applyCompoundDrawablesTints()V
    .registers 6

    .line 526
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_36

    .line 528
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 529
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 530
    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 531
    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 532
    const/4 v3, 0x3

    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 534
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_36
    nop

    .line 535
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_3f

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_53

    .line 536
    :cond_3f
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextHelper$Api17Impl;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 537
    .restart local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v2, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 538
    aget-object v1, v0, v1

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v1, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 541
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_53
    return-void
.end method

.method autoSizeText()V
    .registers 2

    .line 582
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    .line 583
    return-void
.end method

.method getAutoSizeMaxTextSize()I
    .registers 2

    .line 627
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeMinTextSize()I
    .registers 2

    .line 623
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeStepGranularity()I
    .registers 2

    .line 619
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v0

    return v0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .registers 2

    .line 631
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0
.end method

.method getAutoSizeTextType()I
    .registers 2

    .line 615
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v0

    return v0
.end method

.method getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 636
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 650
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method isAutoSizeEnabled()Z
    .registers 2

    .line 588
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v0

    return v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 39
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 87
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 88
    .local v10, "context":Landroid/content/Context;
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v11

    .line 91
    .local v11, "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    sget-object v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    const/4 v12, 0x0

    invoke-static {v10, v8, v0, v9, v12}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v13

    .line 93
    .local v13, "a":Landroidx/appcompat/widget/TintTypedArray;
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    .line 94
    invoke-virtual {v13}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v4

    .line 93
    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 97
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/4 v14, -0x1

    invoke-virtual {v13, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v15

    .line 99
    .local v15, "ap":I
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 100
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 101
    invoke-virtual {v13, v0, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 100
    invoke-static {v10, v11, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 103
    :cond_48
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 104
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 105
    invoke-virtual {v13, v0, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 104
    invoke-static {v10, v11, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 107
    :cond_5c
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 108
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 109
    invoke-virtual {v13, v0, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 108
    invoke-static {v10, v11, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 111
    :cond_70
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 112
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 113
    invoke-virtual {v13, v0, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 112
    invoke-static {v10, v11, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 116
    :cond_84
    nop

    .line 117
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 118
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    .line 119
    invoke-virtual {v13, v0, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 118
    invoke-static {v10, v11, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 121
    :cond_99
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v13, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 122
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    .line 123
    invoke-virtual {v13, v0, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 122
    invoke-static {v10, v11, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v0

    iput-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 127
    :cond_ad
    invoke-virtual {v13}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 132
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 133
    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v6, v0, Landroid/text/method/PasswordTransformationMethod;

    .line 134
    .local v6, "hasPwdTm":Z
    const/4 v0, 0x0

    .line 135
    .local v0, "allCaps":Z
    const/4 v1, 0x0

    .line 136
    .local v1, "allCapsSet":Z
    const/4 v2, 0x0

    .line 137
    .local v2, "textColor":Landroid/content/res/ColorStateList;
    const/4 v3, 0x0

    .line 138
    .local v3, "textColorHint":Landroid/content/res/ColorStateList;
    const/4 v4, 0x0

    .line 139
    .local v4, "textColorLink":Landroid/content/res/ColorStateList;
    const/4 v5, 0x0

    .line 140
    .local v5, "fontVariation":Ljava/lang/String;
    const/16 v16, 0x0

    .line 143
    .local v16, "localeListString":Ljava/lang/String;
    if-eq v15, v14, :cond_134

    .line 144
    sget-object v14, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v10, v15, v14}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v13

    .line 145
    if-nez v6, :cond_da

    sget v14, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v14

    if-eqz v14, :cond_da

    .line 146
    const/4 v1, 0x1

    .line 147
    sget v14, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v12, 0x0

    invoke-virtual {v13, v14, v12}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 150
    :cond_da
    invoke-direct {v7, v10, v13}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 151
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-ge v12, v14, :cond_10d

    .line 154
    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v13, v12}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_f1

    .line 155
    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v13, v12}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 157
    :cond_f1
    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v13, v12}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_ff

    .line 158
    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v13, v12}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 161
    :cond_ff
    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v13, v12}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_10d

    .line 162
    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v13, v12}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 166
    :cond_10d
    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v13, v12}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_11d

    .line 167
    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v13, v12}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v12

    .line 169
    :cond_11d
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1a

    if-lt v12, v14, :cond_131

    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 170
    invoke-virtual {v13, v12}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_131

    .line 171
    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v13, v12}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 173
    :cond_131
    invoke-virtual {v13}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 177
    :cond_134
    sget-object v12, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    const/4 v14, 0x0

    invoke-static {v10, v8, v12, v9, v14}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v12

    .line 179
    .end local v13    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .local v12, "a":Landroidx/appcompat/widget/TintTypedArray;
    if-nez v6, :cond_14f

    sget v13, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_14f

    .line 180
    const/4 v1, 0x1

    .line 181
    sget v13, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    move v13, v0

    move v14, v1

    goto :goto_151

    .line 183
    :cond_14f
    move v13, v0

    move v14, v1

    .end local v0    # "allCaps":Z
    .end local v1    # "allCapsSet":Z
    .local v13, "allCaps":Z
    .local v14, "allCapsSet":Z
    :goto_151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_18d

    .line 186
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_165

    .line 187
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 189
    :cond_165
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 190
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 193
    :cond_173
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_187

    .line 194
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    move-object/from16 v35, v4

    move-object v4, v2

    move-object/from16 v2, v35

    goto :goto_192

    .line 193
    :cond_187
    move-object/from16 v35, v4

    move-object v4, v2

    move-object/from16 v2, v35

    goto :goto_192

    .line 183
    :cond_18d
    move-object/from16 v35, v4

    move-object v4, v2

    move-object/from16 v2, v35

    .line 198
    .local v2, "textColorLink":Landroid/content/res/ColorStateList;
    .local v4, "textColor":Landroid/content/res/ColorStateList;
    :goto_192
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1a3

    .line 199
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_1a5

    .line 198
    :cond_1a3
    move-object/from16 v1, v16

    .line 202
    .end local v16    # "localeListString":Ljava/lang/String;
    .local v1, "localeListString":Ljava/lang/String;
    :goto_1a5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v16, v5

    const/16 v5, 0x1a

    .end local v5    # "fontVariation":Ljava/lang/String;
    .local v16, "fontVariation":Ljava/lang/String;
    if-lt v0, v5, :cond_1bc

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 203
    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1bc

    .line 204
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v16    # "fontVariation":Ljava/lang/String;
    .restart local v5    # "fontVariation":Ljava/lang/String;
    goto :goto_1be

    .line 207
    .end local v5    # "fontVariation":Ljava/lang/String;
    .restart local v16    # "fontVariation":Ljava/lang/String;
    :cond_1bc
    move-object/from16 v5, v16

    .end local v16    # "fontVariation":Ljava/lang/String;
    .restart local v5    # "fontVariation":Ljava/lang/String;
    :goto_1be
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v16, v15

    .end local v15    # "ap":I
    .local v16, "ap":I
    const/16 v15, 0x1c

    if-lt v0, v15, :cond_1e7

    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 208
    invoke-virtual {v12, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1e4

    .line 209
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v15, -0x1

    invoke-virtual {v12, v0, v15}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-nez v0, :cond_1e1

    .line 210
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v15, 0x0

    move-object/from16 v18, v11

    const/4 v11, 0x0

    .end local v11    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    .local v18, "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    invoke-virtual {v0, v11, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1e9

    .line 209
    .end local v18    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    .restart local v11    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :cond_1e1
    move-object/from16 v18, v11

    .end local v11    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    .restart local v18    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    goto :goto_1e9

    .line 208
    .end local v18    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    .restart local v11    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :cond_1e4
    move-object/from16 v18, v11

    .end local v11    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    .restart local v18    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    goto :goto_1e9

    .line 207
    .end local v18    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    .restart local v11    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :cond_1e7
    move-object/from16 v18, v11

    .line 214
    .end local v11    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    .restart local v18    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :goto_1e9
    invoke-direct {v7, v10, v12}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 215
    invoke-virtual {v12}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 217
    if-eqz v4, :cond_1f6

    .line 218
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 220
    :cond_1f6
    if-eqz v3, :cond_1fd

    .line 221
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 223
    :cond_1fd
    if-eqz v2, :cond_204

    .line 224
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 226
    :cond_204
    if-nez v6, :cond_20b

    if-eqz v14, :cond_20b

    .line 227
    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 229
    :cond_20b
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_225

    .line 230
    iget v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    const/4 v11, -0x1

    if-ne v0, v11, :cond_21e

    .line 231
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v11, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    iget v15, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v0, v11, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_225

    .line 233
    :cond_21e
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v11, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 236
    :cond_225
    :goto_225
    if-eqz v5, :cond_22c

    .line 237
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v0, v5}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->setFontVariationSettings(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 239
    :cond_22c
    if-eqz v1, :cond_251

    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v0, v11, :cond_23e

    .line 241
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1}, Landroidx/appcompat/widget/AppCompatTextHelper$Api24Impl;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v11

    invoke-static {v0, v11}, Landroidx/appcompat/widget/AppCompatTextHelper$Api24Impl;->setTextLocales(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    goto :goto_251

    .line 242
    :cond_23e
    nop

    .line 244
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    aget-object v0, v0, v11

    .line 245
    .local v0, "firstLanTag":Ljava/lang/String;
    iget-object v11, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextHelper$Api21Impl;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v15

    invoke-static {v11, v15}, Landroidx/appcompat/widget/AppCompatTextHelper$Api17Impl;->setTextLocale(Landroid/widget/TextView;Ljava/util/Locale;)V

    .line 249
    .end local v0    # "firstLanTag":Ljava/lang/String;
    :cond_251
    :goto_251
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, v8, v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 251
    sget-boolean v0, Landroidx/appcompat/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_2b2

    .line 253
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v0

    if-eqz v0, :cond_2ab

    .line 255
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 256
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    .line 257
    .local v0, "autoSizeTextSizesInPx":[I
    array-length v11, v0

    if-lez v11, :cond_2a4

    .line 258
    iget-object v11, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v11}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->getAutoSizeStepGranularity(Landroid/widget/TextView;)I

    move-result v11

    int-to-float v11, v11

    const/high16 v15, -0x40800000    # -1.0f

    cmpl-float v11, v11, v15

    if-eqz v11, :cond_297

    .line 262
    iget-object v11, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v15, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 263
    invoke-virtual {v15}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v15

    move-object/from16 v20, v1

    .end local v1    # "localeListString":Ljava/lang/String;
    .local v20, "localeListString":Ljava/lang/String;
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 264
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v1

    move-object/from16 v21, v2

    .end local v2    # "textColorLink":Landroid/content/res/ColorStateList;
    .local v21, "textColorLink":Landroid/content/res/ColorStateList;
    iget-object v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 265
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v2

    .line 262
    move-object/from16 v22, v3

    const/4 v3, 0x0

    .end local v3    # "textColorHint":Landroid/content/res/ColorStateList;
    .local v22, "textColorHint":Landroid/content/res/ColorStateList;
    invoke-static {v11, v15, v1, v2, v3}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    goto :goto_2b8

    .line 268
    .end local v20    # "localeListString":Ljava/lang/String;
    .end local v21    # "textColorLink":Landroid/content/res/ColorStateList;
    .end local v22    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v1    # "localeListString":Ljava/lang/String;
    .restart local v2    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v3    # "textColorHint":Landroid/content/res/ColorStateList;
    :cond_297
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    const/4 v3, 0x0

    .end local v1    # "localeListString":Ljava/lang/String;
    .end local v2    # "textColorLink":Landroid/content/res/ColorStateList;
    .end local v3    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v20    # "localeListString":Ljava/lang/String;
    .restart local v21    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v22    # "textColorHint":Landroid/content/res/ColorStateList;
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v0, v3}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V

    goto :goto_2b8

    .line 257
    .end local v20    # "localeListString":Ljava/lang/String;
    .end local v21    # "textColorLink":Landroid/content/res/ColorStateList;
    .end local v22    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v1    # "localeListString":Ljava/lang/String;
    .restart local v2    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v3    # "textColorHint":Landroid/content/res/ColorStateList;
    :cond_2a4
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    .end local v1    # "localeListString":Ljava/lang/String;
    .end local v2    # "textColorLink":Landroid/content/res/ColorStateList;
    .end local v3    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v20    # "localeListString":Ljava/lang/String;
    .restart local v21    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v22    # "textColorHint":Landroid/content/res/ColorStateList;
    goto :goto_2b8

    .line 253
    .end local v0    # "autoSizeTextSizesInPx":[I
    .end local v20    # "localeListString":Ljava/lang/String;
    .end local v21    # "textColorLink":Landroid/content/res/ColorStateList;
    .end local v22    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v1    # "localeListString":Ljava/lang/String;
    .restart local v2    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v3    # "textColorHint":Landroid/content/res/ColorStateList;
    :cond_2ab
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    .end local v1    # "localeListString":Ljava/lang/String;
    .end local v2    # "textColorLink":Landroid/content/res/ColorStateList;
    .end local v3    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v20    # "localeListString":Ljava/lang/String;
    .restart local v21    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v22    # "textColorHint":Landroid/content/res/ColorStateList;
    goto :goto_2b8

    .line 251
    .end local v20    # "localeListString":Ljava/lang/String;
    .end local v21    # "textColorLink":Landroid/content/res/ColorStateList;
    .end local v22    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v1    # "localeListString":Ljava/lang/String;
    .restart local v2    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v3    # "textColorHint":Landroid/content/res/ColorStateList;
    :cond_2b2
    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    .line 276
    .end local v1    # "localeListString":Ljava/lang/String;
    .end local v2    # "textColorLink":Landroid/content/res/ColorStateList;
    .end local v3    # "textColorHint":Landroid/content/res/ColorStateList;
    .restart local v20    # "localeListString":Ljava/lang/String;
    .restart local v21    # "textColorLink":Landroid/content/res/ColorStateList;
    .restart local v22    # "textColorHint":Landroid/content/res/ColorStateList;
    :goto_2b8
    sget-object v0, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-static {v10, v8, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v11

    .line 279
    .end local v12    # "a":Landroidx/appcompat/widget/TintTypedArray;
    .local v11, "a":Landroidx/appcompat/widget/TintTypedArray;
    const/4 v0, 0x0

    .local v0, "drawableLeft":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, "drawableTop":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 280
    .local v2, "drawableRight":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, "drawableBottom":Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    .local v12, "drawableStart":Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    .line 281
    .local v15, "drawableEnd":Landroid/graphics/drawable/Drawable;
    move-object/from16 v17, v0

    .end local v0    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .local v17, "drawableLeft":Landroid/graphics/drawable/Drawable;
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableLeftCompat:I

    move-object/from16 v23, v1

    const/4 v1, -0x1

    .end local v1    # "drawableTop":Landroid/graphics/drawable/Drawable;
    .local v23, "drawableTop":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 283
    .local v0, "drawableLeftId":I
    if-eq v0, v1, :cond_2d8

    .line 284
    move-object/from16 v1, v18

    .end local v18    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    .local v1, "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    invoke-virtual {v1, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    goto :goto_2da

    .line 283
    .end local v1    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    .restart local v18    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :cond_2d8
    move-object/from16 v1, v18

    .line 286
    .end local v18    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    .restart local v1    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    :goto_2da
    move/from16 v18, v0

    .end local v0    # "drawableLeftId":I
    .local v18, "drawableLeftId":I
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTopCompat:I

    move-object/from16 v24, v2

    const/4 v2, -0x1

    .end local v2    # "drawableRight":Landroid/graphics/drawable/Drawable;
    .local v24, "drawableRight":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 288
    .local v0, "drawableTopId":I
    if-eq v0, v2, :cond_2ed

    .line 289
    invoke-virtual {v1, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v23, v19

    .line 291
    :cond_2ed
    move/from16 v25, v0

    .end local v0    # "drawableTopId":I
    .local v25, "drawableTopId":I
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableRightCompat:I

    invoke-virtual {v11, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 293
    .local v0, "drawableRightId":I
    if-eq v0, v2, :cond_2fd

    .line 294
    invoke-virtual {v1, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    move-object/from16 v24, v19

    .line 296
    :cond_2fd
    move/from16 v26, v0

    .end local v0    # "drawableRightId":I
    .local v26, "drawableRightId":I
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableBottomCompat:I

    invoke-virtual {v11, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 298
    .local v0, "drawableBottomId":I
    if-eq v0, v2, :cond_30e

    .line 299
    invoke-virtual {v1, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v27, v3

    goto :goto_310

    .line 298
    :cond_30e
    move-object/from16 v27, v3

    .line 301
    .end local v3    # "drawableBottom":Landroid/graphics/drawable/Drawable;
    .local v27, "drawableBottom":Landroid/graphics/drawable/Drawable;
    :goto_310
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableStartCompat:I

    invoke-virtual {v11, v3, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 303
    .local v3, "drawableStartId":I
    if-eq v3, v2, :cond_31c

    .line 304
    invoke-virtual {v1, v10, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 306
    :cond_31c
    move/from16 v28, v0

    .end local v0    # "drawableBottomId":I
    .local v28, "drawableBottomId":I
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableEndCompat:I

    invoke-virtual {v11, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 308
    .local v0, "drawableEndId":I
    if-eq v0, v2, :cond_32a

    .line 309
    invoke-virtual {v1, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 311
    :cond_32a
    move/from16 v29, v0

    .end local v0    # "drawableEndId":I
    .local v29, "drawableEndId":I
    move-object/from16 v0, p0

    move-object/from16 v30, v20

    move-object/from16 v20, v1

    .end local v1    # "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    .local v20, "drawableManager":Landroidx/appcompat/widget/AppCompatDrawableManager;
    .local v30, "localeListString":Ljava/lang/String;
    move-object/from16 v1, v17

    move-object/from16 v2, v23

    move/from16 v31, v3

    .end local v3    # "drawableStartId":I
    .local v31, "drawableStartId":I
    move-object/from16 v3, v24

    move-object/from16 v32, v4

    .end local v4    # "textColor":Landroid/content/res/ColorStateList;
    .local v32, "textColor":Landroid/content/res/ColorStateList;
    move-object/from16 v4, v27

    move-object/from16 v33, v5

    .end local v5    # "fontVariation":Ljava/lang/String;
    .local v33, "fontVariation":Ljava/lang/String;
    move-object v5, v12

    move/from16 v34, v6

    .end local v6    # "hasPwdTm":Z
    .local v34, "hasPwdTm":Z
    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 314
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_35a

    .line 315
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 317
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 319
    .end local v0    # "tintList":Landroid/content/res/ColorStateList;
    :cond_35a
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    invoke-virtual {v11, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_373

    .line 320
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    .line 321
    const/4 v1, -0x1

    invoke-virtual {v11, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    .line 320
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 322
    .local v0, "tintMode":Landroid/graphics/PorterDuff$Mode;
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 325
    .end local v0    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_373
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    const/4 v1, -0x1

    invoke-virtual {v11, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 327
    .local v0, "firstBaselineToTopHeight":I
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v11, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 329
    .local v2, "lastBaselineToBottomHeight":I
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    invoke-virtual {v11, v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 332
    .local v3, "lineHeight":I
    invoke-virtual {v11}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 333
    if-eq v0, v1, :cond_390

    .line 334
    iget-object v4, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v4, v0}, Landroidx/core/widget/TextViewCompat;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    .line 336
    :cond_390
    if-eq v2, v1, :cond_397

    .line 337
    iget-object v4, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v4, v2}, Landroidx/core/widget/TextViewCompat;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    .line 339
    :cond_397
    if-eq v3, v1, :cond_39e

    .line 340
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroidx/core/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    .line 342
    :cond_39e
    return-void
.end method

.method onAsyncTypefaceReceived(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .registers 6
    .param p2, "typeface"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .line 440
    .local p1, "textViewWeak":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/TextView;>;"
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    if-eqz v0, :cond_24

    .line 441
    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 442
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 443
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_24

    .line 444
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 445
    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 446
    .local v1, "style":I
    new-instance v2, Landroidx/appcompat/widget/AppCompatTextHelper$2;

    invoke-direct {v2, p0, v0, p2, v1}, Landroidx/appcompat/widget/AppCompatTextHelper$2;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 452
    .end local v1    # "style":I
    goto :goto_24

    .line 453
    :cond_1f
    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 457
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_24
    :goto_24
    return-void
.end method

.method onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 564
    sget-boolean v0, Landroidx/appcompat/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_7

    .line 565
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->autoSizeText()V

    .line 567
    :cond_7
    return-void
.end method

.method onSetCompoundDrawables()V
    .registers 1

    .line 522
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 523
    return-void
.end method

.method onSetTextAppearance(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 460
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    .line 462
    .local v0, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 467
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 469
    :cond_18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v1, v3, :cond_5d

    .line 472
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 473
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 474
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 475
    .local v1, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_33

    .line 476
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 479
    .end local v1    # "textColor":Landroid/content/res/ColorStateList;
    :cond_33
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 480
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    .line 481
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 482
    .local v1, "textColorLink":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_48

    .line 483
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 486
    .end local v1    # "textColorLink":Landroid/content/res/ColorStateList;
    :cond_48
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 487
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    .line 488
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 489
    .local v1, "textColorHint":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_5d

    .line 490
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 495
    .end local v1    # "textColorHint":Landroid/content/res/ColorStateList;
    :cond_5d
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 496
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-nez v1, :cond_74

    .line 497
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 501
    :cond_74
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 503
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_92

    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 504
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 505
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "fontVariation":Ljava/lang/String;
    if-eqz v1, :cond_92

    .line 508
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v2, v1}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->setFontVariationSettings(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 511
    .end local v1    # "fontVariation":Ljava/lang/String;
    :cond_92
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 512
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_a2

    .line 513
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 515
    :cond_a2
    return-void
.end method

.method populateSurroundingTextIfNeeded(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "inputConnection"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 721
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_f

    if-eqz p2, :cond_f

    .line 722
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setInitialSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 724
    :cond_f
    return-void
.end method

.method setAllCaps(Z)V
    .registers 3
    .param p1, "allCaps"    # Z

    .line 518
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 519
    return-void
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .registers 6
    .param p1, "autoSizeMinTextSize"    # I
    .param p2, "autoSizeMaxTextSize"    # I
    .param p3, "autoSizeStepGranularity"    # I
    .param p4, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 604
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    .line 606
    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .registers 4
    .param p1, "presetSizes"    # [I
    .param p2, "unit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 610
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 611
    return-void
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .registers 3
    .param p1, "autoSizeTextType"    # I

    .line 596
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeWithDefaults(I)V

    .line 597
    return-void
.end method

.method setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 640
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_b

    .line 641
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 643
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 644
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz p1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    iput-boolean v1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 645
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundTints()V

    .line 646
    return-void
.end method

.method setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 654
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_b

    .line 655
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 657
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 658
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz p1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    iput-boolean v1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 659
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundTints()V

    .line 660
    return-void
.end method

.method setTextSize(IF)V
    .registers 4
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .line 572
    sget-boolean v0, Landroidx/appcompat/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_d

    .line 573
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 574
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextHelper;->setTextSizeInternal(IF)V

    .line 577
    :cond_d
    return-void
.end method
