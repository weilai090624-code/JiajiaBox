.class Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;
.super Ljava/lang/Object;
.source "DrawerNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/DrawerNavigator;->startAfterLayout(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$page:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

.field final synthetic val$state:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Landroid/app/Activity;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;->val$page:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;->val$state:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 325
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;->val$page:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;->val$state:Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->lambda$startAfterLayout$2(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Landroid/app/Activity;)V

    return-void
.end method
