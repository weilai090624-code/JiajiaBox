.class Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$2;
.super Ljava/lang/Object;
.source "GlobalGlobeCard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->createWeb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field rotate:Z

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$2;->this$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 201
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p2, :cond_d

    .line 202
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$2;->rotate:Z

    :cond_d
    const/4 v1, 0x5

    if-ne p2, v1, :cond_12

    .line 203
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$2;->rotate:Z

    :cond_12
    const/4 v1, 0x0

    if-eqz p1, :cond_24

    .line 204
    iget-boolean v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$2;->rotate:Z

    if-eqz v2, :cond_20

    if-eq p2, v0, :cond_20

    const/4 v2, 0x3

    if-eq p2, v2, :cond_20

    const/4 p2, 0x1

    goto :goto_21

    :cond_20
    const/4 p2, 0x0

    :goto_21
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 205
    :cond_24
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$2;->this$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    # getter for: Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->live:Z
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->access$400(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v0

    :cond_2d
    return v1
.end method
