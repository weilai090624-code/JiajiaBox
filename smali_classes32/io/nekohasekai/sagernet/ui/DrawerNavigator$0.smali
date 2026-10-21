.class public final synthetic Lio/nekohasekai/sagernet/ui/DrawerNavigator$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/widget/FrameLayout;

.field public final synthetic f$3:Landroid/view/View;

.field public final synthetic f$4:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;ILandroid/widget/FrameLayout;Landroid/view/View;Landroid/util/SparseArray;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$0;->f$0:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    iput p2, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$0;->f$1:I

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$0;->f$2:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$0;->f$3:Landroid/view/View;

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$0;->f$4:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$0;->f$0:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    iget v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$0;->f$1:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$0;->f$2:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$0;->f$3:Landroid/view/View;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$0;->f$4:Landroid/util/SparseArray;

    invoke-static {v0, v1, v2, v3, v4}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->lambda$rootReady$0(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;ILandroid/widget/FrameLayout;Landroid/view/View;Landroid/util/SparseArray;)V

    return-void
.end method
