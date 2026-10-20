.class public abstract Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;
.super Landroidx/fragment/app/Fragment;
.source "MaterialAboutFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment$ListTask;
    }
.end annotation


# instance fields
.field private adapter:Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;

.field private list:Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 27
    new-instance v0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;

    invoke-direct {v0}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;->build()Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->list:Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    return-void
.end method

.method static synthetic access$000(Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;

    .line 25
    invoke-direct {p0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->displayList()V

    return-void
.end method

.method private displayList()V
    .locals 3

    .line 81
    invoke-virtual {p0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->shouldAnimate()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 85
    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAlpha(F)V

    .line 90
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTranslationY(F)V

    .line 92
    :goto_0
    return-void
.end method

.method public static newInstance(Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;)Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;
    .locals 0
    .param p0, "fragment"    # Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;

    .line 32
    return-object p0
.end method


# virtual methods
.method protected getList()Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->list:Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    return-object v0
.end method

.method protected abstract getMaterialAboutList(Landroid/content/Context;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;
.end method

.method protected getViewTypeManager()Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;
    .locals 1

    .line 68
    new-instance v0, Lcom/danielstone/materialaboutlibrary/util/DefaultViewTypeManager;

    invoke-direct {v0}, Lcom/danielstone/materialaboutlibrary/util/DefaultViewTypeManager;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 46
    sget v0, Lcom/danielstone/materialaboutlibrary/R$layout;->mal_material_about_content:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "rootView":Landroid/view/View;
    sget v2, Lcom/danielstone/materialaboutlibrary/R$id;->mal_recyclerview:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    new-instance v2, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;

    invoke-virtual {p0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->getViewTypeManager()Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;-><init>(Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;)V

    iput-object v2, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->adapter:Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;

    .line 50
    iget-object v2, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 51
    iget-object v2, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->adapter:Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 53
    iget-object v2, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    .line 54
    .local v2, "animator":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    instance-of v3, v2, Landroidx/recyclerview/widget/SimpleItemAnimator;

    if-eqz v3, :cond_0

    .line 55
    move-object v3, v2

    check-cast v3, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAlpha(F)V

    .line 59
    iget-object v3, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setTranslationY(F)V

    .line 61
    new-instance v3, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment$ListTask;

    invoke-direct {v3, p0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment$ListTask;-><init>(Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment$ListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .line 96
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 97
    return-void
.end method

.method protected refreshMaterialAboutList()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->list:Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    invoke-virtual {p0, v0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->setMaterialAboutList(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;)V

    .line 101
    return-void
.end method

.method protected setMaterialAboutList(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;)V
    .locals 2
    .param p1, "materialAboutList"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    .line 76
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->list:Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    .line 77
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->adapter:Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutFragment;->list:Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    invoke-virtual {v1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;->getCards()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 78
    return-void
.end method

.method protected shouldAnimate()Z
    .locals 1

    .line 39
    const/4 v0, 0x1

    return v0
.end method
