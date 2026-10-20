.class public final Lio/nekohasekai/sagernet/ui/ToolsFragment$ToolsAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "ToolsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/ToolsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ToolsAdapter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\nH\u0016R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/ToolsFragment$ToolsAdapter;",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "tools",
        "",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "(Lio/nekohasekai/sagernet/ui/ToolsFragment;Ljava/util/List;)V",
        "getTools",
        "()Ljava/util/List;",
        "getItemCount",
        "",
        "createFragment",
        "position",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ToolsFragment;

.field private final tools:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/nekohasekai/sagernet/ui/ToolsFragment;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/ui/ToolsFragment;
    .param p2, "tools"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tools"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ToolsFragment$ToolsAdapter;->this$0:Lio/nekohasekai/sagernet/ui/ToolsFragment;

    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ToolsFragment$ToolsAdapter;->tools:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .line 36
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ToolsFragment$ToolsAdapter;->tools:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 34
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ToolsFragment$ToolsAdapter;->tools:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getTools()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ToolsFragment$ToolsAdapter;->tools:Ljava/util/List;

    return-object v0
.end method
