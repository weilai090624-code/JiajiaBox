.class public final Lmoe/matsuri/nb4a/ui/DrawerDialogLayout;
.super Ljava/lang/Object;
.source "DrawerDialogLayout.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/view/Window;Landroid/content/Context;)V
    .registers 7

    .line 14
    if-nez p0, :cond_3

    return-void

    .line 15
    :cond_3
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/DrawerAppearance;->settingsWindow(Landroid/view/Window;)V

    .line 16
    move-object v0, p1

    .line 17
    :goto_7
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1c

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1c

    .line 18
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 19
    if-ne v1, v0, :cond_19

    goto :goto_1c

    .line 20
    :cond_19
    nop

    .line 21
    move-object v0, v1

    goto :goto_7

    .line 22
    :cond_1c
    :goto_1c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3f70a3d7    # 0.94f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 23
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_a4

    .line 24
    check-cast v0, Landroid/app/Activity;

    .line 25
    const v2, 0x7f0a01e2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 26
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 27
    if-eqz v2, :cond_a4

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_a4

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_a4

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 29
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    const/4 p1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 30
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 31
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 32
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 33
    const/16 v2, 0x13

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 34
    iget v2, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v4, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 35
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 36
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 39
    :cond_a4
    const/4 p1, -0x2

    invoke-virtual {p0, v1, p1}, Landroid/view/Window;->setLayout(II)V

    .line 40
    return-void
.end method
