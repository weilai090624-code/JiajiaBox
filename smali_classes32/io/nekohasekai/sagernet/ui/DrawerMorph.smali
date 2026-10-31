.class public final Lio/nekohasekai/sagernet/ui/DrawerMorph;
.super Ljava/lang/Object;
.source "DrawerMorph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/DrawerMorph$State;,
        Lio/nekohasekai/sagernet/ui/DrawerMorph$TouchShield;
    }
.end annotation


# static fields
.field private static final CLOSE_MS:J = 0x1e0L

.field private static final OPEN_MS:J = 0x276L

.field private static final STATE_TAG:I = 0x7f0a0f48


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static lerp(IIF)I
    .registers 4

    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float p0, p0, p2

    add-float/2addr v0, p0

    .line 428
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static reset(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;)V
    .registers 2

    .line 71
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->state(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stop(Z)V

    :cond_a
    return-void
.end method

.method public static resetTransform(Landroid/view/View;)V
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 422
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 424
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public static setPhysicalMargins(Landroid/widget/FrameLayout$LayoutParams;IILandroid/view/View;)V
    .registers 5

    .line 408
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 409
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 p2, 0x0

    .line 410
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 411
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 412
    invoke-virtual {p3}, Landroid/view/View;->getLayoutDirection()I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_16

    const/4 p3, 0x0

    goto :goto_17

    :cond_16
    move p3, p1

    .line 413
    :goto_17
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    if-nez v0, :cond_1d

    const/4 p1, 0x0

    .line 417
    :cond_1d
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method public static start(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLkotlin/jvm/functions/Function0;)Landroid/animation/ValueAnimator;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/JJGlassCapsule;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "*>;)",
            "Landroid/animation/ValueAnimator;"
        }
    .end annotation

    move-object/from16 v0, p4

    .line 38
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->state(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    move-result-object v14

    if-eqz p6, :cond_d

    if-nez p3, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_f

    :cond_d
    :goto_d
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_f
    if-nez p3, :cond_13

    const/4 v2, -0x1

    goto :goto_19

    .line 40
    :cond_13
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_19
    if-eqz v14, :cond_3a

    .line 42
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, v14, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->current:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 43
    iget-object v2, v14, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 44
    iget v3, v14, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuWidth:I

    .line 45
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v14, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v5, 0x0

    .line 46
    invoke-virtual {v14, v5}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stop(Z)V

    move-object v6, v1

    move v11, v2

    move v12, v3

    move-object v8, v4

    goto :goto_6e

    .line 51
    :cond_3a
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 52
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-lez v8, :cond_4f

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_53

    :cond_4f
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getWidth()I

    move-result v8

    :goto_53
    add-int/2addr v7, v8

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-lez v9, :cond_5d

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_61

    :cond_5d
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getHeight()I

    move-result v3

    :goto_61
    add-int/2addr v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move v11, v1

    move v12, v2

    move-object v8, v3

    move-object v6, v4

    .line 58
    :goto_6e
    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 59
    new-instance v1, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v10, p6

    move-object/from16 v13, p7

    invoke-direct/range {v1 .. v14}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;-><init>(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFILkotlin/jvm/functions/Function0;Lio/nekohasekai/sagernet/ui/DrawerMorph$State;)V

    const v0, 0x7f0a0f48

    .line 60
    invoke-virtual {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setTag(ILjava/lang/Object;)V

    .line 62
    :try_start_93
    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->prepare()V

    .line 63
    iget-object p0, v1, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->animator:Landroid/animation/ValueAnimator;
    :try_end_98
    .catch Ljava/lang/RuntimeException; {:try_start_93 .. :try_end_98} :catch_99

    return-object p0

    :catch_99
    move-exception v0

    move-object p0, v0

    const/4 v0, 0x1

    .line 65
    invoke-virtual {v1, v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stop(Z)V

    .line 66
    throw p0
.end method

.method public static state(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerMorph$State;
    .registers 2

    const v0, 0x7f0a0f48

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 27
    instance-of v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    if-eqz v0, :cond_e

    .line 28
    check-cast p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method
