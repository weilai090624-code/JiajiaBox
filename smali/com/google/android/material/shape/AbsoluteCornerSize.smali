.class public final Lcom/google/android/material/shape/AbsoluteCornerSize;
.super Ljava/lang/Object;
.source "AbsoluteCornerSize.java"

# interfaces
.implements Lcom/google/android/material/shape/CornerSize;


# instance fields
.field private final size:F


# direct methods
.method public constructor <init>(F)V
    .registers 2
    .param p1, "size"    # F

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 46
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 47
    return v0

    .line 49
    :cond_4
    instance-of v1, p1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 50
    return v2

    .line 52
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    .line 53
    .local v1, "that":Lcom/google/android/material/shape/AbsoluteCornerSize;
    iget v3, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    iget v4, v1, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public getCornerSize()F
    .registers 2

    .line 41
    iget v0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    return v0
.end method

.method public getCornerSize(Landroid/graphics/RectF;)F
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .line 34
    iget v0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 58
    iget v0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    move-object v0, v1

    .line 59
    .local v0, "hashedFields":[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method
