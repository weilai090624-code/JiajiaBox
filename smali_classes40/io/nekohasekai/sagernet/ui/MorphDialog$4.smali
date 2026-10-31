.class public final synthetic Lio/nekohasekai/sagernet/ui/MorphDialog$4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/MorphDialog;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:F

.field public final synthetic f$6:F


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/MorphDialog;FFFFFF)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$4;->f$0:Lio/nekohasekai/sagernet/ui/MorphDialog;

    iput p2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$4;->f$1:F

    iput p3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$4;->f$2:F

    iput p4, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$4;->f$3:F

    iput p5, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$4;->f$4:F

    iput p6, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$4;->f$5:F

    iput p7, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$4;->f$6:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$4;->f$0:Lio/nekohasekai/sagernet/ui/MorphDialog;

    iget v1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$4;->f$1:F

    iget v2, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$4;->f$2:F

    iget v3, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$4;->f$3:F

    iget v4, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$4;->f$4:F

    iget v5, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$4;->f$5:F

    iget v6, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$4;->f$6:F

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lio/nekohasekai/sagernet/ui/MorphDialog;->lambda$run$1$io-nekohasekai-sagernet-ui-MorphDialog(FFFFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
