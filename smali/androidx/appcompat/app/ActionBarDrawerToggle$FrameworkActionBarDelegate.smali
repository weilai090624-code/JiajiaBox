.class Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameworkActionBarDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate$Api18Impl;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mSetIndicatorInfo:Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Landroid/app/Activity;

    .line 523
    return-void
.end method


# virtual methods
.method public getActionBarThemedContext()Landroid/content/Context;
    .registers 3

    .line 540
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 541
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_d

    .line 542
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    return-object v1

    .line 544
    :cond_d
    iget-object v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Landroid/app/Activity;

    return-object v1
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 527
    nop

    .line 528
    invoke-virtual {p0}, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x101030b

    filled-new-array {v1}, [I

    move-result-object v1

    const v2, 0x10102ce

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 531
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 532
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 533
    return-object v1
.end method

.method public isNavigationVisible()Z
    .registers 3

    .line 549
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 550
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_12

    .line 551
    invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 550
    :goto_13
    return v1
.end method

.method public setActionBarDescription(I)V
    .registers 3
    .param p1, "contentDescRes"    # I

    .line 572
    nop

    .line 573
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 574
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_c

    .line 575
    invoke-static {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate$Api18Impl;->setHomeActionContentDescription(Landroid/app/ActionBar;I)V

    .line 577
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_c
    nop

    .line 581
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .registers 4
    .param p1, "themeImage"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .line 556
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 557
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_f

    .line 558
    nop

    .line 559
    invoke-static {v0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate$Api18Impl;->setHomeAsUpIndicator(Landroid/app/ActionBar;Landroid/graphics/drawable/Drawable;)V

    .line 560
    invoke-static {v0, p2}, Landroidx/appcompat/app/ActionBarDrawerToggle$FrameworkActionBarDelegate$Api18Impl;->setHomeActionContentDescription(Landroid/app/ActionBar;I)V

    .line 568
    :cond_f
    return-void
.end method
