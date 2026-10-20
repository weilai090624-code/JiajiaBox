.class public abstract Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MaterialAboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity$ListTask;
    }
.end annotation


# instance fields
.field private adapter:Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;

.field private list:Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 29
    new-instance v0, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;

    invoke-direct {v0}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList$Builder;->build()Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    move-result-object v0

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->list:Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    return-void
.end method

.method static synthetic access$000(Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;)V
    .locals 0
    .param p0, "x0"    # Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;
    .param p1, "x1"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    .line 27
    invoke-direct {p0, p1}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->onTaskFinished(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;)V

    return-void
.end method

.method private assignViews()V
    .locals 2

    .line 68
    sget v0, Lcom/danielstone/materialaboutlibrary/R$id;->mal_recyclerview:I

    invoke-virtual {p0, v0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 69
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAlpha(F)V

    .line 70
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTranslationY(F)V

    .line 71
    return-void
.end method

.method private initViews()V
    .locals 4

    .line 74
    invoke-virtual {p0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 75
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_0

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 78
    :cond_0
    new-instance v1, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;

    invoke-virtual {p0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->getViewTypeManager()Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;-><init>(Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;)V

    iput-object v1, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->adapter:Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;

    .line 79
    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 80
    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->adapter:Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 81
    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    .line 82
    .local v1, "animator":Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    instance-of v2, v1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    if-eqz v2, :cond_1

    .line 83
    move-object v2, v1

    check-cast v2, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 85
    :cond_1
    return-void
.end method

.method private onTaskFinished(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;)V
    .locals 3
    .param p1, "materialAboutList"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    .line 115
    if-eqz p1, :cond_1

    .line 116
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->list:Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    .line 117
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->adapter:Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->list:Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    invoke-virtual {v1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;->getCards()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 119
    invoke-virtual {p0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->shouldAnimate()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 123
    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAlpha(F)V

    .line 127
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTranslationY(F)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->finish()V

    .line 132
    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract getActivityTitle()Ljava/lang/CharSequence;
.end method

.method protected getList()Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->list:Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    return-object v0
.end method

.method protected abstract getMaterialAboutList(Landroid/content/Context;)Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method protected getViewTypeManager()Lcom/danielstone/materialaboutlibrary/util/ViewTypeManager;
    .locals 1

    .line 89
    new-instance v0, Lcom/danielstone/materialaboutlibrary/util/DefaultViewTypeManager;

    invoke-direct {v0}, Lcom/danielstone/materialaboutlibrary/util/DefaultViewTypeManager;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v0, Lcom/danielstone/materialaboutlibrary/R$layout;->mal_material_about_content:I

    invoke-virtual {p0, v0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 54
    .local v0, "title":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 55
    sget v1, Lcom/danielstone/materialaboutlibrary/R$string;->mal_title_about:I

    invoke-virtual {p0, v1}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->setTitle(I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0, v0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    :goto_0
    invoke-direct {p0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->assignViews()V

    .line 61
    invoke-direct {p0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->initViews()V

    .line 63
    new-instance v1, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity$ListTask;

    invoke-direct {v1, p0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity$ListTask;-><init>(Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;)V

    .line 64
    .local v1, "task":Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity$ListTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity$ListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->onBackPressed()V

    .line 109
    const/4 v0, 0x1

    return v0

    .line 111
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected refreshMaterialAboutList()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->list:Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    invoke-virtual {p0, v0}, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->setMaterialAboutList(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;)V

    .line 103
    return-void
.end method

.method protected setMaterialAboutList(Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;)V
    .locals 2
    .param p1, "materialAboutList"    # Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    .line 135
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->list:Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    .line 136
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->adapter:Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/MaterialAboutActivity;->list:Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;

    invoke-virtual {v1}, Lcom/danielstone/materialaboutlibrary/model/MaterialAboutList;->getCards()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/danielstone/materialaboutlibrary/adapters/MaterialAboutListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 137
    return-void
.end method

.method protected shouldAnimate()Z
    .locals 1

    .line 98
    const/4 v0, 0x1

    return v0
.end method
