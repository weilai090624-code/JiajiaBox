.class Landroidx/transition/ViewUtilsApi19;
.super Landroidx/transition/ViewUtilsBase;
.source "ViewUtilsApi19.java"


# static fields
.field private static sTryHiddenTransitionAlpha:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroidx/transition/ViewUtilsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNonTransitionAlpha(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 72
    return-void
.end method

.method public getTransitionAlpha(Landroid/view/View;)F
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 52
    sget-boolean v0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    if-eqz v0, :cond_d

    .line 56
    :try_start_4
    invoke-virtual {p1}, Landroid/view/View;->getTransitionAlpha()F

    move-result v0
    :try_end_8
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_8} :catch_9

    return v0

    .line 57
    :catch_9
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    sput-boolean v1, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    .line 61
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method public saveNonTransitionAlpha(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 67
    return-void
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .line 36
    sget-boolean v0, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    if-eqz v0, :cond_c

    .line 40
    :try_start_4
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    .line 41
    return-void

    .line 42
    :catch_8
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    sput-boolean v1, Landroidx/transition/ViewUtilsApi19;->sTryHiddenTransitionAlpha:Z

    .line 46
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_c
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 47
    return-void
.end method
