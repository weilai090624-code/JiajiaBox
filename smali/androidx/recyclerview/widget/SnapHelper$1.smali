.class Landroidx/recyclerview/widget/SnapHelper$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/SnapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mScrolled:Z

.field final synthetic this$0:Landroidx/recyclerview/widget/SnapHelper;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/SnapHelper;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/recyclerview/widget/SnapHelper;

    .line 44
    iput-object p1, p0, Landroidx/recyclerview/widget/SnapHelper$1;->this$0:Landroidx/recyclerview/widget/SnapHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/SnapHelper$1;->mScrolled:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 49
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 50
    if-nez p2, :cond_11

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SnapHelper$1;->mScrolled:Z

    if-eqz v0, :cond_11

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/SnapHelper$1;->mScrolled:Z

    .line 52
    iget-object v0, p0, Landroidx/recyclerview/widget/SnapHelper$1;->this$0:Landroidx/recyclerview/widget/SnapHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/SnapHelper;->snapToTargetExistingView()V

    .line 54
    :cond_11
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 58
    if-nez p2, :cond_4

    if-eqz p3, :cond_7

    .line 59
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/SnapHelper$1;->mScrolled:Z

    .line 61
    :cond_7
    return-void
.end method
