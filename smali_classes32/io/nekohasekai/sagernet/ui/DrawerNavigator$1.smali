.class Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;
.super Ljava/lang/Object;
.source "DrawerNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/DrawerNavigator;->rootReady(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$childAt:Landroid/view/View;

.field final synthetic val$frameLayout:Landroid/widget/FrameLayout;

.field final synthetic val$i:I

.field final synthetic val$snapshot:Landroid/util/SparseArray;

.field final synthetic val$state:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;ILandroid/widget/FrameLayout;Landroid/view/View;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;->val$state:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    iput p2, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;->val$i:I

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;->val$frameLayout:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;->val$childAt:Landroid/view/View;

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;->val$snapshot:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 175
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;->val$state:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    iget v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;->val$i:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;->val$frameLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;->val$childAt:Landroid/view/View;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$1;->val$snapshot:Landroid/util/SparseArray;

    invoke-static {v0, v1, v2, v3, v4}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->lambda$rootReady$0(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;ILandroid/widget/FrameLayout;Landroid/view/View;Landroid/util/SparseArray;)V

    return-void
.end method
