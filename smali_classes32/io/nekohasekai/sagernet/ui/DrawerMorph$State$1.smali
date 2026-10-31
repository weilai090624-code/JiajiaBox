.class Lio/nekohasekai/sagernet/ui/DrawerMorph$State$1;
.super Ljava/lang/Object;
.source "DrawerMorph.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/DrawerMorph$State;-><init>(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFILkotlin/jvm/functions/Function0;Lio/nekohasekai/sagernet/ui/DrawerMorph$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/DrawerMorph$State;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$1;->this$0:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 198
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$1;->this$0:Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    invoke-virtual {v0, p1}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->m31lambda$new$0$ionekohasekaisagernetuiDrawerMorph$State(Landroid/animation/ValueAnimator;)V

    return-void
.end method
