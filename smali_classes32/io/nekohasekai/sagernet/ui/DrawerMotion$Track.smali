.class public final Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;
.super Ljava/lang/Object;
.source "DrawerMotion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Track"
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final duration:F

.field private final endVelocity:F

.field private final error:F

.field private final omega:F

.field private final start:F

.field private final target:F


# direct methods
.method public constructor <init>(FFFFF)V
    .registers 7

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->start:F

    iput p2, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->target:F

    sub-float/2addr p1, p2

    iput p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->a:F

    iget p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->a:F

    mul-float p1, p1, p5

    add-float/2addr p3, p1

    iput p3, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->b:F

    .line 10
    iput p5, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->omega:F

    iput p4, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->duration:F

    .line 11
    neg-float p1, p5

    mul-float p1, p1, p4

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 12
    iget p2, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->a:F

    iget p3, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->b:F

    mul-float p3, p3, p4

    add-float/2addr p2, p3

    mul-float p2, p2, p1

    iput p2, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->error:F

    .line 13
    iget p2, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->b:F

    iget p3, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->a:F

    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->b:F

    mul-float v0, v0, p4

    add-float/2addr p3, v0

    mul-float p5, p5, p3

    sub-float/2addr p2, p5

    mul-float p2, p2, p1

    iput p2, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->endVelocity:F

    .line 14
    return-void
.end method


# virtual methods
.method public value(F)F
    .registers 8

    .line 16
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_8

    iget p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->start:F

    return p1

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_11

    iget p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->target:F

    return p1

    .line 17
    :cond_11
    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->duration:F

    mul-float v0, v0, p1

    iget v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->omega:F

    neg-float v1, v1

    mul-float v1, v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 18
    mul-float v2, p1, p1

    mul-float v2, v2, p1

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float v3, v3, p1

    const/high16 v4, -0x3e900000    # -15.0f

    add-float/2addr v3, v4

    mul-float v3, v3, p1

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v3, v4

    mul-float v3, v3, v2

    .line 19
    const/high16 v4, 0x40400000    # 3.0f

    mul-float v4, v4, p1

    const/high16 v5, 0x40e00000    # 7.0f

    sub-float/2addr v5, v4

    mul-float p1, p1, v5

    const/high16 v4, -0x3f800000    # -4.0f

    add-float/2addr p1, v4

    mul-float v2, v2, p1

    .line 20
    iget p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->target:F

    iget v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->a:F

    iget v5, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->b:F

    mul-float v5, v5, v0

    add-float/2addr v4, v5

    mul-float v4, v4, v1

    add-float/2addr p1, v4

    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->error:F

    mul-float v0, v0, v3

    sub-float/2addr p1, v0

    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->endVelocity:F

    iget v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->duration:F

    mul-float v0, v0, v1

    mul-float v0, v0, v2

    sub-float/2addr p1, v0

    return p1
.end method

.method public velocity(F)F
    .registers 9

    .line 23
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_8

    return v0

    .line 24
    :cond_8
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->duration:F

    mul-float v0, v0, p1

    iget v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->omega:F

    neg-float v2, v2

    mul-float v2, v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 25
    const/high16 v3, 0x41f00000    # 30.0f

    mul-float v3, v3, p1

    mul-float v3, v3, p1

    sub-float/2addr v1, p1

    mul-float v3, v3, v1

    mul-float v3, v3, v1

    .line 26
    mul-float v1, p1, p1

    const/high16 v4, 0x41700000    # 15.0f

    mul-float v4, v4, p1

    const/high16 v5, 0x41e00000    # 28.0f

    sub-float/2addr v5, v4

    mul-float p1, p1, v5

    const/high16 v4, -0x3ec00000    # -12.0f

    add-float/2addr p1, v4

    mul-float v1, v1, p1

    .line 27
    iget p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->b:F

    iget v4, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->omega:F

    iget v5, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->a:F

    iget v6, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->b:F

    mul-float v6, v6, v0

    add-float/2addr v5, v6

    mul-float v4, v4, v5

    sub-float/2addr p1, v4

    mul-float p1, p1, v2

    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->error:F

    mul-float v0, v0, v3

    iget v2, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->duration:F

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->endVelocity:F

    mul-float v0, v0, v1

    sub-float/2addr p1, v0

    return p1
.end method
