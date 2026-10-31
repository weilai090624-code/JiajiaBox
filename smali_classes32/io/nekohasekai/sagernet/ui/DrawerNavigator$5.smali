.class Lio/nekohasekai/sagernet/ui/DrawerNavigator$5;
.super Ljava/lang/Object;
.source "DrawerNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/DrawerNavigator;->transition(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$page:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

.field final synthetic val$state:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 402
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$5;->val$state:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$5;->val$page:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 405
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$5;->val$state:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$5;->val$page:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->lambda$transition$4(Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V

    return-void
.end method
