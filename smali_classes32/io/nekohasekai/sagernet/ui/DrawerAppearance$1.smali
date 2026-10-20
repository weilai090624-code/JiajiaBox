.class Lio/nekohasekai/sagernet/ui/DrawerAppearance$1;
.super Ljava/lang/Object;
.source "DrawerAppearance.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/DrawerAppearance;->styleControls(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onChildViewAdded$0(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_9

    # invokes: Lio/nekohasekai/sagernet/ui/DrawerAppearance;->styleControls(Landroid/view/View;)V
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->access$000(Landroid/view/View;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 176
    new-instance v0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$1$0;

    invoke-direct {v0, p2, p1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance$1$0;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 178
    return-void
.end method
