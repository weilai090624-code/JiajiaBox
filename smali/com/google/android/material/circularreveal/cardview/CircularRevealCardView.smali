.class public Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;
.super Lcom/google/android/material/card/MaterialCardView;
.source "CircularRevealCardView.java"

# interfaces
.implements Lcom/google/android/material/circularreveal/CircularRevealWidget;


# instance fields
.field private final helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-direct {v0, p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;-><init>(Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V

    iput-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    .line 43
    return-void
.end method


# virtual methods
.method public actualDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 98
    invoke-super {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->draw(Landroid/graphics/Canvas;)V

    .line 99
    return-void
.end method

.method public actualIsOpaque()Z
    .registers 2

    .line 112
    invoke-super {p0}, Lcom/google/android/material/card/MaterialCardView;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public buildCircularRevealCache()V
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildCircularRevealCache()V

    .line 48
    return-void
.end method

.method public destroyCircularRevealCache()V
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->destroyCircularRevealCache()V

    .line 53
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 89
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_a

    .line 90
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->draw(Landroid/graphics/Canvas;)V

    goto :goto_d

    .line 92
    :cond_a
    invoke-super {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->draw(Landroid/graphics/Canvas;)V

    .line 94
    :goto_d
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getCircularRevealScrimColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    if-eqz v0, :cond_b

    .line 104
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->isOpaque()Z

    move-result v0

    return v0

    .line 106
    :cond_b
    invoke-super {p0}, Lcom/google/android/material/card/MaterialCardView;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 84
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 68
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setCircularRevealScrimColor(I)V

    .line 69
    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .registers 3
    .param p1, "revealInfo"    # Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    .line 57
    iget-object v0, p0, Lcom/google/android/material/circularreveal/cardview/CircularRevealCardView;->helper:Lcom/google/android/material/circularreveal/CircularRevealHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    .line 58
    return-void
.end method
