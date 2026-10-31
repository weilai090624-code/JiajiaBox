.class Landroidx/transition/ViewUtilsApi22;
.super Landroidx/transition/ViewUtilsApi21;
.source "ViewUtilsApi22.java"


# static fields
.field private static sTryHiddenSetLeftTopRightBottom:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/transition/ViewUtilsApi22;->sTryHiddenSetLeftTopRightBottom:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroidx/transition/ViewUtilsApi21;-><init>()V

    return-void
.end method


# virtual methods
.method public setLeftTopRightBottom(Landroid/view/View;IIII)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 36
    sget-boolean v0, Landroidx/transition/ViewUtilsApi22;->sTryHiddenSetLeftTopRightBottom:Z

    if-eqz v0, :cond_c

    .line 40
    :try_start_4
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setLeftTopRightBottom(IIII)V
    :try_end_7
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_8

    .line 43
    goto :goto_c

    .line 41
    :catch_8
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const/4 v1, 0x0

    sput-boolean v1, Landroidx/transition/ViewUtilsApi22;->sTryHiddenSetLeftTopRightBottom:Z

    .line 45
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_c
    :goto_c
    return-void
.end method
