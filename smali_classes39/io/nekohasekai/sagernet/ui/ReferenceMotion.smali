.class public final Lio/nekohasekai/sagernet/ui/ReferenceMotion;
.super Ljava/lang/Object;
.source "ReferenceMotion.java"


# static fields
.field private static final EASE_OUT:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 7
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f147ae1    # 0.58f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/ReferenceMotion;->EASE_OUT:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/view/ViewPropertyAnimator;Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;
    .registers 2

    .line 9
    sget-object p1, Lio/nekohasekai/sagernet/ui/ReferenceMotion;->EASE_OUT:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static apply(Landroid/animation/Animator;)V
    .registers 2

    .line 8
    sget-object v0, Lio/nekohasekai/sagernet/ui/ReferenceMotion;->EASE_OUT:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method
