.class Lio/nekohasekai/sagernet/ui/DrawerDesign$1;
.super Ljava/lang/Object;
.source "DrawerDesign.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/DrawerDesign;->install(Landroid/app/Activity;Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Landroid/widget/LinearLayout;Ljava/util/Map;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 193
    invoke-static {p1, p2}, Lio/nekohasekai/sagernet/ui/DrawerDesign;->lambda$install$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
