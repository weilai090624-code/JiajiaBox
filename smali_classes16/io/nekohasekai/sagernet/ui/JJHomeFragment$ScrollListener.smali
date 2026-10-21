.class public final Lio/nekohasekai/sagernet/ui/JJHomeFragment$ScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "JJHomeFragment.kt"


# instance fields
.field private final this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;


# direct methods
.method public constructor <init>(Lio/nekohasekai/sagernet/ui/JJHomeFragment;)V
    .registers 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$ScrollListener;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/JJHomeFragment$ScrollListener;->this$0:Lio/nekohasekai/sagernet/ui/JJHomeFragment;

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    invoke-virtual {v0, p2}, Lio/nekohasekai/sagernet/ui/JJHomeFragment;->setGlassSamplingPaused(Z)V

    return-void
.end method
