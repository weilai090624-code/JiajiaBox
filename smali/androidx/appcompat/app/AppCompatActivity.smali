.class public Landroidx/appcompat/app/AppCompatActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AppCompatActivity.java"

# interfaces
.implements Landroidx/appcompat/app/AppCompatCallback;
.implements Landroidx/core/app/TaskStackBuilder$SupportParentable;
.implements Landroidx/appcompat/app/ActionBarDrawerToggle$DelegateProvider;


# static fields
.field private static final DELEGATE_TAG:Ljava/lang/String; = "androidx:appcompat"


# instance fields
.field private mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 97
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->initDelegate()V

    .line 98
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "contentLayoutId"    # I

    .line 112
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentActivity;-><init>(I)V

    .line 113
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->initDelegate()V

    .line 114
    return-void
.end method

.method private initDelegate()V
    .registers 4

    .line 118
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/app/AppCompatActivity$1;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AppCompatActivity$1;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2, v1}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    .line 128
    new-instance v0, Landroidx/appcompat/app/AppCompatActivity$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AppCompatActivity$2;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    .line 137
    return-void
.end method

.method private initViewTreeOwners()V
    .registers 2

    .line 221
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/ViewTreeLifecycleOwner;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    .line 222
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/lifecycle/ViewTreeViewModelStoreOwner;->set(Landroid/view/View;Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 223
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 224
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/activity/ViewTreeOnBackPressedDispatcherOwner;->set(Landroid/view/View;Landroidx/activity/OnBackPressedDispatcherOwner;)V

    .line 225
    return-void
.end method

.method private performMenuItemShortcut(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 621
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_3e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 622
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 623
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3e

    .line 624
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 625
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 626
    .local v0, "currentWindow":Landroid/view/Window;
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 627
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 628
    .local v1, "decorView":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 629
    const/4 v2, 0x1

    return v2

    .line 633
    .end local v0    # "currentWindow":Landroid/view/Window;
    .end local v1    # "decorView":Landroid/view/View;
    :cond_3e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 214
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->initViewTreeOwners()V

    .line 215
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "newBase"    # Landroid/content/Context;

    .line 141
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->attachBaseContext2(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/fragment/app/FragmentActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 142
    return-void
.end method

.method public closeOptionsMenu()V
    .registers 4

    .line 655
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 656
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_17

    .line 657
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->closeOptionsMenu()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 658
    :cond_17
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->closeOptionsMenu()V

    .line 660
    :cond_1a
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 598
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 599
    .local v0, "keyCode":I
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 600
    .local v1, "actionBar":Landroidx/appcompat/app/ActionBar;
    const/16 v2, 0x52

    if-ne v0, v2, :cond_16

    if-eqz v1, :cond_16

    .line 601
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/ActionBar;->onMenuKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 602
    const/4 v2, 0x1

    return v2

    .line 604
    :cond_16
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 264
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Landroidx/appcompat/app/AppCompatDelegate;
    .registers 2

    .line 588
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-nez v0, :cond_a

    .line 589
    invoke-static {p0, p0}, Landroidx/appcompat/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroidx/appcompat/app/AppCompatCallback;)Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    .line 591
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->mDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    return-object v0
.end method

.method public getDrawerToggleDelegate()Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;
    .registers 2

    .line 558
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->getDrawerToggleDelegate()Landroidx/appcompat/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    .line 191
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 3

    .line 609
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_15

    invoke-static {}, Landroidx/appcompat/widget/VectorEnabledTintResources;->shouldBeUsed()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 610
    new-instance v0, Landroidx/appcompat/widget/VectorEnabledTintResources;

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/VectorEnabledTintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    .line 612
    :cond_15
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1e

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_20

    :cond_1e
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    :goto_20
    return-object v0
.end method

.method public getSupportActionBar()Landroidx/appcompat/app/ActionBar;
    .registers 2

    .line 165
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .registers 2

    .line 505
    invoke-static {p0}, Landroidx/core/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .registers 2

    .line 319
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 320
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 229
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 233
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 236
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_23

    .line 237
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 238
    .local v0, "currConfig":Landroid/content/res/Configuration;
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 239
    .local v1, "currMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 241
    .end local v0    # "currConfig":Landroid/content/res/Configuration;
    .end local v1    # "currMetrics":Landroid/util/DisplayMetrics;
    :cond_23
    return-void
.end method

.method public onContentChanged()V
    .registers 1

    .line 545
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->onSupportContentChanged()V

    .line 546
    return-void
.end method

.method public onCreateSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V
    .registers 2
    .param p1, "builder"    # Landroidx/core/app/TaskStackBuilder;

    .line 422
    invoke-virtual {p1, p0}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroidx/core/app/TaskStackBuilder;

    .line 423
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 283
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 284
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onDestroy()V

    .line 285
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 638
    invoke-direct {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->performMenuItemShortcut(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 639
    const/4 v0, 0x1

    return v0

    .line 641
    :cond_8
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLocalesChanged(Landroidx/core/os/LocaleListCompat;)V
    .registers 2
    .param p1, "locales"    # Landroidx/core/os/LocaleListCompat;

    .line 678
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 269
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 270
    const/4 v0, 0x1

    return v0

    .line 273
    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 274
    .local v0, "ab":Landroidx/appcompat/app/ActionBar;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_24

    if-eqz v0, :cond_24

    .line 275
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_24

    .line 276
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->onSupportNavigateUp()Z

    move-result v1

    return v1

    .line 278
    :cond_24
    const/4 v1, 0x0

    return v1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 4
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 569
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onNightModeChanged(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 669
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 580
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 581
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 152
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method protected onPostResume()V
    .registers 2

    .line 245
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPostResume()V

    .line 246
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onPostResume()V

    .line 247
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V
    .registers 2
    .param p1, "builder"    # Landroidx/core/app/TaskStackBuilder;

    .line 441
    return-void
.end method

.method protected onStart()V
    .registers 2

    .line 251
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 252
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onStart()V

    .line 253
    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 257
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 258
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->onStop()V

    .line 259
    return-void
.end method

.method public onSupportActionModeFinished(Landroidx/appcompat/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroidx/appcompat/view/ActionMode;

    .line 342
    return-void
.end method

.method public onSupportActionModeStarted(Landroidx/appcompat/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroidx/appcompat/view/ActionMode;

    .line 331
    return-void
.end method

.method public onSupportContentChanged()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 553
    return-void
.end method

.method public onSupportNavigateUp()Z
    .registers 4

    .line 467
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 469
    .local v0, "upIntent":Landroid/content/Intent;
    if-eqz v0, :cond_27

    .line 470
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 471
    invoke-static {p0}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v1

    .line 472
    .local v1, "b":Landroidx/core/app/TaskStackBuilder;
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V

    .line 473
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareSupportNavigateUpTaskStack(Landroidx/core/app/TaskStackBuilder;)V

    .line 474
    invoke-virtual {v1}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 477
    :try_start_19
    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 482
    goto :goto_21

    .line 478
    :catch_1d
    move-exception v2

    .line 481
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 483
    .end local v1    # "b":Landroidx/core/app/TaskStackBuilder;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_21
    goto :goto_25

    .line 486
    :cond_22
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->supportNavigateUpTo(Landroid/content/Intent;)V

    .line 488
    :goto_25
    const/4 v1, 0x1

    return v1

    .line 490
    :cond_27
    const/4 v1, 0x0

    return v1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .line 289
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 290
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 291
    return-void
.end method

.method public onWindowStartingSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroidx/appcompat/view/ActionMode$Callback;

    .line 356
    const/4 v0, 0x0

    return-object v0
.end method

.method public openOptionsMenu()V
    .registers 4

    .line 646
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 647
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_17

    .line 648
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->openOptionsMenu()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 649
    :cond_17
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->openOptionsMenu()V

    .line 651
    :cond_1a
    return-void
.end method

.method public setContentView(I)V
    .registers 3
    .param p1, "layoutResID"    # I

    .line 196
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->initViewTreeOwners()V

    .line 197
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(I)V

    .line 198
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 202
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->initViewTreeOwners()V

    .line 203
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    .line 204
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 208
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;->initViewTreeOwners()V

    .line 209
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    return-void
.end method

.method public setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V
    .registers 3
    .param p1, "toolbar"    # Landroidx/appcompat/widget/Toolbar;

    .line 185
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 186
    return-void
.end method

.method public setSupportProgress(I)V
    .registers 2
    .param p1, "progress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .registers 2
    .param p1, "indeterminate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 389
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .registers 2
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 382
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .registers 2
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 375
    return-void
.end method

.method public setTheme(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 146
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->setTheme(I)V

    .line 147
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setTheme(I)V

    .line 148
    return-void
.end method

.method public startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .registers 3
    .param p1, "callback"    # Landroidx/appcompat/view/ActionMode$Callback;

    .line 367
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .registers 2

    .line 314
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDelegate;->invalidateOptionsMenu()V

    .line 315
    return-void
.end method

.method public supportNavigateUpTo(Landroid/content/Intent;)V
    .registers 2
    .param p1, "upIntent"    # Landroid/content/Intent;

    .line 538
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 539
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .registers 3
    .param p1, "featureId"    # I

    .line 308
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .line 522
    invoke-static {p0, p1}, Landroidx/core/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
