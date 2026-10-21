.class final Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;
.super Landroid/graphics/drawable/GradientDrawable;
.source "DrawerAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerAppearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Surface"
.end annotation


# instance fields
.field border:I

.field density:F

.field fill:I


# direct methods
.method constructor <init>(IIF)V
    .registers 4

    .line 33
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;->update(IIF)V

    return-void
.end method


# virtual methods
.method update(IIF)V
    .registers 5

    .line 35
    iget v0, p0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;->fill:I

    if-eq v0, p1, :cond_9

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;->setColor(I)V

    iput p1, p0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;->fill:I

    .line 36
    :cond_9
    iget p1, p0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;->border:I

    if-ne p1, p2, :cond_13

    iget p1, p0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;->density:F

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_21

    :cond_13
    const/4 p1, 0x1

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;->setStroke(II)V

    iput p2, p0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;->border:I

    .line 37
    :cond_21
    iget p1, p0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;->density:F

    cmpl-float p1, p1, p3

    if-eqz p1, :cond_30

    const/high16 p1, 0x41900000    # 18.0f

    mul-float p1, p1, p3

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;->setCornerRadius(F)V

    iput p3, p0, Lio/nekohasekai/sagernet/ui/DrawerAppearance$Surface;->density:F

    :cond_30
    return-void
.end method
