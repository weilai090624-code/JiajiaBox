.class public Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
.super Ljava/lang/Object;
.source "MaterialContainerTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/platform/MaterialContainerTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressThresholds"
.end annotation


# instance fields
.field private final end:F

.field private final start:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3
    .param p1, "start"    # F
    .param p2, "end"    # F

    .line 1548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1549
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->start:F

    .line 1550
    iput p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->end:F

    .line 1551
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1539
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->start:F

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)F
    .registers 2
    .param p0, "x0"    # Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    .line 1539
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->end:F

    return v0
.end method


# virtual methods
.method public getEnd()F
    .registers 2

    .line 1560
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->end:F

    return v0
.end method

.method public getStart()F
    .registers 2

    .line 1555
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;->start:F

    return v0
.end method
