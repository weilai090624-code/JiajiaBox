.class Landroidx/transition/ViewUtilsApi21;
.super Landroidx/transition/ViewUtilsApi19;
.source "ViewUtilsApi21.java"


# static fields
.field private static sTryHiddenSetAnimationMatrix:Z

.field private static sTryHiddenTransformMatrixToGlobal:Z

.field private static sTryHiddenTransformMatrixToLocal:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/transition/ViewUtilsApi21;->sTryHiddenSetAnimationMatrix:Z

    .line 37
    sput-boolean v0, Landroidx/transition/ViewUtilsApi21;->sTryHiddenTransformMatrixToGlobal:Z

    .line 41
    sput-boolean v0, Landroidx/transition/ViewUtilsApi21;->sTryHiddenTransformMatrixToLocal:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroidx/transition/ViewUtilsApi19;-><init>()V

    return-void
.end method


# virtual methods
.method public setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 74
    sget-boolean v0, Landroidx/transition/ViewUtilsApi21;->sTryHiddenSetAnimationMatrix:Z

    if-eqz v0, :cond_c

    .line 78
    :try_start_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    .line 81
    goto :goto_c

    .line 79
    :catch_8
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    sput-boolean v1, Landroidx/transition/ViewUtilsApi21;->sTryHiddenSetAnimationMatrix:Z

    .line 83
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_c
    :goto_c
    return-void
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 46
    sget-boolean v0, Landroidx/transition/ViewUtilsApi21;->sTryHiddenTransformMatrixToGlobal:Z

    if-eqz v0, :cond_c

    .line 50
    :try_start_4
    invoke-virtual {p1, p2}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    .line 53
    goto :goto_c

    .line 51
    :catch_8
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    sput-boolean v1, Landroidx/transition/ViewUtilsApi21;->sTryHiddenTransformMatrixToGlobal:Z

    .line 55
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_c
    :goto_c
    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 60
    sget-boolean v0, Landroidx/transition/ViewUtilsApi21;->sTryHiddenTransformMatrixToLocal:Z

    if-eqz v0, :cond_c

    .line 64
    :try_start_4
    invoke-virtual {p1, p2}, Landroid/view/View;->transformMatrixToLocal(Landroid/graphics/Matrix;)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    .line 67
    goto :goto_c

    .line 65
    :catch_8
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    sput-boolean v1, Landroidx/transition/ViewUtilsApi21;->sTryHiddenTransformMatrixToLocal:Z

    .line 69
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_c
    :goto_c
    return-void
.end method
