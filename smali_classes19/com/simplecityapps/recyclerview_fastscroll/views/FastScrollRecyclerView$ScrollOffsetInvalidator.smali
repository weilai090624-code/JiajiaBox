.class Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView$ScrollOffsetInvalidator;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "FastScrollRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollOffsetInvalidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;


# direct methods
.method private constructor <init>(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView$ScrollOffsetInvalidator;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;
    .param p2, "x1"    # Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView$1;

    .line 562
    invoke-direct {p0, p1}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView$ScrollOffsetInvalidator;-><init>(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;)V

    return-void
.end method

.method private invalidateAllScrollOffsets()V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView$ScrollOffsetInvalidator;->this$0:Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;

    invoke-static {v0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;->access$100(Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 565
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 569
    invoke-direct {p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView$ScrollOffsetInvalidator;->invalidateAllScrollOffsets()V

    .line 570
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 574
    invoke-direct {p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView$ScrollOffsetInvalidator;->invalidateAllScrollOffsets()V

    .line 575
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 579
    invoke-direct {p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView$ScrollOffsetInvalidator;->invalidateAllScrollOffsets()V

    .line 580
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 584
    invoke-direct {p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView$ScrollOffsetInvalidator;->invalidateAllScrollOffsets()V

    .line 585
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 594
    invoke-direct {p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView$ScrollOffsetInvalidator;->invalidateAllScrollOffsets()V

    .line 595
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 589
    invoke-direct {p0}, Lcom/simplecityapps/recyclerview_fastscroll/views/FastScrollRecyclerView$ScrollOffsetInvalidator;->invalidateAllScrollOffsets()V

    .line 590
    return-void
.end method
