.class Landroidx/core/view/WindowInsetsCompat$BuilderImpl;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl"
.end annotation


# instance fields
.field private final mInsets:Landroidx/core/view/WindowInsetsCompat;

.field mInsetsTypeMask:[Landroidx/core/graphics/Insets;


# direct methods
.method constructor <init>()V
    .registers 4

    .line 1623
    new-instance v0, Landroidx/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroidx/core/view/WindowInsetsCompat;

    invoke-direct {v0, v1}, Landroidx/core/view/WindowInsetsCompat;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 1624
    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 2
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 1626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1627
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 1628
    return-void
.end method


# virtual methods
.method protected final applyInsetTypes()V
    .registers 6

    .line 1672
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    if-eqz v0, :cond_5a

    .line 1673
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v2

    aget-object v0, v0, v2

    .line 1674
    .local v0, "statusBars":Landroidx/core/graphics/Insets;
    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v4

    aget-object v2, v2, v4

    .line 1678
    .local v2, "navigationBars":Landroidx/core/graphics/Insets;
    if-nez v2, :cond_1e

    .line 1679
    iget-object v4, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v4, v3}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v2

    .line 1681
    :cond_1e
    if-nez v0, :cond_26

    .line 1682
    iget-object v3, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v3, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 1685
    :cond_26
    invoke-static {v0, v2}, Landroidx/core/graphics/Insets;->max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)V

    .line 1687
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/16 v3, 0x10

    invoke-static {v3}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v3

    aget-object v1, v1, v3

    .line 1688
    .local v1, "i":Landroidx/core/graphics/Insets;
    if-eqz v1, :cond_3c

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemGestureInsets(Landroidx/core/graphics/Insets;)V

    .line 1690
    :cond_3c
    iget-object v3, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/16 v4, 0x20

    invoke-static {v4}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v4

    aget-object v1, v3, v4

    .line 1691
    if-eqz v1, :cond_4b

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setMandatorySystemGestureInsets(Landroidx/core/graphics/Insets;)V

    .line 1693
    :cond_4b
    iget-object v3, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/16 v4, 0x40

    invoke-static {v4}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v4

    aget-object v1, v3, v4

    .line 1694
    if-eqz v1, :cond_5a

    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setTappableElementInsets(Landroidx/core/graphics/Insets;)V

    .line 1696
    .end local v0    # "statusBars":Landroidx/core/graphics/Insets;
    .end local v1    # "i":Landroidx/core/graphics/Insets;
    .end local v2    # "navigationBars":Landroidx/core/graphics/Insets;
    :cond_5a
    return-void
.end method

.method build()Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 1700
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->applyInsetTypes()V

    .line 1701
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method setDisplayCutout(Landroidx/core/view/DisplayCutoutCompat;)V
    .registers 2
    .param p1, "displayCutout"    # Landroidx/core/view/DisplayCutoutCompat;

    .line 1640
    return-void
.end method

.method setInsets(ILandroidx/core/graphics/Insets;)V
    .registers 6
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Landroidx/core/graphics/Insets;

    .line 1644
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    if-nez v0, :cond_a

    .line 1645
    const/16 v0, 0x9

    new-array v0, v0, [Landroidx/core/graphics/Insets;

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    .line 1647
    :cond_a
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_b
    const/16 v1, 0x100

    if-gt v0, v1, :cond_1f

    .line 1648
    and-int v1, p1, v0

    if-nez v1, :cond_14

    .line 1649
    goto :goto_1c

    .line 1651
    :cond_14
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v2

    aput-object p2, v1, v2

    .line 1647
    :goto_1c
    shl-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1653
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method setInsetsIgnoringVisibility(ILandroidx/core/graphics/Insets;)V
    .registers 5
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Landroidx/core/graphics/Insets;

    .line 1656
    const/16 v0, 0x8

    if-eq p1, v0, :cond_5

    .line 1662
    return-void

    .line 1659
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ignoring visibility inset not available for IME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setMandatorySystemGestureInsets(Landroidx/core/graphics/Insets;)V
    .registers 2
    .param p1, "insets"    # Landroidx/core/graphics/Insets;

    .line 1634
    return-void
.end method

.method setStableInsets(Landroidx/core/graphics/Insets;)V
    .registers 2
    .param p1, "insets"    # Landroidx/core/graphics/Insets;

    .line 1638
    return-void
.end method

.method setSystemGestureInsets(Landroidx/core/graphics/Insets;)V
    .registers 2
    .param p1, "insets"    # Landroidx/core/graphics/Insets;

    .line 1632
    return-void
.end method

.method setSystemWindowInsets(Landroidx/core/graphics/Insets;)V
    .registers 2
    .param p1, "insets"    # Landroidx/core/graphics/Insets;

    .line 1630
    return-void
.end method

.method setTappableElementInsets(Landroidx/core/graphics/Insets;)V
    .registers 2
    .param p1, "insets"    # Landroidx/core/graphics/Insets;

    .line 1636
    return-void
.end method

.method setVisible(IZ)V
    .registers 3
    .param p1, "typeMask"    # I
    .param p2, "visible"    # Z

    .line 1664
    return-void
.end method
