.class public Lcom/king/zxing/manager/AmbientLightManager;
.super Ljava/lang/Object;
.source "AmbientLightManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/king/zxing/manager/AmbientLightManager$OnLightSensorEventListener;
    }
.end annotation


# static fields
.field protected static final BRIGHT_LUX:F = 100.0f

.field protected static final DARK_LUX:F = 45.0f

.field private static final INTERVAL_TIME:I = 0xc8


# instance fields
.field private brightLightLux:F

.field private darkLightLux:F

.field private isLightSensorEnabled:Z

.field private lastTime:J

.field private lightSensor:Landroid/hardware/Sensor;

.field private mOnLightSensorEventListener:Lcom/king/zxing/manager/AmbientLightManager$OnLightSensorEventListener;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/king/zxing/manager/AmbientLightManager;->darkLightLux:F

    .line 43
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/king/zxing/manager/AmbientLightManager;->brightLightLux:F

    .line 55
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/king/zxing/manager/AmbientLightManager;->sensorManager:Landroid/hardware/SensorManager;

    .line 56
    iget-object v0, p0, Lcom/king/zxing/manager/AmbientLightManager;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/king/zxing/manager/AmbientLightManager;->lightSensor:Landroid/hardware/Sensor;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/king/zxing/manager/AmbientLightManager;->isLightSensorEnabled:Z

    .line 58
    return-void
.end method


# virtual methods
.method public isLightSensorEnabled()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/king/zxing/manager/AmbientLightManager;->isLightSensorEnabled:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 113
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 75
    iget-boolean v0, p0, Lcom/king/zxing/manager/AmbientLightManager;->isLightSensorEnabled:Z

    if-eqz v0, :cond_2

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 77
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/king/zxing/manager/AmbientLightManager;->lastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    iput-wide v0, p0, Lcom/king/zxing/manager/AmbientLightManager;->lastTime:J

    .line 82
    iget-object v2, p0, Lcom/king/zxing/manager/AmbientLightManager;->mOnLightSensorEventListener:Lcom/king/zxing/manager/AmbientLightManager$OnLightSensorEventListener;

    if-eqz v2, :cond_2

    .line 83
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 84
    .local v2, "lightLux":F
    iget-object v4, p0, Lcom/king/zxing/manager/AmbientLightManager;->mOnLightSensorEventListener:Lcom/king/zxing/manager/AmbientLightManager$OnLightSensorEventListener;

    invoke-interface {v4, v2}, Lcom/king/zxing/manager/AmbientLightManager$OnLightSensorEventListener;->onSensorChanged(F)V

    .line 85
    iget v4, p0, Lcom/king/zxing/manager/AmbientLightManager;->darkLightLux:F

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_1

    .line 86
    iget-object v3, p0, Lcom/king/zxing/manager/AmbientLightManager;->mOnLightSensorEventListener:Lcom/king/zxing/manager/AmbientLightManager$OnLightSensorEventListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v2}, Lcom/king/zxing/manager/AmbientLightManager$OnLightSensorEventListener;->onSensorChanged(ZF)V

    goto :goto_0

    .line 87
    :cond_1
    iget v4, p0, Lcom/king/zxing/manager/AmbientLightManager;->brightLightLux:F

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_2

    .line 88
    iget-object v4, p0, Lcom/king/zxing/manager/AmbientLightManager;->mOnLightSensorEventListener:Lcom/king/zxing/manager/AmbientLightManager$OnLightSensorEventListener;

    invoke-interface {v4, v3, v2}, Lcom/king/zxing/manager/AmbientLightManager$OnLightSensorEventListener;->onSensorChanged(ZF)V

    .line 92
    .end local v0    # "currentTime":J
    .end local v2    # "lightLux":F
    :cond_2
    :goto_0
    return-void
.end method

.method public register()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/king/zxing/manager/AmbientLightManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/king/zxing/manager/AmbientLightManager;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/king/zxing/manager/AmbientLightManager;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/king/zxing/manager/AmbientLightManager;->lightSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 64
    :cond_0
    return-void
.end method

.method public setBrightLightLux(F)V
    .locals 0
    .param p1, "lightLux"    # F

    .line 107
    iput p1, p0, Lcom/king/zxing/manager/AmbientLightManager;->brightLightLux:F

    .line 108
    return-void
.end method

.method public setDarkLightLux(F)V
    .locals 0
    .param p1, "lightLux"    # F

    .line 99
    iput p1, p0, Lcom/king/zxing/manager/AmbientLightManager;->darkLightLux:F

    .line 100
    return-void
.end method

.method public setLightSensorEnabled(Z)V
    .locals 0
    .param p1, "lightSensorEnabled"    # Z

    .line 124
    iput-boolean p1, p0, Lcom/king/zxing/manager/AmbientLightManager;->isLightSensorEnabled:Z

    .line 125
    return-void
.end method

.method public setOnLightSensorEventListener(Lcom/king/zxing/manager/AmbientLightManager$OnLightSensorEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/king/zxing/manager/AmbientLightManager$OnLightSensorEventListener;

    .line 132
    iput-object p1, p0, Lcom/king/zxing/manager/AmbientLightManager;->mOnLightSensorEventListener:Lcom/king/zxing/manager/AmbientLightManager$OnLightSensorEventListener;

    .line 133
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/king/zxing/manager/AmbientLightManager;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/king/zxing/manager/AmbientLightManager;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/king/zxing/manager/AmbientLightManager;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 70
    :cond_0
    return-void
.end method
