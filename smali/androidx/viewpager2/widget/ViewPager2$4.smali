.class Landroidx/viewpager2/widget/ViewPager2$4;
.super Ljava/lang/Object;
.source "ViewPager2.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/widget/ViewPager2;->enforceChildFillListener()Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .registers 2
    .param p1, "this$0"    # Landroidx/viewpager2/widget/ViewPager2;

    .line 263
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$4;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 266
    nop

    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 268
    .local v0, "layoutParams":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    if-ne v1, v2, :cond_11

    .line 273
    return-void

    .line 270
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Pages must fill the whole ViewPager2 (use match_parent)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 278
    return-void
.end method
