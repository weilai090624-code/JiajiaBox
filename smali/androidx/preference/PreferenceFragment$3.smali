.class Landroidx/preference/PreferenceFragment$3;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/PreferenceFragment;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/PreferenceFragment;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$preference:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Landroidx/preference/PreferenceFragment;

    .line 675
    iput-object p1, p0, Landroidx/preference/PreferenceFragment$3;->this$0:Landroidx/preference/PreferenceFragment;

    iput-object p2, p0, Landroidx/preference/PreferenceFragment$3;->val$preference:Landroidx/preference/Preference;

    iput-object p3, p0, Landroidx/preference/PreferenceFragment$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 678
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$3;->this$0:Landroidx/preference/PreferenceFragment;

    iget-object v0, v0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 679
    .local v0, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;, "Landroidx/recyclerview/widget/RecyclerView$Adapter<*>;"
    instance-of v1, v0, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    if-nez v1, :cond_17

    .line 680
    if-nez v0, :cond_f

    .line 685
    return-void

    .line 681
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Adapter must implement PreferencePositionCallback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 689
    :cond_17
    iget-object v1, p0, Landroidx/preference/PreferenceFragment$3;->val$preference:Landroidx/preference/Preference;

    if-eqz v1, :cond_25

    .line 690
    move-object v1, v0

    check-cast v1, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v2, p0, Landroidx/preference/PreferenceFragment$3;->val$preference:Landroidx/preference/Preference;

    .line 691
    invoke-interface {v1, v2}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result v1

    .local v1, "position":I
    goto :goto_2e

    .line 693
    .end local v1    # "position":I
    :cond_25
    move-object v1, v0

    check-cast v1, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v2, p0, Landroidx/preference/PreferenceFragment$3;->val$key:Ljava/lang/String;

    .line 694
    invoke-interface {v1, v2}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v1

    .line 696
    .restart local v1    # "position":I
    :goto_2e
    const/4 v2, -0x1

    if-eq v1, v2, :cond_39

    .line 697
    iget-object v2, p0, Landroidx/preference/PreferenceFragment$3;->this$0:Landroidx/preference/PreferenceFragment;

    iget-object v2, v2, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_49

    .line 700
    :cond_39
    new-instance v2, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;

    iget-object v3, p0, Landroidx/preference/PreferenceFragment$3;->this$0:Landroidx/preference/PreferenceFragment;

    iget-object v3, v3, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Landroidx/preference/PreferenceFragment$3;->val$preference:Landroidx/preference/Preference;

    iget-object v5, p0, Landroidx/preference/PreferenceFragment$3;->val$key:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v5}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 703
    :goto_49
    return-void
.end method
