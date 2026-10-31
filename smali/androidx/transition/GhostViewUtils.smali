.class Landroidx/transition/GhostViewUtils;
.super Ljava/lang/Object;
.source "GhostViewUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostView;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_b

    .line 34
    invoke-static {p0, p1, p2}, Landroidx/transition/GhostViewPlatform;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostView;

    move-result-object v0

    return-object v0

    .line 36
    :cond_b
    invoke-static {p0, p1, p2}, Landroidx/transition/GhostViewPort;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostViewPort;

    move-result-object v0

    return-object v0
.end method

.method static removeGhost(Landroid/view/View;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_a

    .line 43
    invoke-static {p0}, Landroidx/transition/GhostViewPlatform;->removeGhost(Landroid/view/View;)V

    goto :goto_d

    .line 45
    :cond_a
    invoke-static {p0}, Landroidx/transition/GhostViewPort;->removeGhost(Landroid/view/View;)V

    .line 47
    :goto_d
    return-void
.end method
