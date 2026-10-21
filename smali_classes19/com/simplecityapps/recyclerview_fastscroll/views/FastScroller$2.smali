.class Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;-><init>(Landroid/content/Context;Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;


# direct methods
.method constructor <init>(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)V
    .registers 2
    .param p1, "this$0"    # Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    .line 169
    iput-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$2;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 172
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 174
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$2;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    # getter for: Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->mRecyclerView:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;
    invoke-static {v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->access$200(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;)Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_14

    .line 175
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller$2;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;

    invoke-virtual {v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScroller;->show()V

    .line 177
    :cond_14
    return-void
.end method
