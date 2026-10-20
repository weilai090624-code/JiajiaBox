.class public final Landroidx/camera/view/transform/OutputTransform;
.super Ljava/lang/Object;
.source "OutputTransform.java"


# instance fields
.field final mMatrix:Landroid/graphics/Matrix;

.field final mViewPortSize:Landroid/util/Size;


# direct methods
.method public constructor <init>(Landroid/graphics/Matrix;Landroid/util/Size;)V
    .locals 0
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "viewPortSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "viewPortSize"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroidx/camera/view/transform/OutputTransform;->mMatrix:Landroid/graphics/Matrix;

    .line 58
    iput-object p2, p0, Landroidx/camera/view/transform/OutputTransform;->mViewPortSize:Landroid/util/Size;

    .line 59
    return-void
.end method


# virtual methods
.method getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/camera/view/transform/OutputTransform;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method getViewPortSize()Landroid/util/Size;
    .locals 1

    .line 68
    iget-object v0, p0, Landroidx/camera/view/transform/OutputTransform;->mViewPortSize:Landroid/util/Size;

    return-object v0
.end method
