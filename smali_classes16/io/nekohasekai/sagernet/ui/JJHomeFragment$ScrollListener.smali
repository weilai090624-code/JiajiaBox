.class public final Lio/nekohasekai/sagernet/ui/JJHomeFragment$ScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "JJHomeFragment.kt"

.field private final this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

.method public constructor <init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$ScrollListener;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$ScrollListener;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->setGlassSamplingPaused(Z)V

    return-void
.end method
