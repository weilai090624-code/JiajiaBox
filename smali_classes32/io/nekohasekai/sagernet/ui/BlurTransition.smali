.class final Lio/nekohasekai/sagernet/ui/BlurTransition;
.super Ljava/lang/Object;
.source "BlurTransition.java"


# instance fields
.field private duration:F

.field private since:J

.field private start:F

.field private target:F

.field private value:F


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private update(J)V
    .registers 8

    .line 10
    iget v0, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->value:F

    iget v1, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->target:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-wide v0, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->since:J

    sub-long/2addr p1, v0

    long-to-float p1, p1

    iget p2, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->duration:F

    div-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->start:F

    iget v1, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->target:F

    iget v2, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->start:F

    sub-float/2addr v1, v2

    mul-float v2, p1, p1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p1

    const/high16 v4, 0x40400000    # 3.0f

    sub-float/2addr v4, v3

    mul-float/2addr v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->value:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_37

    iget p1, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->target:F

    iput p1, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->value:F

    :cond_37
    return-void
.end method


# virtual methods
.method reset()V
    .registers 2

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->target:F

    iput v0, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->start:F

    iput v0, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->value:F

    return-void
.end method

.method running()Z
    .registers 3

    .line 11
    iget v0, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->value:F

    iget v1, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->target:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method step(Z)F
    .registers 6

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/BlurTransition;->update(J)V

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_d

    move p1, v2

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 7
    :goto_e
    iget v3, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->target:F

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_2e

    iget v3, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->value:F

    iput v3, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->start:F

    iput p1, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->target:F

    iput-wide v0, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->since:J

    iget p1, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->target:F

    iget v0, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->start:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x43700000    # 240.0f

    mul-float/2addr p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->duration:F

    .line 8
    :cond_2e
    iget p1, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->value:F

    return p1
.end method
