.class public final synthetic Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/king/zxing/manager/AmbientLightManager$OnLightSensorEventListener;


# instance fields
.field public final synthetic f$0:Lcom/king/zxing/DefaultCameraScan;


# direct methods
.method public synthetic constructor <init>(Lcom/king/zxing/DefaultCameraScan;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda4;->f$0:Lcom/king/zxing/DefaultCameraScan;

    return-void
.end method


# virtual methods
.method public synthetic onSensorChanged(F)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/king/zxing/manager/AmbientLightManager$OnLightSensorEventListener$-CC;->$default$onSensorChanged(Lcom/king/zxing/manager/AmbientLightManager$OnLightSensorEventListener;F)V

    return-void
.end method

.method public final onSensorChanged(ZF)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/king/zxing/DefaultCameraScan$$ExternalSyntheticLambda4;->f$0:Lcom/king/zxing/DefaultCameraScan;

    invoke-virtual {v0, p1, p2}, Lcom/king/zxing/DefaultCameraScan;->lambda$initData$2$com-king-zxing-DefaultCameraScan(ZF)V

    return-void
.end method
