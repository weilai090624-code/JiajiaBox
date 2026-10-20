.class public final Lio/nekohasekai/sagernet/ktx/DimensKt;
.super Ljava/lang/Object;
.source "Dimens.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u000e\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "density",
        "",
        "dp2pxf",
        "dpValue",
        "",
        "dp2px",
        "app_ossDebug"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final density:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lio/nekohasekai/sagernet/ktx/DimensKt;->density:F

    return-void
.end method

.method public static final dp2px(I)I
    .locals 2
    .param p0, "dpValue"    # I

    .line 13
    invoke-static {p0}, Lio/nekohasekai/sagernet/ktx/DimensKt;->dp2pxf(I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    return v0
.end method

.method public static final dp2pxf(I)F
    .locals 2
    .param p0, "dpValue"    # I

    .line 9
    sget v0, Lio/nekohasekai/sagernet/ktx/DimensKt;->density:F

    int-to-float v1, p0

    mul-float v0, v0, v1

    return v0
.end method
