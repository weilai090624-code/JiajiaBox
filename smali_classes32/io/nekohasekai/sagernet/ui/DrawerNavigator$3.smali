.class public final synthetic Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

.field public final synthetic f$1:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Landroid/app/Activity;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;->f$0:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;->f$1:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;->f$0:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;->f$1:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;->f$2:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->lambda$startAfterLayout$2(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Landroid/app/Activity;)V

    return-void
.end method
