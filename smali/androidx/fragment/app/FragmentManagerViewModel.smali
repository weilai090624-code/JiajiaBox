.class final Landroidx/fragment/app/FragmentManagerViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "FragmentManagerViewModel.java"


# static fields
.field private static final FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field private final mChildNonConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentManagerViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private mHasBeenCleared:Z

.field private mHasSavedSnapshot:Z

.field private mIsStateSaved:Z

.field private final mRetainedFragments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateAutomaticallySaved:Z

.field private final mViewModelStores:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/ViewModelStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroidx/fragment/app/FragmentManagerViewModel$1;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerViewModel$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/FragmentManagerViewModel;->FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 3
    .param p1, "stateAutomaticallySaved"    # Z

    .line 86
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mHasBeenCleared:Z

    .line 65
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mHasSavedSnapshot:Z

    .line 69
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    .line 87
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mStateAutomaticallySaved:Z

    .line 88
    return-void
.end method

.method private clearNonConfigStateInternal(Ljava/lang/String;)V
    .registers 5
    .param p1, "who"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManagerViewModel;

    .line 203
    .local v0, "childNonConfig":Landroidx/fragment/app/FragmentManagerViewModel;
    if-eqz v0, :cond_12

    .line 204
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerViewModel;->onCleared()V

    .line 205
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_12
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ViewModelStore;

    .line 209
    .local v1, "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    if-eqz v1, :cond_24

    .line 210
    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelStore;->clear()V

    .line 211
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_24
    return-void
.end method

.method static getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/fragment/app/FragmentManagerViewModel;
    .registers 3
    .param p0, "viewModelStore"    # Landroidx/lifecycle/ViewModelStore;

    .line 52
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    sget-object v1, Landroidx/fragment/app/FragmentManagerViewModel;->FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 54
    .local v0, "viewModelProvider":Landroidx/lifecycle/ViewModelProvider;
    const-class v1, Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerViewModel;

    return-object v1
.end method


# virtual methods
.method addRetainedFragment(Landroidx/fragment/app/Fragment;)V
    .registers 6
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 112
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    if-eqz v0, :cond_13

    .line 113
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 114
    const-string v0, "Ignoring addRetainedFragment as the state is already saved"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_12
    return-void

    .line 118
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 119
    return-void

    .line 121
    :cond_1e
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating retained Fragments: Added "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_41
    return-void
.end method

