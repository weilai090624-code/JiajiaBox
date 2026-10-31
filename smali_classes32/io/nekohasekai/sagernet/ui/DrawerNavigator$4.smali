.class Lio/nekohasekai/sagernet/ui/DrawerNavigator$4;
.super Ljava/lang/Object;
.source "DrawerNavigator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/DrawerNavigator;->startAfterLayout(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/DrawerNavigator$State;Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$page:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$4;->val$page:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 2

    .line 331
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$4;->val$page:Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerNavigator;->lambda$startAfterLayout$3(Lio/nekohasekai/sagernet/ui/DrawerNavigator$Page;)Z

    move-result v0

    return v0
.end method
