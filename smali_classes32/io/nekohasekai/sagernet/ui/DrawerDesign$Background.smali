.class final Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;
.super Ljava/lang/Object;
.source "DrawerDesign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerDesign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Background"
.end annotation


# instance fields
.field final action:Z

.field final fill:I

.field final installed:Landroid/graphics/drawable/Drawable;

.field final radius:I

.field final ripple:I

.field final selected:Z


# direct methods
.method constructor <init>(ZZIIILandroid/graphics/drawable/Drawable;)V
    .registers 7

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;->selected:Z

    iput-boolean p2, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;->action:Z

    iput p3, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;->fill:I

    .line 85
    iput p4, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;->ripple:I

    iput p5, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;->radius:I

    iput-object p6, p0, Lio/nekohasekai/sagernet/ui/DrawerDesign$Background;->installed:Landroid/graphics/drawable/Drawable;

    return-void
.end method
