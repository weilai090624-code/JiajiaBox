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
.field private final start:F

.field private final target:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->start:F

    iput p2, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->target:F

    return-void
.end method


# virtual methods
.method public at(F)F
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_8

    .line 29
    iget p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->start:F

    return p1

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_11

    iget p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->target:F

    return p1

    .line 30
    :cond_11
    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->start:F

    iget v1, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->target:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public value(F)F
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_8

    .line 24
    iget p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->start:F

    return p1

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_11

    iget p1, p0, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->target:F

    return p1

    .line 25
    :cond_11
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/AppMotion;->ease(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerMotion$Track;->at(F)F

    move-result p1

    return p1
.end method
