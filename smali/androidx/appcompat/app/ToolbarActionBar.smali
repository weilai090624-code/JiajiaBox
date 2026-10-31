.class Landroidx/appcompat/app/ToolbarActionBar;
.super Landroidx/appcompat/app/ActionBar;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;,
        Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;,
        Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;
    }
.end annotation


# instance fields
.field final mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

.field private mLastMenuVisibility:Z

.field final mMenuCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarMenuCallback;

.field private mMenuCallbackSet:Z

.field private final mMenuClicker:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

.field private final mMenuInvalidator:Ljava/lang/Runnable;

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field mToolbarMenuPrepared:Z

.field final mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .registers 6
    .param p1, "toolbar"    # Landroidx/appcompat/widget/Toolbar;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "windowCallback"    # Landroid/view/Window$Callback;

    .line 71
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Landroidx/appcompat/app/ToolbarActionBar$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/ToolbarActionBar$1;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Landroidx/appcompat/app/ToolbarActionBar$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/ToolbarActionBar$2;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuClicker:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    .line 72
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v0, Landroidx/appcompat/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/widget/ToolbarWidgetWrapper;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 75
    invoke-static {p3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window$Callback;

    iput-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 76
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p3}, Landroidx/appcompat/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 77
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuClicker:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 78
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p2}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuCallback:Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarMenuCallback;

    .line 81
    return-void
.end method

.method private getMenu()Landroid/view/Menu;
    .registers 4

    .line 545
    iget-boolean v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuCallbackSet:Z

    if-nez v0, :cond_16

    .line 546
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    new-instance v1, Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    new-instance v2, Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/ToolbarActionBar$MenuBuilderCallback;-><init>(Landroidx/appcompat/app/ToolbarActionBar;)V

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/DecorToolbar;->setMenuCallbacks(Landroidx/appcompat/view/menu/MenuPresenter$Callback;Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuCallbackSet:Z

    .line 550
    :cond_16
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;

    .line 497
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .registers 4
    .param p1, "tab"    # Landroidx/appcompat/app/ActionBar$Tab;

    .line 337
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;I)V
    .registers 5
    .param p1, "tab"    # Landroidx/appcompat/app/ActionBar$Tab;
    .param p2, "position"    # I

    .line 349
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;IZ)V
    .registers 6
    .param p1, "tab"    # Landroidx/appcompat/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .line 355
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;Z)V
    .registers 5
    .param p1, "tab"    # Landroidx/appcompat/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .line 343
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeOptionsMenu()Z
    .registers 2

    .line 431
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public collapseActionView()Z
    .registers 2

    .line 443
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 444
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->collapseActionView()V

    .line 445
    const/4 v0, 0x1

    return v0

    .line 447
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .registers 5
    .param p1, "isVisible"    # Z

    .line 507
    iget-boolean v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mLastMenuVisibility:Z

    if-ne p1, v0, :cond_5

    .line 508
    return-void

    .line 510
    :cond_5
    iput-boolean p1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mLastMenuVisibility:Z

    .line 512
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 513
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_1e

    .line 514
    iget-object v2, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 516
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .line 298
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    .line 326
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .registers 2

    .line 144
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 402
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .registers 2

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public getNavigationMode()I
    .registers 2

    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .registers 2

    .line 211
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectedTab()Landroidx/appcompat/app/ActionBar$Tab;
    .registers 3

    .line 385
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 308
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroidx/appcompat/app/ActionBar$Tab;
    .registers 4
    .param p1, "index"    # I

    .line 391
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTabCount()I
    .registers 2

    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 2

    .line 149
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 303
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .registers 3

    .line 416
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    .line 417
    return-void
.end method

.method public invalidateOptionsMenu()Z
    .registers 3

    .line 436
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 437
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 438
    const/4 v0, 0x1

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .line 421
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isTitleTruncated()Z
    .registers 2

    .line 154
    invoke-super {p0}, Landroidx/appcompat/app/ActionBar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public newTab()Landroidx/appcompat/app/ActionBar$Tab;
    .registers 3

    .line 331
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 189
    invoke-super {p0, p1}, Landroidx/appcompat/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    return-void
.end method

.method onDestroy()V
    .registers 3

    .line 492
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 493
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .line 479
    invoke-direct {p0}, Landroidx/appcompat/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 480
    .local v0, "menu":Landroid/view/Menu;
    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 482
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_f

    :cond_e
    const/4 v2, -0x1

    .line 481
    :goto_f
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 483
    .local v2, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    :goto_1c
    invoke-interface {v0, v4}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 484
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    return v1

    .line 486
    .end local v2    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_24
    return v1
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 471
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 472
    invoke-virtual {p0}, Landroidx/appcompat/app/ToolbarActionBar;->openOptionsMenu()Z

    .line 474
    :cond_a
    return v1
.end method

