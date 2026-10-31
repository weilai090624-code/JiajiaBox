.class public Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
.super Lcom/google/android/material/shape/ShapePath$PathOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathQuadOperation"
.end annotation


# instance fields
.field public controlX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public controlY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endX:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public endY:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 593
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathOperation;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
    .param p1, "x1"    # F

    .line 593
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->setControlX(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
    .param p1, "x1"    # F

    .line 593
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->setControlY(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
    .param p1, "x1"    # F

    .line 593
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->setEndX(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/material/shape/ShapePath$PathQuadOperation;F)V
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/shape/ShapePath$PathQuadOperation;
    .param p1, "x1"    # F

    .line 593
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->setEndY(F)V

    return-void
.end method

.method private getControlX()F
    .registers 2

    .line 649
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlX:F

    return v0
.end method

.method private getControlY()F
    .registers 2

    .line 633
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlY:F

    return v0
.end method

.method private getEndX()F
    .registers 2

    .line 625
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endX:F

    return v0
.end method

.method private getEndY()F
    .registers 2

    .line 641
    iget v0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endY:F

    return v0
.end method

.method private setControlX(F)V
    .registers 2
    .param p1, "controlX"    # F

    .line 653
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlX:F

    .line 654
    return-void
.end method

.method private setControlY(F)V
    .registers 2
    .param p1, "controlY"    # F

    .line 637
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->controlY:F

    .line 638
    return-void
.end method

.method private setEndX(F)V
    .registers 2
    .param p1, "endX"    # F

    .line 629
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endX:F

    .line 630
    return-void
.end method

.method private setEndY(F)V
    .registers 2
    .param p1, "endY"    # F

    .line 645
    iput p1, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->endY:F

    .line 646
    return-void
.end method


# virtual methods
.method public applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .registers 8
    .param p1, "transform"    # Landroid/graphics/Matrix;
    .param p2, "path"    # Landroid/graphics/Path;

    .line 617
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->matrix:Landroid/graphics/Matrix;

    .line 618
    .local v0, "inverse":Landroid/graphics/Matrix;
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 619
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 620
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->getControlX()F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->getControlY()F

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->getEndX()F

    move-result v3

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$PathQuadOperation;->getEndY()F

    move-result v4

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 621
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 622
    return-void
.end method
