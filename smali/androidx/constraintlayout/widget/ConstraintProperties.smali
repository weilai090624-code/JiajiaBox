.class public Landroidx/constraintlayout/widget/ConstraintProperties;
.super Ljava/lang/Object;
.source "ConstraintProperties.java"


# static fields
.field public static final BASELINE:I = 0x5

.field public static final BOTTOM:I = 0x4

.field public static final END:I = 0x7

.field public static final LEFT:I = 0x1

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x6

.field public static final TOP:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1052
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_13

    .line 1053
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1054
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    .line 1058
    return-void

    .line 1056
    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Only children of ConstraintLayout.LayoutParams supported"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sideToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "side"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "side"
        }
    .end annotation

    .line 1031
    packed-switch p1, :pswitch_data_1e

    .line 1047
    const-string/jumbo v0, "undefined"

    return-object v0

    .line 1045
    :pswitch_7
    const-string v0, "end"

    return-object v0

    .line 1043
    :pswitch_a
    const-string/jumbo v0, "start"

    return-object v0

    .line 1041
    :pswitch_e
    const-string v0, "baseline"

    return-object v0

    .line 1039
    :pswitch_11
    const-string v0, "bottom"

    return-object v0

    .line 1037
    :pswitch_14
    const-string/jumbo v0, "top"

    return-object v0

    .line 1035
    :pswitch_18
    const-string v0, "right"

    return-object v0

    .line 1033
    :pswitch_1b
    const-string v0, "left"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_18
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public addToHorizontalChain(II)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 9
    .param p1, "leftId"    # I
    .param p2, "rightId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leftId",
            "rightId"
        }
    .end annotation

    .line 738
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_6

    const/4 v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v2, 0x2

    :goto_7
    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 739
    if-nez p2, :cond_f

    const/4 v2, 0x2

    goto :goto_10

    :cond_f
    const/4 v2, 0x1

    :goto_10
    invoke-virtual {p0, v0, p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 740
    if-eqz p1, :cond_2f

    .line 741
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 742
    .local v2, "leftView":Landroid/view/View;
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v4, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 743
    .local v4, "leftProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v0, v5, v1, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 745
    .end local v2    # "leftView":Landroid/view/View;
    .end local v4    # "leftProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    :cond_2f
    if-eqz p2, :cond_4b

    .line 746
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 747
    .local v2, "rightView":Landroid/view/View;
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v4, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 748
    .local v4, "rightProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v1, v5, v0, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 750
    .end local v2    # "rightView":Landroid/view/View;
    .end local v4    # "rightProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    :cond_4b
    return-object p0
.end method

.method public addToHorizontalChainRTL(II)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 9
    .param p1, "leftId"    # I
    .param p2, "rightId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leftId",
            "rightId"
        }
    .end annotation

    .line 761
    const/4 v0, 0x7

    const/4 v1, 0x6

    if-nez p1, :cond_6

    const/4 v2, 0x6

    goto :goto_7

    :cond_6
    const/4 v2, 0x7

    :goto_7
    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 762
    if-nez p2, :cond_f

    const/4 v2, 0x7

    goto :goto_10

    :cond_f
    const/4 v2, 0x6

    :goto_10
    invoke-virtual {p0, v0, p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 763
    if-eqz p1, :cond_2f

    .line 764
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 765
    .local v2, "leftView":Landroid/view/View;
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v4, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 766
    .local v4, "leftProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v0, v5, v1, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 768
    .end local v2    # "leftView":Landroid/view/View;
    .end local v4    # "leftProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    :cond_2f
    if-eqz p2, :cond_4b

    .line 769
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 770
    .local v2, "rightView":Landroid/view/View;
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v4, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 771
    .local v4, "rightProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v1, v5, v0, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 773
    .end local v2    # "rightView":Landroid/view/View;
    .end local v4    # "rightProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    :cond_4b
    return-object p0
.end method

.method public addToVerticalChain(II)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 9
    .param p1, "topId"    # I
    .param p2, "bottomId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "topId",
            "bottomId"
        }
    .end annotation

    .line 784
    const/4 v0, 0x4

    const/4 v1, 0x3

    if-nez p1, :cond_6

    const/4 v2, 0x3

    goto :goto_7

    :cond_6
    const/4 v2, 0x4

    :goto_7
    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 785
    if-nez p2, :cond_f

    const/4 v2, 0x4

    goto :goto_10

    :cond_f
    const/4 v2, 0x3

    :goto_10
    invoke-virtual {p0, v0, p2, v2, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 786
    if-eqz p1, :cond_2f

    .line 787
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 788
    .local v2, "topView":Landroid/view/View;
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v4, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 789
    .local v4, "topProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v0, v5, v1, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 791
    .end local v2    # "topView":Landroid/view/View;
    .end local v4    # "topProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    :cond_2f
    if-eqz p2, :cond_4b

    .line 792
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 793
    .local v2, "bottomView":Landroid/view/View;
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v4, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 794
    .local v4, "bottomProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v1, v5, v0, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 796
    .end local v2    # "bottomView":Landroid/view/View;
    .end local v4    # "bottomProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    :cond_4b
    return-object p0
.end method

.method public alpha(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "alpha"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 421
    return-object p0
.end method

.method public apply()V
    .registers 1

    .line 1061
    return-void
.end method

.method public center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 10
    .param p1, "firstID"    # I
    .param p2, "firstSide"    # I
    .param p3, "firstMargin"    # I
    .param p4, "secondId"    # I
    .param p5, "secondSide"    # I
    .param p6, "secondMargin"    # I
    .param p7, "bias"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "firstID",
            "firstSide",
            "firstMargin",
            "secondId",
            "secondSide",
            "secondMargin",
            "bias"
        }
    .end annotation

    .line 114
    const-string v0, "margin must be > 0"

    if-ltz p3, :cond_50

    .line 117
    if-ltz p6, :cond_4a

    .line 120
    const/4 v0, 0x0

    cmpg-float v0, p7, v0

    if-lez v0, :cond_42

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p7, v0

    if-gtz v0, :cond_42

    .line 124
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_37

    if-ne p2, v0, :cond_18

    goto :goto_37

    .line 129
    :cond_18
    const/4 v0, 0x7

    const/4 v1, 0x6

    if-eq p2, v1, :cond_2c

    if-ne p2, v0, :cond_1f

    goto :goto_2c

    .line 135
    :cond_1f
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 136
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 137
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    goto :goto_41

    .line 130
    :cond_2c
    :goto_2c
    invoke-virtual {p0, v1, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 131
    invoke-virtual {p0, v0, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 133
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    goto :goto_41

    .line 125
    :cond_37
    :goto_37
    invoke-virtual {p0, v1, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 126
    invoke-virtual {p0, v0, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 128
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 140
    :goto_41
    return-object p0

    .line 121
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bias must be between 0 and 1 inclusive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_50
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public centerHorizontally(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 18
    .param p1, "toView"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toView"
        }
    .end annotation

    .line 207
    if-nez p1, :cond_10

    .line 208
    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_1f

    .line 210
    :cond_10
    const/4 v14, 0x0

    const/high16 v15, 0x3f000000    # 0.5f

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v12, p1

    invoke-virtual/range {v8 .. v15}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 212
    :goto_1f
    return-object p0
.end method

.method public centerHorizontally(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 9
    .param p1, "leftId"    # I
    .param p2, "leftSide"    # I
    .param p3, "leftMargin"    # I
    .param p4, "rightId"    # I
    .param p5, "rightSide"    # I
    .param p6, "rightMargin"    # I
    .param p7, "bias"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "leftId",
            "leftSide",
            "leftMargin",
            "rightId",
            "rightSide",
            "rightMargin",
            "bias"
        }
    .end annotation

    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 157
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 158
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 159
    return-object p0
.end method

.method public centerHorizontallyRtl(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 18
    .param p1, "toView"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toView"
        }
    .end annotation

    .line 222
    if-nez p1, :cond_10

    .line 223
    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_1f

    .line 225
    :cond_10
    const/4 v14, 0x0

    const/high16 v15, 0x3f000000    # 0.5f

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v13, 0x6

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v12, p1

    invoke-virtual/range {v8 .. v15}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 227
    :goto_1f
    return-object p0
.end method

.method public centerHorizontallyRtl(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 9
    .param p1, "startId"    # I
    .param p2, "startSide"    # I
    .param p3, "startMargin"    # I
    .param p4, "endId"    # I
    .param p5, "endSide"    # I
    .param p6, "endMargin"    # I
    .param p7, "bias"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startId",
            "startSide",
            "startMargin",
            "endId",
            "endSide",
            "endMargin",
            "bias"
        }
    .end annotation

    .line 175
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 176
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 177
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 178
    return-object p0
.end method

.method public centerVertically(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 18
    .param p1, "toView"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toView"
        }
    .end annotation

    .line 237
    if-nez p1, :cond_10

    .line 238
    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_1f

    .line 240
    :cond_10
    const/4 v14, 0x0

    const/high16 v15, 0x3f000000    # 0.5f

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v13, 0x3

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v12, p1

    invoke-virtual/range {v8 .. v15}, Landroidx/constraintlayout/widget/ConstraintProperties;->center(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 242
    :goto_1f
    return-object p0
.end method

.method public centerVertically(IIIIIIF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 9
    .param p1, "topId"    # I
    .param p2, "topSide"    # I
    .param p3, "topMargin"    # I
    .param p4, "bottomId"    # I
    .param p5, "bottomSide"    # I
    .param p6, "bottomMargin"    # I
    .param p7, "bias"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "topId",
            "topSide",
            "topMargin",
            "bottomId",
            "bottomSide",
            "bottomMargin",
            "bias"
        }
    .end annotation

    .line 194
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 195
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p4, p5, p6}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 196
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p7, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 197
    return-object p0
.end method

.method public connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 14
    .param p1, "startSide"    # I
    .param p2, "endID"    # I
    .param p3, "endSide"    # I
    .param p4, "margin"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startSide",
            "endID",
            "endSide",
            "margin"
        }
    .end annotation

    .line 905
    const/4 v0, 0x2

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x3

    const-string v6, "right to "

    const-string v7, " undefined"

    const/4 v8, -0x1

    packed-switch p1, :pswitch_data_232

    .line 1024
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1025
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1008
    :pswitch_39
    if-ne p3, v1, :cond_44

    .line 1009
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1010
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_4e

    .line 1011
    :cond_44
    if-ne p3, v2, :cond_56

    .line 1012
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 1013
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1017
    :goto_4e
    nop

    .line 1019
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0, p4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    goto/16 :goto_210

    .line 1015
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 994
    :pswitch_75
    if-ne p3, v2, :cond_80

    .line 995
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 996
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    goto :goto_8a

    .line 997
    :cond_80
    if-ne p3, v1, :cond_92

    .line 998
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 999
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1003
    :goto_8a
    nop

    .line 1004
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0, p4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    goto/16 :goto_210

    .line 1001
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 970
    :pswitch_b1
    const/4 v0, 0x5

    if-ne p3, v0, :cond_c8

    .line 971
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 972
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 973
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 974
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 975
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 976
    :cond_c8
    if-ne p3, v5, :cond_df

    .line 977
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    .line 978
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 979
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 980
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 981
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    goto :goto_f5

    .line 982
    :cond_df
    if-ne p3, v4, :cond_fb

    .line 983
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    .line 984
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 985
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 986
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 987
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 991
    :goto_f5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    .line 992
    goto/16 :goto_210

    .line 989
    :cond_fb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 952
    :pswitch_11a
    if-ne p3, v4, :cond_131

    .line 953
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 954
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 955
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 956
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    .line 957
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    goto :goto_147

    .line 958
    :cond_131
    if-ne p3, v5, :cond_14d

    .line 959
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 960
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 961
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 962
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    .line 963
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    .line 967
    :goto_147
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 968
    goto/16 :goto_210

    .line 965
    :cond_14d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 934
    :pswitch_16c
    if-ne p3, v5, :cond_183

    .line 935
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 936
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 937
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 938
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    .line 939
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    goto :goto_199

    .line 940
    :cond_183
    if-ne p3, v4, :cond_19e

    .line 941
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 942
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 943
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 944
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    .line 945
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    .line 949
    :goto_199
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 950
    goto :goto_210

    .line 947
    :cond_19e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :pswitch_1bd
    if-ne p3, v3, :cond_1c8

    .line 921
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 922
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    goto :goto_1d2

    .line 924
    :cond_1c8
    if-ne p3, v0, :cond_1d7

    .line 925
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 926
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 931
    :goto_1d2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 932
    goto :goto_210

    .line 929
    :cond_1d7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :pswitch_1f6
    if-ne p3, v3, :cond_201

    .line 908
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 909
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    goto :goto_20b

    .line 910
    :cond_201
    if-ne p3, v0, :cond_211

    .line 911
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 912
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 917
    :goto_20b
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 918
    nop

    .line 1027
    :goto_210
    return-object p0

    .line 915
    :cond_211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Left to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Landroidx/constraintlayout/widget/ConstraintProperties;->sideToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_232
    .packed-switch 0x1
        :pswitch_1f6
        :pswitch_1bd
        :pswitch_16c
        :pswitch_11a
        :pswitch_b1
        :pswitch_75
        :pswitch_39
    .end packed-switch
.end method

.method public constrainDefaultHeight(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 653
    return-object p0
.end method

.method public constrainDefaultWidth(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 664
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 665
    return-object p0
.end method

.method public constrainHeight(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    .line 582
    return-object p0
.end method

.method public constrainMaxHeight(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 604
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 605
    return-object p0
.end method

.method public constrainMaxWidth(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 617
    return-object p0
.end method

.method public constrainMinHeight(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 628
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 629
    return-object p0
.end method

.method public constrainMinWidth(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 641
    return-object p0
.end method

.method public constrainWidth(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    .line 593
    return-object p0
.end method

.method public dimensionRatio(Ljava/lang/String;)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "ratio"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratio"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput-object p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 399
    return-object p0
.end method

.method public elevation(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "elevation"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elevation"
        }
    .end annotation

    .line 431
    nop

    .line 432
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    .line 434
    return-object p0
.end method

.method public goneMargin(II)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 5
    .param p1, "anchor"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "value"
        }
    .end annotation

    .line 341
    packed-switch p1, :pswitch_data_34

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :pswitch_c
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 361
    goto :goto_32

    .line 357
    :pswitch_11
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 358
    goto :goto_32

    .line 355
    :pswitch_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseline does not support margins"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :pswitch_1e
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 353
    goto :goto_32

    .line 349
    :pswitch_23
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 350
    goto :goto_32

    .line 346
    :pswitch_28
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 347
    goto :goto_32

    .line 343
    :pswitch_2d
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 344
    nop

    .line 365
    :goto_32
    return-object p0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_16
        :pswitch_11
        :pswitch_c
    .end packed-switch
.end method

.method public horizontalBias(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "bias"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bias"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 376
    return-object p0
.end method

.method public horizontalChainStyle(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "chainStyle"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chainStyle"
        }
    .end annotation

    .line 707
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 708
    return-object p0
.end method

.method public horizontalWeight(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "weight"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weight"
        }
    .end annotation

    .line 676
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 677
    return-object p0
.end method

.method public margin(II)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 5
    .param p1, "anchor"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "anchor",
            "value"
        }
    .end annotation

    .line 306
    packed-switch p1, :pswitch_data_36

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :pswitch_c
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    .line 326
    goto :goto_34

    .line 322
    :pswitch_12
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 323
    goto :goto_34

    .line 320
    :pswitch_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "baseline does not support margins"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :pswitch_20
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 318
    goto :goto_34

    .line 314
    :pswitch_25
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 315
    goto :goto_34

    .line 311
    :pswitch_2a
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 312
    goto :goto_34

    .line 308
    :pswitch_2f
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 309
    nop

    .line 330
    :goto_34
    return-object p0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_18
        :pswitch_12
        :pswitch_c
    .end packed-switch
.end method

.method public removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 5
    .param p1, "anchor"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    .line 252
    const/high16 v0, -0x80000000

    const/4 v1, -0x1

    packed-switch p1, :pswitch_data_7e

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :pswitch_f
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 288
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 289
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    .line 290
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 291
    goto :goto_7c

    .line 281
    :pswitch_21
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 282
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 283
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 284
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 285
    goto :goto_7c

    .line 278
    :pswitch_33
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 279
    goto :goto_7c

    .line 272
    :pswitch_38
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 273
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 274
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    .line 275
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 276
    goto :goto_7c

    .line 266
    :pswitch_49
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 267
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 268
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    .line 269
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 270
    goto :goto_7c

    .line 260
    :pswitch_5a
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 261
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 262
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    .line 263
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 264
    goto :goto_7c

    .line 254
    :pswitch_6b
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 255
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 256
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v1, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 257
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 258
    nop

    .line 295
    :goto_7c
    return-object p0

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_5a
        :pswitch_49
        :pswitch_38
        :pswitch_33
        :pswitch_21
        :pswitch_f
    .end packed-switch
.end method

.method public removeFromHorizontalChain()Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 14

    .line 842
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 843
    .local v0, "leftId":I
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 845
    .local v1, "rightId":I
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_70

    if-eq v1, v3, :cond_f

    goto :goto_70

    .line 867
    :cond_f
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 868
    .local v4, "startId":I
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 869
    .local v5, "endId":I
    const/4 v6, 0x7

    const/4 v7, 0x6

    if-ne v4, v3, :cond_1d

    if-eq v5, v3, :cond_69

    .line 870
    :cond_1d
    iget-object v8, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 871
    .local v8, "startView":Landroid/view/View;
    new-instance v9, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v9, v8}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 872
    .local v9, "startProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    iget-object v10, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 873
    .local v10, "endView":Landroid/view/View;
    new-instance v11, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v11, v10}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 875
    .local v11, "endProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    if-eq v4, v3, :cond_4a

    if-eq v5, v3, :cond_4a

    .line 877
    invoke-virtual {v9, v6, v5, v7, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 878
    invoke-virtual {v11, v7, v0, v6, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_69

    .line 879
    :cond_4a
    if-ne v0, v3, :cond_4e

    if-eq v5, v3, :cond_69

    .line 880
    :cond_4e
    iget-object v12, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v12, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    if-eq v12, v3, :cond_5c

    .line 882
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-virtual {v9, v6, v3, v6, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_69

    .line 883
    :cond_5c
    iget-object v12, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v12, v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-eq v12, v3, :cond_69

    .line 885
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {v11, v7, v3, v7, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 889
    .end local v8    # "startView":Landroid/view/View;
    .end local v9    # "startProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    .end local v10    # "endView":Landroid/view/View;
    .end local v11    # "endProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    :cond_69
    :goto_69
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 890
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_c5

    .line 846
    .end local v4    # "startId":I
    .end local v5    # "endId":I
    :cond_70
    :goto_70
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 847
    .local v4, "leftView":Landroid/view/View;
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v5, v4}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 848
    .local v5, "leftProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 849
    .local v6, "rightView":Landroid/view/View;
    new-instance v7, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v7, v6}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 850
    .local v7, "rightProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v0, v3, :cond_9f

    if-eq v1, v3, :cond_9f

    .line 852
    invoke-virtual {v5, v9, v1, v8, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 853
    invoke-virtual {v7, v8, v0, v9, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_be

    .line 854
    :cond_9f
    if-ne v0, v3, :cond_a3

    if-eq v1, v3, :cond_be

    .line 855
    :cond_a3
    iget-object v10, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    if-eq v10, v3, :cond_b1

    .line 857
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-virtual {v5, v9, v3, v9, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_be

    .line 858
    :cond_b1
    iget-object v10, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-eq v10, v3, :cond_be

    .line 860
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {v7, v8, v3, v8, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 863
    :cond_be
    :goto_be
    invoke-virtual {p0, v8}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 864
    invoke-virtual {p0, v9}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 865
    .end local v4    # "leftView":Landroid/view/View;
    .end local v5    # "leftProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    .end local v6    # "rightView":Landroid/view/View;
    .end local v7    # "rightProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    nop

    .line 892
    :goto_c5
    return-object p0
.end method

.method public removeFromVerticalChain()Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 12

    .line 807
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 808
    .local v0, "topId":I
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 809
    .local v1, "bottomId":I
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, -0x1

    if-ne v0, v4, :cond_f

    if-eq v1, v4, :cond_5c

    .line 810
    :cond_f
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 811
    .local v5, "topView":Landroid/view/View;
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v6, v5}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 812
    .local v6, "topProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 813
    .local v7, "bottomView":Landroid/view/View;
    new-instance v8, Landroidx/constraintlayout/widget/ConstraintProperties;

    invoke-direct {v8, v7}, Landroidx/constraintlayout/widget/ConstraintProperties;-><init>(Landroid/view/View;)V

    .line 814
    .local v8, "bottomProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    const/4 v9, 0x0

    if-eq v0, v4, :cond_3d

    if-eq v1, v4, :cond_3d

    .line 816
    invoke-virtual {v6, v2, v1, v3, v9}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 817
    invoke-virtual {v8, v3, v0, v2, v9}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_5c

    .line 818
    :cond_3d
    if-ne v0, v4, :cond_41

    if-eq v1, v4, :cond_5c

    .line 819
    :cond_41
    iget-object v10, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-eq v10, v4, :cond_4f

    .line 821
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {v6, v2, v4, v2, v9}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    goto :goto_5c

    .line 822
    :cond_4f
    iget-object v10, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v10, v10, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    if-eq v10, v4, :cond_5c

    .line 824
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {v8, v3, v4, v3, v9}, Landroidx/constraintlayout/widget/ConstraintProperties;->connect(IIII)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 829
    .end local v5    # "topView":Landroid/view/View;
    .end local v6    # "topProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    .end local v7    # "bottomView":Landroid/view/View;
    .end local v8    # "bottomProp":Landroidx/constraintlayout/widget/ConstraintProperties;
    :cond_5c
    :goto_5c
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 830
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintProperties;->removeConstraints(I)Landroidx/constraintlayout/widget/ConstraintProperties;

    .line 831
    return-object p0
.end method

.method public rotation(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "rotation"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotation(F)V

    .line 445
    return-object p0
.end method

.method public rotationX(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "rotationX"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotationX"
        }
    .end annotation

    .line 455
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 456
    return-object p0
.end method

.method public rotationY(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "rotationY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotationY"
        }
    .end annotation

    .line 466
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRotationY(F)V

    .line 467
    return-object p0
.end method

.method public scaleX(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "scaleX"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleX"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 478
    return-object p0
.end method

.method public scaleY(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 2
    .param p1, "scaleY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scaleY"
        }
    .end annotation

    .line 488
    return-object p0
.end method

.method public transformPivot(FF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 4
    .param p1, "transformPivotX"    # F
    .param p2, "transformPivotY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transformPivotX",
            "transformPivotY"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 522
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setPivotY(F)V

    .line 523
    return-object p0
.end method

.method public transformPivotX(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "transformPivotX"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transformPivotX"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 499
    return-object p0
.end method

.method public transformPivotY(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "transformPivotY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transformPivotY"
        }
    .end annotation

    .line 509
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPivotY(F)V

    .line 510
    return-object p0
.end method

.method public translation(FF)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 4
    .param p1, "translationX"    # F
    .param p2, "translationY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "translationX",
            "translationY"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 557
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 558
    return-object p0
.end method

.method public translationX(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "translationX"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "translationX"
        }
    .end annotation

    .line 533
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 534
    return-object p0
.end method

.method public translationY(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "translationY"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "translationY"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 545
    return-object p0
.end method

.method public translationZ(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "translationZ"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "translationZ"
        }
    .end annotation

    .line 568
    nop

    .line 569
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 571
    return-object p0
.end method

.method public verticalBias(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "bias"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bias"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 387
    return-object p0
.end method

.method public verticalChainStyle(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "chainStyle"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chainStyle"
        }
    .end annotation

    .line 726
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 727
    return-object p0
.end method

.method public verticalWeight(F)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "weight"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "weight"
        }
    .end annotation

    .line 688
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mParams:Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 689
    return-object p0
.end method

.method public visibility(I)Landroidx/constraintlayout/widget/ConstraintProperties;
    .registers 3
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintProperties;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    return-object p0
.end method
