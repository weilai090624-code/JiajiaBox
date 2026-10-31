.class final Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;
.super Lcom/google/common/math/LinearTransformation;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/LinearTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegularLinearTransformation"
.end annotation


# instance fields
.field inverse:Lcom/google/common/math/LinearTransformation;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final slope:D

.field final yIntercept:D


# direct methods
.method constructor <init>(DD)V
    .registers 6
    .param p1, "slope"    # D
    .param p3, "yIntercept"    # D

    .line 168
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    .line 169
    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    .line 170
    iput-wide p3, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 172
    return-void
.end method

.method constructor <init>(DDLcom/google/common/math/LinearTransformation;)V
    .registers 6
    .param p1, "slope"    # D
    .param p3, "yIntercept"    # D
    .param p5, "inverse"    # Lcom/google/common/math/LinearTransformation;

    .line 174
    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation;-><init>()V

    .line 175
    iput-wide p1, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    .line 176
    iput-wide p3, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    .line 177
    iput-object p5, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 178
    return-void
.end method

.method private createInverse()Lcom/google/common/math/LinearTransformation;
    .registers 12

    .line 212
    iget-wide v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_20

    .line 213
    new-instance v0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iget-wide v3, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    div-double v6, v1, v3

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iget-wide v3, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    mul-double v3, v3, v1

    iget-wide v1, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    div-double v8, v3, v1

    move-object v5, v0

    move-object v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;-><init>(DDLcom/google/common/math/LinearTransformation;)V

    return-object v0

    .line 215
    :cond_20
    new-instance v0, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;

    iget-wide v1, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    invoke-direct {v0, v1, v2, p0}, Lcom/google/common/math/LinearTransformation$VerticalLinearTransformation;-><init>(DLcom/google/common/math/LinearTransformation;)V

    return-object v0
.end method


# virtual methods
.method public inverse()Lcom/google/common/math/LinearTransformation;
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    .line 203
    .local v0, "result":Lcom/google/common/math/LinearTransformation;
    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->createInverse()Lcom/google/common/math/LinearTransformation;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->inverse:Lcom/google/common/math/LinearTransformation;

    goto :goto_c

    :cond_b
    move-object v1, v0

    :goto_c
    return-object v1
.end method

.method public isHorizontal()Z
    .registers 6

    .line 187
    iget-wide v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isVertical()Z
    .registers 2

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public slope()D
    .registers 3

    .line 192
    iget-wide v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 208
    iget-wide v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "y = %g * x + %g"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(D)D
    .registers 7
    .param p1, "x"    # D

    .line 197
    iget-wide v0, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    mul-double v0, v0, p1

    iget-wide v2, p0, Lcom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    add-double/2addr v0, v2

    return-wide v0
.end method
