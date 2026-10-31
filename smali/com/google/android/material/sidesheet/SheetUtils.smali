.class final Lcom/google/android/material/sidesheet/SheetUtils;
.super Ljava/lang/Object;
.source "SheetUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isSwipeMostlyHorizontal(FF)Z
    .registers 4
    .param p0, "xVelocity"    # F
    .param p1, "yVelocity"    # F

    .line 33
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
