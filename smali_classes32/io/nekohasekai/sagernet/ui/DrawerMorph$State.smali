.class final Lio/nekohasekai/sagernet/ui/DrawerMorph$State;
.super Ljava/lang/Object;
.source "DrawerMorph.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerMorph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field final animator:Landroid/animation/ValueAnimator;

.field final bottom:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

.field final capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

.field final clip:Landroid/graphics/Rect;

.field final current:Landroid/graphics/Rect;

.field final expanding:Z

.field finished:Z

.field fraction:F

.field final from:Landroid/graphics/Rect;

.field final layout:Landroid/graphics/Rect;

.field final left:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

.field final menu:Landroid/view/View;

.field final menuBounds:Landroid/graphics/Rect;

.field final menuOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

.field final menuWidth:I

.field observer:Landroid/view/ViewTreeObserver;

.field final onEnd:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "*>;"
        }
    .end annotation
.end field

.field final opacity:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

.field final overlay:Landroid/view/ViewGroup;

.field final page:Landroid/view/View;

.field final pageOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

.field final right:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

.field final seconds:F

.field final shield:Landroid/view/View;

.field final startPageAlpha:F

.field stopped:Z

.field final target:Landroid/graphics/Rect;

.field final top:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/JJGlassCapsule;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZFILkotlin/jvm/functions/Function0;Lio/nekohasekai/sagernet/ui/DrawerMorph$State;)V
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/nekohasekai/sagernet/ui/JJGlassCapsule;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "ZFI",
            "Lkotlin/jvm/functions/Function0<",
            "*>;",
            "Lio/nekohasekai/sagernet/ui/DrawerMorph$State;",
            ")V"
        }
    .end annotation

    .line 62
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move/from16 v3, p9

    move/from16 v4, p10

    move-object/from16 v5, p13

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->clip:Landroid/graphics/Rect;

    .line 57
    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1ec

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->animator:Landroid/animation/ValueAnimator;

    .line 63
    move-object/from16 v6, p1

    iput-object v6, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    move-object/from16 v7, p2

    iput-object v7, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->overlay:Landroid/view/ViewGroup;

    move-object/from16 v7, p3

    iput-object v7, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    move-object/from16 v7, p4

    iput-object v7, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    iput-object v1, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->from:Landroid/graphics/Rect;

    iput-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->target:Landroid/graphics/Rect;

    .line 64
    move-object/from16 v7, p7

    iput-object v7, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    move-object/from16 v7, p8

    iput-object v7, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuBounds:Landroid/graphics/Rect;

    iput-boolean v3, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->expanding:Z

    iput v4, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->startPageAlpha:F

    .line 65
    move/from16 v7, p11

    iput v7, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuWidth:I

    move-object/from16 v7, p12

    iput-object v7, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->onEnd:Lkotlin/jvm/functions/Function0;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->current:Landroid/graphics/Rect;

    .line 66
    new-instance v7, Landroid/view/View;

    invoke-virtual {v6}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->shield:Landroid/view/View;

    iget-object v7, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->shield:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setClickable(Z)V

    .line 67
    if-eqz v3, :cond_67

    const-wide/16 v7, 0x1a4

    goto :goto_69

    :cond_67
    const-wide/16 v7, 0x140

    .line 68
    :goto_69
    const/high16 v10, 0x3f800000    # 1.0f

    if-nez v5, :cond_6e

    goto :goto_8d

    :cond_6e
    long-to-float v7, v7

    if-eqz v3, :cond_74

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_75

    :cond_74
    const/4 v8, 0x0

    :goto_75
    sub-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v8, v11

    mul-float v7, v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/16 v8, 0x8c

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-long v7, v7

    .line 69
    :goto_8d
    long-to-float v11, v7

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float/2addr v11, v12

    iput v11, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->seconds:F

    .line 70
    if-nez v5, :cond_97

    const/4 v11, 0x0

    goto :goto_99

    :cond_97
    iget v11, v5, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->fraction:F

    .line 71
    :goto_99
    new-instance v12, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    iget v13, v1, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    iget v14, v2, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    if-nez v5, :cond_a5

    const/4 v15, 0x0

    goto :goto_ab

    :cond_a5
    iget-object v15, v5, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->left:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v15, v11}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->velocity(F)F

    move-result v15

    :goto_ab
    iget v9, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->seconds:F

    const/high16 v17, 0x41900000    # 18.0f

    move/from16 v16, v9

    invoke-direct/range {v12 .. v17}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FFFFF)V

    iput-object v12, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->left:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 72
    new-instance v13, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    iget v9, v1, Landroid/graphics/Rect;->top:I

    int-to-float v14, v9

    iget v9, v2, Landroid/graphics/Rect;->top:I

    int-to-float v15, v9

    if-nez v5, :cond_c3

    const/16 v16, 0x0

    goto :goto_cb

    :cond_c3
    iget-object v9, v5, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->top:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v9, v11}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->velocity(F)F

    move-result v9

    move/from16 v16, v9

    :goto_cb
    iget v9, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->seconds:F

    const/high16 v18, 0x41900000    # 18.0f

    move/from16 v17, v9

    invoke-direct/range {v13 .. v18}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FFFFF)V

    iput-object v13, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->top:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 73
    new-instance v14, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    iget v9, v1, Landroid/graphics/Rect;->right:I

    int-to-float v15, v9

    iget v9, v2, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    if-nez v5, :cond_e3

    const/16 v17, 0x0

    goto :goto_eb

    :cond_e3
    iget-object v12, v5, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->right:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v12, v11}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->velocity(F)F

    move-result v12

    move/from16 v17, v12

    :goto_eb
    iget v12, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->seconds:F

    const/high16 v19, 0x41900000    # 18.0f

    move/from16 v16, v9

    move/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FFFFF)V

    iput-object v14, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->right:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 74
    new-instance v9, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    if-nez v5, :cond_104

    const/4 v12, 0x0

    goto :goto_10a

    :cond_104
    iget-object v12, v5, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->bottom:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v12, v11}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->velocity(F)F

    move-result v12

    :goto_10a
    iget v13, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->seconds:F

    const/high16 v14, 0x41900000    # 18.0f

    move/from16 p3, v1

    move/from16 p4, v2

    move-object/from16 p2, v9

    move/from16 p5, v12

    move/from16 p6, v13

    const/high16 p7, 0x41900000    # 18.0f

    invoke-direct/range {p2 .. p7}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FFFFF)V

    move-object/from16 v1, p2

    iput-object v1, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->bottom:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 75
    new-instance v1, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    if-eqz v3, :cond_126

    goto :goto_127

    :cond_126
    const/4 v10, 0x0

    :goto_127
    if-nez v5, :cond_12b

    const/4 v2, 0x0

    goto :goto_131

    :cond_12b
    iget-object v2, v5, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->opacity:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v2, v11}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->velocity(F)F

    move-result v2

    :goto_131
    iget v9, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->seconds:F

    const/high16 v12, 0x41600000    # 14.0f

    move-object/from16 p2, v1

    move/from16 p5, v2

    move/from16 p3, v4

    move/from16 p6, v9

    move/from16 p4, v10

    const/high16 p7, 0x41600000    # 14.0f

    invoke-direct/range {p2 .. p7}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FFFFF)V

    iput-object v1, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->opacity:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 76
    invoke-virtual {v6}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 77
    new-instance v2, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    if-nez v5, :cond_161

    if-eqz v3, :cond_15f

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v4, v4, v1

    goto :goto_167

    :cond_15f
    const/4 v4, 0x0

    goto :goto_167

    :cond_161
    iget-object v4, v5, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->pageOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v4, v11}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->value(F)F

    move-result v4

    :goto_167
    if-eqz v3, :cond_16b

    const/4 v6, 0x0

    goto :goto_16f

    :cond_16b
    const/high16 v6, 0x40c00000    # 6.0f

    mul-float v6, v6, v1

    :goto_16f
    if-nez v5, :cond_173

    const/4 v9, 0x0

    goto :goto_179

    :cond_173
    iget-object v9, v5, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->pageOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v9, v11}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->velocity(F)F

    move-result v9

    :goto_179
    iget v10, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->seconds:F

    const/high16 v12, 0x41800000    # 16.0f

    move-object/from16 p1, v2

    move/from16 p2, v4

    move/from16 p3, v6

    move/from16 p4, v9

    move/from16 p5, v10

    const/high16 p6, 0x41800000    # 16.0f

    invoke-direct/range {p1 .. p6}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FFFFF)V

    iput-object v2, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->pageOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 78
    new-instance v2, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    const/high16 v4, -0x3f800000    # -4.0f

    if-nez v5, :cond_19b

    if-eqz v3, :cond_198

    const/4 v6, 0x0

    goto :goto_1a1

    :cond_198
    mul-float v6, v1, v4

    goto :goto_1a1

    :cond_19b
    iget-object v6, v5, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v6, v11}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->value(F)F

    move-result v6

    :goto_1a1
    if-eqz v3, :cond_1a6

    mul-float v1, v1, v4

    goto :goto_1a7

    :cond_1a6
    const/4 v1, 0x0

    :goto_1a7
    if-nez v5, :cond_1ab

    const/4 v9, 0x0

    goto :goto_1b1

    :cond_1ab
    iget-object v3, v5, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v3, v11}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->velocity(F)F

    move-result v9

    :goto_1b1
    iget v3, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->seconds:F

    const/high16 v4, 0x41900000    # 18.0f

    move/from16 p3, v1

    move-object/from16 p1, v2

    move/from16 p5, v3

    move/from16 p2, v6

    move/from16 p4, v9

    const/high16 p6, 0x41900000    # 18.0f

    invoke-direct/range {p1 .. p6}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;-><init>(FFFFF)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 79
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->animator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->animator:Landroid/animation/ValueAnimator;

    new-instance v2, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$0;

    invoke-direct {v2, v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$0;-><init>(Lio/nekohasekai/sagernet/ui/DrawerMorph$State;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 81
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->animator:Landroid/animation/ValueAnimator;

    new-instance v2, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$1;

    invoke-direct {v2, v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State$1;-><init>(Lio/nekohasekai/sagernet/ui/DrawerMorph$State;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 85
    return-void

    :array_1ec
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method finish()V
    .registers 5

    .line 120
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->finished:Z

    if-nez v0, :cond_93

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stopped:Z

    if-eqz v0, :cond_a

    goto/16 :goto_93

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->finished:Z

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->frame(F)V

    .line 121
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->removePreDraw()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->overlay:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->shield:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const v1, 0x7f0a0f48

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0, v2}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setMorphClip(Landroid/graphics/Rect;)V

    .line 123
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    # invokes: Lio/nekohasekai/sagernet/ui/DrawerMorph;->resetTransform(Landroid/view/View;)V
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->access$200(Landroid/view/View;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->restoreMenuWidth()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    # invokes: Lio/nekohasekai/sagernet/ui/DrawerMorph;->resetTransform(Landroid/view/View;)V
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->access$200(Landroid/view/View;)V

    .line 124
    :cond_40
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 125
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->target:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->target:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    # invokes: Lio/nekohasekai/sagernet/ui/DrawerMorph;->setPhysicalMargins(Landroid/widget/FrameLayout$LayoutParams;IILandroid/view/View;)V
    invoke-static {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->access$000(Landroid/widget/FrameLayout$LayoutParams;IILandroid/view/View;)V

    .line 126
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->target:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->target:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v1, v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->expanding:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_75

    const/4 v1, 0x0

    goto :goto_77

    :cond_75
    const/16 v1, 0x8

    :goto_77
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz v0, :cond_89

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->expanding:Z

    if-eqz v1, :cond_86

    const/16 v2, 0x8

    :cond_86
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_89
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->onEnd:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_92

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->onEnd:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 130
    :cond_92
    return-void

    .line 120
    :cond_93
    :goto_93
    return-void
.end method

.method frame(F)V
    .registers 7

    .line 109
    iput p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->fraction:F

    .line 110
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->current:Landroid/graphics/Rect;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->left:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v1, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->value(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->top:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v2, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->value(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->right:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    .line 111
    invoke-virtual {v3, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->value(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->bottom:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v4, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->value(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 110
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 112
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->clip:Landroid/graphics/Rect;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->current:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->clip:Landroid/graphics/Rect;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->clip:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setMorphClip(Landroid/graphics/Rect;)V

    .line 113
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->current:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->current:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 114
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->pageOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v3, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->value(F)F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 115
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->opacity:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v2, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->value(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 116
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz v4, :cond_a2

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuOffset:Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;

    invoke-virtual {v4, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->value(F)F

    move-result p1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    sub-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 117
    :cond_a2
    return-void
.end method

.method synthetic lambda$new$0$io-nekohasekai-sagernet-ui-DrawerMorph$State(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 80
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stopped:Z

    if-nez v0, :cond_11

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->frame(F)V

    :cond_11
    return-void
.end method

.method public onPreDraw()Z
    .registers 3

    .line 102
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->removePreDraw()V

    .line 103
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stopped:Z

    const/4 v1, 0x1

    if-nez v0, :cond_17

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    # invokes: Lio/nekohasekai/sagernet/ui/DrawerMorph;->state(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerMorph$State;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->access$100(Landroid/view/View;)Lio/nekohasekai/sagernet/ui/DrawerMorph$State;

    move-result-object v0

    if-eq v0, p0, :cond_11

    goto :goto_17

    .line 105
    :cond_11
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return v1

    .line 103
    :cond_17
    :goto_17
    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 140
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 141
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stop(Z)V

    return-void
.end method

.method prepare()V
    .registers 5

    .line 87
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/RosePalette;->prepareForDisplay(Landroid/view/View;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/RosePalette;->prepareForDisplay(Landroid/view/View;)V

    .line 88
    :cond_e
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    const/4 v3, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 91
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v1, :cond_62

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    :cond_62
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 93
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 94
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 95
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    # invokes: Lio/nekohasekai/sagernet/ui/DrawerMorph;->setPhysicalMargins(Landroid/widget/FrameLayout$LayoutParams;IILandroid/view/View;)V
    invoke-static {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->access$000(Landroid/widget/FrameLayout$LayoutParams;IILandroid/view/View;)V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->layout:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 96
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v1, v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->overlay:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->shield:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->frame(F)V

    .line 99
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->observer:Landroid/view/ViewTreeObserver;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 100
    return-void
.end method

.method removePreDraw()V
    .registers 2

    .line 107
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->observer:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->observer:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method restoreMenuWidth()V
    .registers 4

    .line 139
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuWidth:I

    if-eq v1, v2, :cond_15

    iget v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menuWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_15
    return-void
.end method

.method stop(Z)V
    .registers 4

    .line 132
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->finished:Z

    if-eqz v0, :cond_5

    return-void

    .line 133
    :cond_5
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stopped:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->stopped:Z

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->removePreDraw()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {v0, p0}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 134
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->overlay:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->shield:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 135
    :cond_20
    if-eqz p1, :cond_41

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    const v0, 0x7f0a0f48

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->capsule:Lio/nekohasekai/sagernet/ui/JJGlassCapsule;

    invoke-virtual {p1, v1}, Lio/nekohasekai/sagernet/ui/JJGlassCapsule;->setMorphClip(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->page:Landroid/view/View;

    # invokes: Lio/nekohasekai/sagernet/ui/DrawerMorph;->resetTransform(Landroid/view/View;)V
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->access$200(Landroid/view/View;)V

    .line 136
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    if-eqz p1, :cond_41

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->restoreMenuWidth()V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMorph$State;->menu:Landroid/view/View;

    # invokes: Lio/nekohasekai/sagernet/ui/DrawerMorph;->resetTransform(Landroid/view/View;)V
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/DrawerMorph;->access$200(Landroid/view/View;)V

    .line 138
    :cond_41
    return-void
.end method
