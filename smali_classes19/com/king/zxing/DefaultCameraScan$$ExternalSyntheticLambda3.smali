.class public final synthetic Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/king/zxing/DefaultCameraScan;

.field public final synthetic f$1:Landroid/view/ScaleGestureDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/king/zxing/DefaultCameraScan;Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda3;->f$0:Lcom/king/zxing/DefaultCameraScan;

    iput-object p2, p0, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda3;->f$1:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda3;->f$0:Lcom/king/zxing/DefaultCameraScan;

    iget-object v1, p0, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda3;->f$1:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, v1, p1, p2}, Lcom/king/zxing/DefaultCameraScan;->lambda$initData$1$com-king-zxing-DefaultCameraScan(Landroid/view/ScaleGestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
