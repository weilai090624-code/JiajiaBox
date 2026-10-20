.class public final Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;
.super Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
.source "PinchZoomPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;",
        "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
        "()V",
        "isDoingPinchZoom",
        "",
        "maxTextSize",
        "",
        "getMaxTextSize",
        "()F",
        "setMaxTextSize",
        "(F)V",
        "minTextSize",
        "getMinTextSize",
        "setMinTextSize",
        "pinchFactor",
        "getDistanceBetweenTouches",
        "event",
        "Landroid/view/MotionEvent;",
        "onAttached",
        "",
        "editText",
        "Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;",
        "onTouchEvent",
        "updateTextSize",
        "size",
        "Companion",
        "editorkit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin$Companion;

.field public static final DEFAULT_MAX_TEXT_SIZE:F = 20.0f

.field public static final DEFAULT_MIN_TEXT_SIZE:F = 10.0f

.field public static final PLUGIN_ID:Ljava/lang/String; = "pinchzoom-0361"


# instance fields
.field private isDoingPinchZoom:Z

.field private maxTextSize:F

.field private minTextSize:F

.field private pinchFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->Companion:Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    const-string v0, "pinchzoom-0361"

    invoke-direct {p0, v0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;-><init>(Ljava/lang/String;)V

    .line 28
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->minTextSize:F

    .line 29
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->maxTextSize:F

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->pinchFactor:F

    .line 26
    return-void
.end method

.method private final getDistanceBetweenTouches(Landroid/view/MotionEvent;)F
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 63
    .local v1, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v0, v2

    .line 64
    .local v0, "y":F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private final updateTextSize(F)Z
    .locals 4
    .param p1, "size"    # F

    .line 68
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    .line 69
    iget v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->minTextSize:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->minTextSize:F

    goto :goto_0

    .line 70
    :cond_0
    iget v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->maxTextSize:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->maxTextSize:F

    goto :goto_0

    .line 71
    :cond_1
    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float v2, p1, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v1, v2, v1

    .line 68
    :goto_0
    invoke-virtual {v0, v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setTextSize(F)V

    .line 73
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final getMaxTextSize()F
    .locals 1

    .line 29
    iget v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->maxTextSize:F

    return v0
.end method

.method public final getMinTextSize()F
    .locals 1

    .line 28
    iget v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->minTextSize:F

    return v0
.end method

.method public onAttached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 2
    .param p1, "editText"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onAttached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    .line 36
    const-string v0, "pinchzoom-0361"

    const-string v1, "PinchZoom plugin loaded successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 44
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 45
    invoke-direct {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->getDistanceBetweenTouches(Landroid/view/MotionEvent;)F

    move-result v0

    .line 46
    .local v0, "distance":F
    iget-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->isDoingPinchZoom:Z

    if-nez v1, :cond_0

    .line 48
    nop

    .line 47
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 47
    nop

    .line 49
    .local v1, "scaledDensity":F
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getTextSize()F

    move-result v2

    .line 51
    .local v2, "textSize":F
    div-float v3, v2, v1

    div-float/2addr v3, v0

    iput v3, p0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->pinchFactor:F

    .line 52
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->isDoingPinchZoom:Z

    .line 54
    .end local v1    # "scaledDensity":F
    .end local v2    # "textSize":F
    :cond_0
    iget v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->pinchFactor:F

    mul-float v1, v1, v0

    invoke-direct {p0, v1}, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->updateTextSize(F)Z

    move-result v1

    return v1

    .line 42
    .end local v0    # "distance":F
    :pswitch_1
    iput-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->isDoingPinchZoom:Z

    .line 58
    :cond_1
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setMaxTextSize(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 29
    iput p1, p0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->maxTextSize:F

    return-void
.end method

.method public final setMinTextSize(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 28
    iput p1, p0, Lcom/blacksquircle/ui/editorkit/plugin/pinchzoom/PinchZoomPlugin;->minTextSize:F

    return-void
.end method
