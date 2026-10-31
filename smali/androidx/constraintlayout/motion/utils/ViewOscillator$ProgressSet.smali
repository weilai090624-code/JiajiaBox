.class Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;
.super Landroidx/constraintlayout/motion/utils/ViewOscillator;
.source "ViewOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressSet"
.end annotation


# instance fields
.field mNoMethod:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 178
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewOscillator;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;->mNoMethod:Z

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;F)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "t"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "t"
        }
    .end annotation

    .line 183
    const-string/jumbo v0, "unable to setProgress"

    const-string v1, "ViewOscillator"

    instance-of v2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v2, :cond_14

    .line 184
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;->get(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    goto :goto_4e

    .line 186
    :cond_14
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;->mNoMethod:Z

    if-eqz v2, :cond_19

    .line 187
    return-void

    .line 189
    :cond_19
    const/4 v2, 0x0

    .line 191
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "setProgress"

    new-array v7, v4, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_2d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_2d} :catch_2f

    move-object v2, v5

    .line 194
    goto :goto_32

    .line 192
    :catch_2f
    move-exception v5

    .line 193
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    iput-boolean v4, p0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;->mNoMethod:Z

    .line 195
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :goto_32
    if-eqz v2, :cond_4e

    .line 197
    :try_start_34
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;->get(F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v5, v4, v3

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_34 .. :try_end_43} :catch_49
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_34 .. :try_end_43} :catch_44

    goto :goto_4d

    .line 200
    :catch_44
    move-exception v3

    .line 201
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 198
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_49
    move-exception v3

    .line 199
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :goto_4d
    nop

    .line 205
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_4e
    :goto_4e
    return-void
.end method
