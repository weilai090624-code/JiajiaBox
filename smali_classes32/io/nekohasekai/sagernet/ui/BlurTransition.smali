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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private update(J)V
    .registers 6

    .line 24
    iget v0, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->value:F

    iget v1, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->target:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    goto :goto_31

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

    sub-float/2addr v1, v0

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/AppMotion;->ease(F)F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->value:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_31

    iget p1, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->target:F

    iput p1, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->value:F

    :cond_31
    :goto_31
    return-void
.end method


# virtual methods
.method reset()V
    .registers 2

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->target:F

    iput v0, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->start:F

    iput v0, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->value:F

    return-void
.end method

.method running()Z
    .registers 3

    .line 25
    iget v0, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->value:F

    iget v1, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->target:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method step(Z)F
    .registers 6

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/BlurTransition;->update(J)V

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_e

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    .line 21
    :goto_f
    iget v3, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->target:F

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_2c

    iget v3, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->value:F

    iput v3, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->start:F

    iput p1, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->target:F

    iput-wide v0, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->since:J

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x43d20000    # 420.0f

    mul-float p1, p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->duration:F

    .line 22
    :cond_2c
    iget p1, p0, Lio/nekohasekai/sagernet/ui/BlurTransition;->value:F

    return p1
.end method
