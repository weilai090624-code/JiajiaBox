.class public final synthetic Lio/nekohasekai/sagernet/ui/DrawerNavigator$4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$4;->f$0:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 2

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$4;->f$0:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->lambda$startAfterLayout$3(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)Z

    move-result v0

    return v0
.end method
