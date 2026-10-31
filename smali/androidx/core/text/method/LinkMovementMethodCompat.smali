.class public Landroidx/core/text/method/LinkMovementMethodCompat;
.super Landroid/text/method/LinkMovementMethod;
.source "LinkMovementMethodCompat.java"


# static fields
.field private static sInstance:Landroidx/core/text/method/LinkMovementMethodCompat;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroidx/core/text/method/LinkMovementMethodCompat;
    .registers 1

    .line 88
    sget-object v0, Landroidx/core/text/method/LinkMovementMethodCompat;->sInstance:Landroidx/core/text/method/LinkMovementMethodCompat;

    if-nez v0, :cond_b

    .line 89
    new-instance v0, Landroidx/core/text/method/LinkMovementMethodCompat;

    invoke-direct {v0}, Landroidx/core/text/method/LinkMovementMethodCompat;-><init>()V

    sput-object v0, Landroidx/core/text/method/LinkMovementMethodCompat;->sInstance:Landroidx/core/text/method/LinkMovementMethodCompat;

    .line 92
    :cond_b
    sget-object v0, Landroidx/core/text/method/LinkMovementMethodCompat;->sInstance:Landroidx/core/text/method/LinkMovementMethodCompat;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .line 45
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastV()Z

    move-result v0

    if-nez v0, :cond_60

    .line 46
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 48
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    if-nez v0, :cond_60

    .line 49
    :cond_f
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 50
    .local v2, "x":I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 52
    .local v3, "y":I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    .line 53
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 55
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v2, v4

    .line 56
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    .line 58
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 60
    .local v4, "layout":Landroid/text/Layout;
    if-ltz v3, :cond_55

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v5

    if-le v3, v5, :cond_3a

    goto :goto_55

    .line 63
    :cond_3a
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    .line 64
    .local v5, "line":I
    int-to-float v6, v2

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_53

    int-to-float v6, v2

    .line 65
    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_51

    goto :goto_53

    :cond_51
    const/4 v1, 0x0

    goto :goto_54

    :cond_53
    :goto_53
    nop

    .local v1, "isOutOfLineBounds":Z
    :goto_54
    goto :goto_56

    .line 61
    .end local v1    # "isOutOfLineBounds":Z
    .end local v5    # "line":I
    :cond_55
    :goto_55
    const/4 v1, 0x1

    .line 68
    .restart local v1    # "isOutOfLineBounds":Z
    :goto_56
    if-eqz v1, :cond_60

    .line 69
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 73
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    .line 78
    .end local v0    # "action":I
    .end local v1    # "isOutOfLineBounds":Z
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "layout":Landroid/text/Layout;
    :cond_60
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
