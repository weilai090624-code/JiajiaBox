.class final Lio/nekohasekai/sagernet/ui/BlurEffects;
.super Ljava/lang/Object;
.source "BlurEffects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/BlurEffects$Api31;
    }
.end annotation


# static fields
.field static final STEPS:I = 0x30


# direct methods
.method constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply(Landroid/view/View;I)V
    .registers 2

    .line 9
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/BlurEffects$Api31;->apply(Landroid/view/View;I)V

    return-void
.end method

.method static level(F)I
    .registers 2

    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