.method public openOptionsMenu()Z
    .registers 2

    .line 426
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method populateOptionsMenu()V
    .registers 6

    .line 451
    invoke-direct {p0}, Landroidx/appcompat/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 452
    .local v0, "menu":Landroid/view/Menu;
    instance-of v1, v0, Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/MenuBuilder;

    goto :goto_e

    :cond_d
    move-object v1, v2

    .line 453
    .local v1, "mb":Landroidx/appcompat/view/menu/MenuBuilder;
    :goto_e
    if-eqz v1, :cond_13

    .line 454
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 457
    :cond_13
    :try_start_13
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 458
    iget-object v3, p0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 459
    invoke-interface {v3, v4, v2, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 460
    :cond_27
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_30

    .line 463
    :cond_2a
    if-eqz v1, :cond_2f

    .line 464
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 467
    :cond_2f
    return-void

    .line 463
    :catchall_30
    move-exception v2

    if-eqz v1, :cond_36

    .line 464
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 466
    :cond_36
    throw v2
.end method

.method public removeAllTabs()V
    .registers 3

    .line 373
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;)V
    .registers 3
    .param p1, "listener"    # Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;

    .line 502
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 503
    return-void
.end method

.method public removeTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .registers 4
    .param p1, "tab"    # Landroidx/appcompat/app/ActionBar$Tab;

    .line 361
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeTabAt(I)V
    .registers 4
    .param p1, "position"    # I

    .line 367
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestFocus()Z
    .registers 3

    .line 236
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 237
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_13

    .line 238
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 239
    const/4 v1, 0x1

    return v1

    .line 241
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .registers 4
    .param p1, "tab"    # Landroidx/appcompat/app/ActionBar$Tab;

    .line 379
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Tabs are not supported in toolbar action bars"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 293
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    return-void
.end method

.method public setCustomView(I)V
    .registers 5
    .param p1, "resId"    # I

    .line 98
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 99
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/ToolbarActionBar;->setCustomView(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 85
    new-instance v0, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/ToolbarActionBar;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    .line 86
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroidx/appcompat/app/ActionBar$LayoutParams;

    .line 90
    if-eqz p1, :cond_5

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 94
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 175
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .registers 4
    .param p1, "showHomeAsUp"    # Z

    .line 278
    const/4 v0, 0x4

    if-eqz p1, :cond_5

    const/4 v1, 0x4

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 279
    return-void
.end method

.method public setDisplayOptions(I)V
    .registers 3
    .param p1, "options"    # I

    .line 257
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 258
    return-void
.end method

.method public setDisplayOptions(II)V
    .registers 7
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .line 262
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 263
    .local v0, "currentOptions":I
    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    and-int v2, p1, p2

    not-int v3, p2

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/DecorToolbar;->setDisplayOptions(I)V

    .line 264
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .registers 4
    .param p1, "showCustom"    # Z

    .line 288
    const/16 v0, 0x10

    if-eqz p1, :cond_7

    const/16 v1, 0x10

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 289
    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .registers 4
    .param p1, "showHome"    # Z

    .line 273
    const/4 v0, 0x2

    if-eqz p1, :cond_5

    const/4 v1, 0x2

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 274
    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .registers 4
    .param p1, "showTitle"    # Z

    .line 283
    const/16 v0, 0x8

    if-eqz p1, :cond_7

    const/16 v1, 0x8

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 284
    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .registers 3
    .param p1, "useLogo"    # Z

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/ToolbarActionBar;->setDisplayOptions(II)V

    .line 269
    return-void
.end method

.method public setElevation(F)V
    .registers 3
    .param p1, "elevation"    # F

    .line 139
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 140
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 179
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationContentDescription(I)V

    .line 180
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 169
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 164
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationIcon(I)V

    .line 165
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .line 159
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 160
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 135
    return-void
.end method

.method public setIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 104
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setIcon(I)V

    .line 105
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 109
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 110
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroidx/appcompat/app/ActionBar$OnNavigationListener;

    .line 194
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    new-instance v1, Landroidx/appcompat/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Landroidx/appcompat/app/NavItemSelectedListener;-><init>(Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 195
    return-void
.end method

.method public setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 114
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setLogo(I)V

    .line 115
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 120
    return-void
.end method

.method public setNavigationMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 318
    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    .line 321
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationMode(I)V

    .line 322
    return-void

    .line 319
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tabs not supported in this configuration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSelectedNavigationItem(I)V
    .registers 4
    .param p1, "position"    # I

    .line 199
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :pswitch_12
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    .line 202
    nop

    .line 207
    return-void

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 185
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 130
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 125
    return-void
.end method

.method public setSubtitle(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 251
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    if-eqz p1, :cond_f

    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-interface {v0, v1}, Landroidx/appcompat/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 252
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 246
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 247
    return-void
.end method

.method public setTitle(I)V
    .registers 4
    .param p1, "resId"    # I

    .line 226
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    if-eqz p1, :cond_f

    iget-object v1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-interface {v0, v1}, Landroidx/appcompat/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 221
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 222
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 231
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 232
    return-void
.end method

.method public show()V
    .registers 3

    .line 409
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    .line 410
    return-void
.end method
