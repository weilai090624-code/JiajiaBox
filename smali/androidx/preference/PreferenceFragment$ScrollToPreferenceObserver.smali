.class Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollToPreferenceObserver"
.end annotation


# instance fields
.field private final mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation
.end field

.field private final mKey:Ljava/lang/String;

.field private final mList:Landroidx/recyclerview/widget/RecyclerView;

.field private final mPreference:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V
    .registers 5
    .param p2, "list"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "preference"    # Landroidx/preference/Preference;
    .param p4, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/preference/Preference;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 768
    .local p1, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 769
    iput-object p1, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 770
    iput-object p2, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 771
    iput-object p3, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mPreference:Landroidx/preference/Preference;

    .line 772
    iput-object p4, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 773
    return-void
.end method

.method private scrollToPreference()V
    .registers 3

    .line 776
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 778
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_14

    .line 779
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v1, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mPreference:Landroidx/preference/Preference;

    .line 780
    invoke-interface {v0, v1}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result v0

    .local v0, "position":I
    goto :goto_1e

    .line 782
    .end local v0    # "position":I
    :cond_14
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v1, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 783
    invoke-interface {v0, v1}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    .line 785
    .restart local v0    # "position":I
    :goto_1e
    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 786
    iget-object v1, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 788
    :cond_26
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    .line 792
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 793
    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 797
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 798
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .registers 4
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 802
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 803
    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 807
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 808
    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 4
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 817
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 818
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 3
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 812
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 813
    return-void
.end method