.method clearNonConfigState(Landroidx/fragment/app/Fragment;)V
    .registers 4
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 187
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing non-config state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_1f
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerViewModel;->clearNonConfigStateInternal(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method clearNonConfigState(Ljava/lang/String;)V
    .registers 4
    .param p1, "who"    # Ljava/lang/String;

    .line 194
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing non-config state for saved state of Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1f
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->clearNonConfigStateInternal(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 285
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 286
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 288
    :cond_12
    move-object v2, p1

    check-cast v2, Landroidx/fragment/app/FragmentManagerViewModel;

    .line 290
    .local v2, "that":Landroidx/fragment/app/FragmentManagerViewModel;
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object v4, v2, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    iget-object v4, v2, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    .line 291
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    iget-object v4, v2, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    .line 292
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    .line 290
    :goto_35
    return v0

    .line 286
    .end local v2    # "that":Landroidx/fragment/app/FragmentManagerViewModel;
    :cond_36
    :goto_36
    return v1
.end method

.method findRetainedFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3
    .param p1, "who"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;
    .registers 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 168
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManagerViewModel;

    .line 169
    .local v0, "childNonConfig":Landroidx/fragment/app/FragmentManagerViewModel;
    if-nez v0, :cond_1b

    .line 170
    new-instance v1, Landroidx/fragment/app/FragmentManagerViewModel;

    iget-boolean v2, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mStateAutomaticallySaved:Z

    invoke-direct {v1, v2}, Landroidx/fragment/app/FragmentManagerViewModel;-><init>(Z)V

    move-object v0, v1

    .line 171
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_1b
    return-object v0
.end method

.method getRetainedFragments()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getSnapshot()Landroidx/fragment/app/FragmentManagerNonConfig;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    .line 261
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 262
    return-object v1

    .line 264
    :cond_1a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    .local v0, "childNonConfigs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/fragment/app/FragmentManagerNonConfig;>;"
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 266
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/fragment/app/FragmentManagerViewModel;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManagerViewModel;->getSnapshot()Landroidx/fragment/app/FragmentManagerNonConfig;

    move-result-object v4

    .line 267
    .local v4, "childNonConfig":Landroidx/fragment/app/FragmentManagerNonConfig;
    if-eqz v4, :cond_4a

    .line 268
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/fragment/app/FragmentManagerViewModel;>;"
    .end local v4    # "childNonConfig":Landroidx/fragment/app/FragmentManagerNonConfig;
    :cond_4a
    goto :goto_29

    .line 272
    :cond_4b
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mHasSavedSnapshot:Z

    .line 273
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    .line 274
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 275
    return-object v1

    .line 277
    :cond_65
    new-instance v1, Landroidx/fragment/app/FragmentManagerNonConfig;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    .line 278
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentManagerNonConfig;-><init>(Ljava/util/Collection;Ljava/util/Map;Ljava/util/Map;)V

    .line 277
    return-object v1
.end method

.method getViewModelStore(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;
    .registers 5
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 178
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStore;

    .line 179
    .local v0, "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    if-nez v0, :cond_19

    .line 180
    new-instance v1, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v1}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    move-object v0, v1

    .line 181
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_19
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 297
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    .line 298
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 299
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 300
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method isCleared()Z
    .registers 2

    .line 108
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mHasBeenCleared:Z

    return v0
.end method

.method protected onCleared()V
    .registers 3

    .line 101
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCleared called for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mHasBeenCleared:Z

    .line 105
    return-void
.end method

.method removeRetainedFragment(Landroidx/fragment/app/Fragment;)V
    .registers 6
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 154
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    if-eqz v0, :cond_13

    .line 155
    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 156
    const-string v0, "Ignoring removeRetainedFragment as the state is already saved"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_12
    return-void

    .line 160
    :cond_13
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 161
    .local v0, "removed":Z
    :goto_20
    if-eqz v0, :cond_3e

    invoke-static {v2}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating retained Fragments: Removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_3e
    return-void
.end method

.method restoreFromSnapshot(Landroidx/fragment/app/FragmentManagerNonConfig;)V
    .registers 9
    .param p1, "nonConfig"    # Landroidx/fragment/app/FragmentManagerNonConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 224
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 225
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 226
    if-eqz p1, :cond_72

    .line 227
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/Collection;

    move-result-object v0

    .line 228
    .local v0, "fragments":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/fragment/app/Fragment;>;"
    if-eqz v0, :cond_31

    .line 229
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 230
    .local v2, "fragment":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_30

    .line 231
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object v4, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .end local v2    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_30
    goto :goto_1b

    .line 235
    :cond_31
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/Map;

    move-result-object v1

    .line 236
    .local v1, "childNonConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/fragment/app/FragmentManagerNonConfig;>;"
    if-eqz v1, :cond_67

    .line 238
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 239
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/fragment/app/FragmentManagerNonConfig;>;"
    new-instance v4, Landroidx/fragment/app/FragmentManagerViewModel;

    iget-boolean v5, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mStateAutomaticallySaved:Z

    invoke-direct {v4, v5}, Landroidx/fragment/app/FragmentManagerViewModel;-><init>(Z)V

    .line 241
    .local v4, "childViewModel":Landroidx/fragment/app/FragmentManagerViewModel;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentManagerNonConfig;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManagerViewModel;->restoreFromSnapshot(Landroidx/fragment/app/FragmentManagerNonConfig;)V

    .line 242
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/fragment/app/FragmentManagerNonConfig;>;"
    .end local v4    # "childViewModel":Landroidx/fragment/app/FragmentManagerViewModel;
    goto :goto_3f

    .line 245
    :cond_67
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManagerNonConfig;->getViewModelStores()Ljava/util/Map;

    move-result-object v2

    .line 246
    .local v2, "viewModelStores":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;>;"
    if-eqz v2, :cond_72

    .line 247
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 250
    .end local v0    # "fragments":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/fragment/app/Fragment;>;"
    .end local v1    # "childNonConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/fragment/app/FragmentManagerNonConfig;>;"
    .end local v2    # "viewModelStores":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;>;"
    :cond_72
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mHasSavedSnapshot:Z

    .line 251
    return-void
.end method

.method setIsStateSaved(Z)V
    .registers 2
    .param p1, "isStateSaved"    # Z

    .line 96
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mIsStateSaved:Z

    .line 97
    return-void
.end method

.method shouldDestroy(Landroidx/fragment/app/Fragment;)Z
    .registers 4
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 138
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 140
    return v1

    .line 142
    :cond_c
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mStateAutomaticallySaved:Z

    if-eqz v0, :cond_13

    .line 145
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mHasBeenCleared:Z

    return v0

    .line 149
    :cond_13
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mHasSavedSnapshot:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FragmentManagerViewModel{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string/jumbo v1, "} Fragments ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 310
    .local v1, "fragmentIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/fragment/app/Fragment;>;"
    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_3b

    .line 311
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 313
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 316
    :cond_3b
    const-string v2, ") Child Non Config ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 318
    .local v2, "childNonConfigIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4a
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 319
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 321
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 324
    :cond_63
    const-string v4, ") ViewModelStores ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v4, p0, Landroidx/fragment/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 326
    .local v4, "viewModelStoreIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_72
    :goto_72
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 327
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 329
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 332
    :cond_8b
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
