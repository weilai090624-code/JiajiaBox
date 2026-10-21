.class abstract Landroidx/interpolator/view/animation/LookupTableInterpolator;
.super Ljava/lang/Object;
.source "LookupTableInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mStepSize:F

.field private final mValues:[F


# direct methods
.method protected constructor <init>([F)V
    .locals 2
    .param p1, "values"    # [F

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    .line 32
    iget-object v0, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mValues:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Landroidx/interpolator/view/animation/LookupTableInterpolator;->mStepSize:F

    .line 33
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 2

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/AppMotion;->ease(F)F
    move-result p1
    return p1
.end method
