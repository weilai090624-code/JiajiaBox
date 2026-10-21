.class public final synthetic Lio/nekohasekai/sagernet/ui/DrawerNavigator$6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

.field public final synthetic f$1:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$6;->f$0:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$6;->f$1:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$6;->f$0:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$6;->f$1:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->lambda$transition$5(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V

    return-void
.end method
