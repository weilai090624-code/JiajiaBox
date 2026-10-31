.class Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "PreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerDecoration"
.end annotation


# instance fields
.field private mAllowDividerAfterLastItem:Z

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field final synthetic this$0:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceFragmentCompat;)V
    .registers 2

    .line 851
    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 849
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 851
    return-void
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 880
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 881
    .local v0, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    instance-of v1, v0, Landroidx/preference/PreferenceViewHolder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Landroidx/preference/PreferenceViewHolder;

    .line 882
    invoke-virtual {v1}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    .line 883
    .local v1, "dividerAllowedBelow":Z
    :goto_16
    if-nez v1, :cond_19

    .line 884
    return v2

    .line 886
    :cond_19
    iget-boolean v4, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 887
    .local v4, "nextAllowed":Z
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 888
    .local v5, "index":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v3

    if-ge v5, v6, :cond_41

    .line 889
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p2, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 890
    .local v6, "nextView":Landroid/view/View;
    invoke-virtual {p2, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 891
    .local v7, "nextHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    instance-of v8, v7, Landroidx/preference/PreferenceViewHolder;

    if-eqz v8, :cond_3f

    move-object v8, v7

    check-cast v8, Landroidx/preference/PreferenceViewHolder;

    .line 892
    invoke-virtual {v8}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result v8

    if-eqz v8, :cond_3f

    const/4 v2, 0x1

    goto :goto_40

    :cond_3f
    nop

    :goto_40
    move v4, v2

    .line 894
    .end local v6    # "nextView":Landroid/view/View;
    .end local v7    # "nextHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_41
    return v4
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 874
    invoke-direct {p0, p2, p3}, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 875
    iget v0, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDividerHeight:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 877
    :cond_a
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 856
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 857
    return-void

    .line 859
    :cond_5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 860
    .local v0, "childCount":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 861
    .local v1, "width":I
    const/4 v2, 0x0

    .local v2, "childViewIndex":I
    :goto_e
    if-ge v2, v0, :cond_35

    .line 862
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 863
    .local v3, "view":Landroid/view/View;
    invoke-direct {p0, v3, p2}, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 864
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 865
    .local v4, "top":I
    iget-object v5, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDividerHeight:I

    add-int/2addr v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 866
    iget-object v5, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 861
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "top":I
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 869
    .end local v2    # "childViewIndex":I
    :cond_35
    return-void
.end method

.method public setAllowDividerAfterLastItem(Z)V
    .registers 2
    .param p1, "allowDividerAfterLastItem"    # Z

    .line 913
    iput-boolean p1, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 914
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 898
    if-eqz p1, :cond_9

    .line 899
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDividerHeight:I

    goto :goto_c

    .line 901
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDividerHeight:I

    .line 903
    :goto_c
    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 904
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v0, v0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 905
    return-void
.end method

.method public setDividerHeight(I)V
    .registers 3
    .param p1, "dividerHeight"    # I

    .line 908
    iput p1, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->mDividerHeight:I

    .line 909
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v0, v0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 910
    return-void
.end method
