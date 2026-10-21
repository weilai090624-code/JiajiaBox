.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Measurer"
.end annotation


# instance fields
.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field layoutHeightSpec:I

.field layoutWidthSpec:I

.field paddingBottom:I

.field paddingHeight:I

.field paddingTop:I

.field paddingWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "l"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "l"
        }
    .end annotation

    .line 637
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 639
    return-void
.end method

.method private isSimilarSpec(III)Z
    .registers 10
    .param p1, "lastMeasureSpec"    # I
    .param p2, "spec"    # I
    .param p3, "widgetSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lastMeasureSpec",
            "spec",
            "widgetSize"
        }
    .end annotation

    .line 906
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 907
    return v0

    .line 909
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 910
    .local v1, "lastMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 911
    .local v2, "lastSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 912
    .local v3, "mode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 913
    .local v4, "size":I
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v3, v5, :cond_21

    const/high16 v5, -0x80000000

    if-eq v1, v5, :cond_1e

    if-nez v1, :cond_21

    :cond_1e
    if-ne p3, v4, :cond_21

    .line 916
    return v0

    .line 918
    :cond_21
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public captureLayoutInfo(IIIIII)V
    .registers 7
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "widthSpec",
            "heightSpec",
            "top",
            "bottom",
            "width",
            "height"
        }
    .end annotation

    .line 629
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    .line 630
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    .line 631
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 632
    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingHeight:I

    .line 633
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 634
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 635
    return-void
.end method

.method public final didMeasures()V
    .registers 6

    .line 923
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 924
    .local v0, "widgetsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 925
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 926
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v3, :cond_1b

    .line 927
    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 924
    .end local v2    # "child":Landroid/view/View;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 931
    .end local v1    # "i":I
    :cond_1e
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    # getter for: Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;
    invoke-static {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 932
    .local v1, "helperCount":I
    if-lez v1, :cond_41

    .line 933
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v1, :cond_41

    .line 934
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    # getter for: Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 935
    .local v3, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 933
    .end local v3    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 938
    .end local v2    # "i":I
    :cond_41
    return-void
.end method

.method public final measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V
    .registers 31
    .param p1, "widget"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p2, "measure"    # Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widget",
            "measure"
        }
    .end annotation

    .line 645
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_9

    .line 646
    return-void

    .line 648
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInPlaceholder()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 649
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 650
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 651
    iput v5, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 652
    return-void

    .line 654
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v3

    if-nez v3, :cond_26

    .line 655
    return-void

    .line 665
    :cond_26
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 666
    .local v3, "horizontalBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 668
    .local v4, "verticalBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    iget v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 669
    .local v6, "horizontalDimension":I
    iget v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 671
    .local v7, "verticalDimension":I
    const/4 v8, 0x0

    .line 672
    .local v8, "horizontalSpec":I
    const/4 v9, 0x0

    .line 674
    .local v9, "verticalSpec":I
    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    add-int/2addr v10, v11

    .line 675
    .local v10, "heightPadding":I
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 677
    .local v11, "widthPadding":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 679
    .local v12, "child":Landroid/view/View;
    sget-object v13, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v14

    aget v13, v13, v14

    const/4 v15, -0x2

    const/4 v14, 0x1

    packed-switch v13, :pswitch_data_344

    goto/16 :goto_ba

    .line 695
    :pswitch_4c
    iget v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    invoke-static {v13, v11, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 696
    iget v13, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v13, v14, :cond_58

    const/4 v13, 0x1

    goto :goto_59

    :cond_58
    const/4 v13, 0x0

    .line 697
    .local v13, "shouldDoWrap":Z
    :goto_59
    iget v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v15, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    if-eq v14, v15, :cond_65

    iget v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v15, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    if-ne v14, v15, :cond_ba

    .line 703
    :cond_65
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    if-ne v14, v15, :cond_71

    const/4 v14, 0x1

    goto :goto_72

    :cond_71
    const/4 v14, 0x0

    .line 704
    .local v14, "otherDimensionStable":Z
    :goto_72
    iget v15, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v5, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    if-eq v15, v5, :cond_8b

    if-eqz v13, :cond_8b

    if-eqz v13, :cond_7e

    if-nez v14, :cond_8b

    :cond_7e
    instance-of v5, v12, Landroidx/constraintlayout/widget/Placeholder;

    if-nez v5, :cond_8b

    .line 708
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    move-result v5

    if-eqz v5, :cond_89

    goto :goto_8b

    :cond_89
    const/4 v5, 0x0

    goto :goto_8c

    :cond_8b
    :goto_8b
    const/4 v5, 0x1

    .line 709
    .local v5, "useCurrent":Z
    :goto_8c
    if-eqz v5, :cond_9b

    .line 710
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    move/from16 v17, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "useCurrent":Z
    .local v17, "useCurrent":Z
    invoke-static {v15, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_ba

    .line 709
    .end local v17    # "useCurrent":Z
    .restart local v5    # "useCurrent":Z
    :cond_9b
    move/from16 v17, v5

    .end local v5    # "useCurrent":Z
    .restart local v17    # "useCurrent":Z
    goto :goto_ba

    .line 690
    .end local v13    # "shouldDoWrap":Z
    .end local v14    # "otherDimensionStable":Z
    .end local v17    # "useCurrent":Z
    :pswitch_9e
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 691
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalMargin()I

    move-result v13

    add-int/2addr v13, v11

    .line 690
    const/4 v14, -0x1

    invoke-static {v5, v13, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 693
    goto :goto_ba

    .line 685
    :pswitch_ab
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    const/4 v13, -0x2

    invoke-static {v5, v11, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 687
    goto :goto_ba

    .line 681
    :pswitch_b3
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 683
    nop

    .line 717
    :cond_ba
    :goto_ba
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v13

    aget v5, v5, v13

    packed-switch v5, :pswitch_data_350

    goto/16 :goto_137

    .line 734
    :pswitch_c7
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v13, -0x2

    invoke-static {v5, v10, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 736
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v13, 0x1

    if-ne v5, v13, :cond_d5

    const/4 v5, 0x1

    goto :goto_d6

    :cond_d5
    const/4 v5, 0x0

    .line 737
    .local v5, "shouldDoWrap":Z
    :goto_d6
    iget v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v14, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    if-eq v13, v14, :cond_e2

    iget v13, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v14, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    if-ne v13, v14, :cond_137

    .line 743
    :cond_e2
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    if-ne v13, v14, :cond_ee

    const/4 v13, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v13, 0x0

    .line 744
    .local v13, "otherDimensionStable":Z
    :goto_ef
    iget v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v15, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    if-eq v14, v15, :cond_108

    if-eqz v5, :cond_108

    if-eqz v5, :cond_fb

    if-nez v13, :cond_108

    :cond_fb
    instance-of v14, v12, Landroidx/constraintlayout/widget/Placeholder;

    if-nez v14, :cond_108

    .line 748
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    move-result v14

    if-eqz v14, :cond_106

    goto :goto_108

    :cond_106
    const/4 v14, 0x0

    goto :goto_109

    :cond_108
    :goto_108
    const/4 v14, 0x1

    .line 749
    .local v14, "useCurrent":Z
    :goto_109
    if-eqz v14, :cond_118

    .line 750
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    move/from16 v16, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "shouldDoWrap":Z
    .local v16, "shouldDoWrap":Z
    invoke-static {v15, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_137

    .line 749
    .end local v16    # "shouldDoWrap":Z
    .restart local v5    # "shouldDoWrap":Z
    :cond_118
    move/from16 v16, v5

    .end local v5    # "shouldDoWrap":Z
    .restart local v16    # "shouldDoWrap":Z
    goto :goto_137

    .line 729
    .end local v13    # "otherDimensionStable":Z
    .end local v14    # "useCurrent":Z
    .end local v16    # "shouldDoWrap":Z
    :pswitch_11b
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 730
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalMargin()I

    move-result v13

    add-int/2addr v13, v10

    .line 729
    const/4 v14, -0x1

    invoke-static {v5, v13, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 732
    goto :goto_137

    .line 723
    :pswitch_128
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v13, -0x2

    invoke-static {v5, v10, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 726
    goto :goto_137

    .line 719
    :pswitch_130
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 721
    nop

    .line 757
    :cond_137
    :goto_137
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 758
    .local v5, "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    if-eqz v5, :cond_1b9

    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    # getter for: Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I
    invoke-static {v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v13

    const/16 v14, 0x100

    invoke-static {v13, v14}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v13

    if-eqz v13, :cond_1b9

    .line 759
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    if-ne v13, v14, :cond_1b9

    .line 762
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v14

    if-ge v13, v14, :cond_1b9

    .line 763
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    if-ne v13, v14, :cond_1b9

    .line 764
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v14

    if-ge v13, v14, :cond_1b9

    .line 765
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v14

    if-ne v13, v14, :cond_1b9

    .line 766
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    move-result v13

    if-nez v13, :cond_1b9

    .line 768
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getLastHorizontalMeasureSpec()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    invoke-direct {v0, v13, v8, v14}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    move-result v13

    if-eqz v13, :cond_1a3

    .line 769
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getLastVerticalMeasureSpec()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    invoke-direct {v0, v13, v9, v14}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->isSimilarSpec(III)Z

    move-result v13

    if-eqz v13, :cond_1a3

    const/4 v13, 0x1

    goto :goto_1a4

    :cond_1a3
    const/4 v13, 0x0

    .line 770
    .local v13, "similar":Z
    :goto_1a4
    if-eqz v13, :cond_1b9

    .line 771
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v14

    iput v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 772
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    iput v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 773
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v14

    iput v14, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 778
    return-void

    .line 783
    .end local v13    # "similar":Z
    :cond_1b9
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v13, :cond_1bf

    const/4 v13, 0x1

    goto :goto_1c0

    :cond_1bf
    const/4 v13, 0x0

    .line 784
    .local v13, "horizontalMatchConstraints":Z
    :goto_1c0
    sget-object v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v14, :cond_1c6

    const/4 v14, 0x1

    goto :goto_1c7

    :cond_1c6
    const/4 v14, 0x0

    .line 786
    .local v14, "verticalMatchConstraints":Z
    :goto_1c7
    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v15, :cond_1d2

    sget-object v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v15, :cond_1d0

    goto :goto_1d2

    :cond_1d0
    const/4 v15, 0x0

    goto :goto_1d3

    :cond_1d2
    :goto_1d2
    const/4 v15, 0x1

    .line 788
    .local v15, "verticalDimensionKnown":Z
    :goto_1d3
    move-object/from16 v16, v4

    .end local v4    # "verticalBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .local v16, "verticalBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_1e0

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1de

    goto :goto_1e0

    :cond_1de
    const/4 v4, 0x0

    goto :goto_1e1

    :cond_1e0
    :goto_1e0
    const/4 v4, 0x1

    .line 790
    .local v4, "horizontalDimensionKnown":Z
    :goto_1e1
    const/16 v17, 0x0

    if-eqz v13, :cond_1ef

    move-object/from16 v18, v3

    .end local v3    # "horizontalBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .local v18, "horizontalBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v3, v3, v17

    if-lez v3, :cond_1f1

    const/4 v3, 0x1

    goto :goto_1f2

    .end local v18    # "horizontalBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v3    # "horizontalBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_1ef
    move-object/from16 v18, v3

    .end local v3    # "horizontalBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v18    # "horizontalBehavior":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_1f1
    const/4 v3, 0x0

    .line 791
    .local v3, "horizontalUseRatio":Z
    :goto_1f2
    if-eqz v14, :cond_1fe

    move-object/from16 v19, v5

    .end local v5    # "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .local v19, "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v5, v5, v17

    if-lez v5, :cond_200

    const/4 v5, 0x1

    goto :goto_201

    .end local v19    # "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .restart local v5    # "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    :cond_1fe
    move-object/from16 v19, v5

    .end local v5    # "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .restart local v19    # "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    :cond_200
    const/4 v5, 0x0

    .line 793
    .local v5, "verticalUseRatio":Z
    :goto_201
    if-nez v12, :cond_204

    .line 794
    return-void

    .line 796
    :cond_204
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move/from16 v20, v6

    .end local v6    # "horizontalDimension":I
    .local v20, "horizontalDimension":I
    move-object/from16 v6, v17

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 798
    .local v6, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    const/16 v17, 0x0

    .line 799
    .local v17, "width":I
    const/16 v21, 0x0

    .line 800
    .local v21, "height":I
    const/16 v22, 0x0

    .line 802
    .local v22, "baseline":I
    move/from16 v23, v7

    .end local v7    # "verticalDimension":I
    .local v23, "verticalDimension":I
    iget v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    move/from16 v24, v10

    .end local v10    # "heightPadding":I
    .local v24, "heightPadding":I
    sget v10, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    if-eq v7, v10, :cond_23d

    iget v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    sget v10, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    if-eq v7, v10, :cond_23d

    if-eqz v13, :cond_23d

    iget v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v7, :cond_23d

    if-eqz v14, :cond_23d

    iget v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v7, :cond_231

    goto :goto_23d

    :cond_231
    move/from16 v27, v3

    move/from16 v25, v11

    move/from16 v0, v17

    move/from16 v11, v21

    move/from16 v3, v22

    goto/16 :goto_314

    .line 807
    :cond_23d
    :goto_23d
    instance-of v7, v12, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v7, :cond_24f

    instance-of v7, v1, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    if-eqz v7, :cond_24f

    .line 808
    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    .line 809
    .local v7, "layout":Landroidx/constraintlayout/core/widgets/VirtualLayout;
    move-object v10, v12

    check-cast v10, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v10, v7, v8, v9}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V

    .line 810
    .end local v7    # "layout":Landroidx/constraintlayout/core/widgets/VirtualLayout;
    goto :goto_252

    .line 811
    :cond_24f
    invoke-virtual {v12, v8, v9}, Landroid/view/View;->measure(II)V

    .line 813
    :goto_252
    invoke-virtual {v1, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setLastMeasureSpec(II)V

    .line 815
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 816
    .local v7, "w":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 817
    .local v10, "h":I
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v22

    .line 819
    move/from16 v25, v7

    .line 820
    .end local v17    # "width":I
    .local v25, "width":I
    move/from16 v17, v10

    .line 827
    .end local v21    # "height":I
    .local v17, "height":I
    move/from16 v21, v8

    .end local v8    # "horizontalSpec":I
    .local v21, "horizontalSpec":I
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v8, :cond_278

    .line 828
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v26, v9

    move/from16 v9, v25

    .end local v25    # "width":I
    .local v9, "width":I
    .local v26, "verticalSpec":I
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v25

    move/from16 v9, v25

    .end local v9    # "width":I
    .restart local v25    # "width":I
    goto :goto_27c

    .line 827
    .end local v26    # "verticalSpec":I
    .local v9, "verticalSpec":I
    :cond_278
    move/from16 v26, v9

    move/from16 v9, v25

    .line 830
    .end local v25    # "width":I
    .local v9, "width":I
    .restart local v26    # "verticalSpec":I
    :goto_27c
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v8, :cond_286

    .line 831
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 833
    :cond_286
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v8, :cond_297

    .line 834
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v25, v11

    move/from16 v11, v17

    .end local v17    # "height":I
    .local v11, "height":I
    .local v25, "widthPadding":I
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v11, v17

    .end local v11    # "height":I
    .restart local v17    # "height":I
    goto :goto_29b

    .line 833
    .end local v25    # "widthPadding":I
    .local v11, "widthPadding":I
    :cond_297
    move/from16 v25, v11

    move/from16 v11, v17

    .line 836
    .end local v17    # "height":I
    .local v11, "height":I
    .restart local v25    # "widthPadding":I
    :goto_29b
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v8, :cond_2a5

    .line 837
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 840
    :cond_2a5
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    # getter for: Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I
    invoke-static {v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I

    move-result v8

    const/4 v0, 0x1

    invoke-static {v8, v0}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v8

    .line 841
    .local v8, "optimizeDirect":Z
    if-nez v8, :cond_2d5

    .line 842
    if-eqz v3, :cond_2c4

    if-eqz v15, :cond_2c4

    .line 843
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 844
    .local v0, "ratio":F
    move/from16 v27, v3

    .end local v3    # "horizontalUseRatio":Z
    .local v27, "horizontalUseRatio":Z
    int-to-float v3, v11

    mul-float v3, v3, v0

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v3, v3, v17

    float-to-int v0, v3

    .line 845
    .end local v9    # "width":I
    .local v0, "width":I
    move v9, v0

    goto :goto_2d7

    .line 842
    .end local v0    # "width":I
    .end local v27    # "horizontalUseRatio":Z
    .restart local v3    # "horizontalUseRatio":Z
    .restart local v9    # "width":I
    :cond_2c4
    move/from16 v27, v3

    .line 845
    .end local v3    # "horizontalUseRatio":Z
    .restart local v27    # "horizontalUseRatio":Z
    if-eqz v5, :cond_2d7

    if-eqz v4, :cond_2d7

    .line 846
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 847
    .local v0, "ratio":F
    int-to-float v3, v9

    div-float/2addr v3, v0

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v3, v3, v17

    float-to-int v3, v3

    move v11, v3

    .end local v11    # "height":I
    .local v3, "height":I
    goto :goto_2d7

    .line 841
    .end local v0    # "ratio":F
    .end local v27    # "horizontalUseRatio":Z
    .local v3, "horizontalUseRatio":Z
    .restart local v11    # "height":I
    :cond_2d5
    move/from16 v27, v3

    .line 851
    .end local v3    # "horizontalUseRatio":Z
    .restart local v27    # "horizontalUseRatio":Z
    :cond_2d7
    :goto_2d7
    if-ne v7, v9, :cond_2e4

    if-eq v10, v11, :cond_2dc

    goto :goto_2e4

    :cond_2dc
    move v0, v9

    move/from16 v8, v21

    move/from16 v3, v22

    move/from16 v9, v26

    goto :goto_314

    .line 852
    :cond_2e4
    :goto_2e4
    if-eq v7, v9, :cond_2ed

    .line 853
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .end local v21    # "horizontalSpec":I
    .local v3, "horizontalSpec":I
    goto :goto_2f1

    .line 852
    .end local v3    # "horizontalSpec":I
    .restart local v21    # "horizontalSpec":I
    :cond_2ed
    const/high16 v0, 0x40000000    # 2.0f

    move/from16 v3, v21

    .line 855
    .end local v21    # "horizontalSpec":I
    .restart local v3    # "horizontalSpec":I
    :goto_2f1
    if-eq v10, v11, :cond_2f8

    .line 856
    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .end local v26    # "verticalSpec":I
    .local v0, "verticalSpec":I
    goto :goto_2fa

    .line 855
    .end local v0    # "verticalSpec":I
    .restart local v26    # "verticalSpec":I
    :cond_2f8
    move/from16 v0, v26

    .line 858
    .end local v26    # "verticalSpec":I
    .restart local v0    # "verticalSpec":I
    :goto_2fa
    invoke-virtual {v12, v3, v0}, Landroid/view/View;->measure(II)V

    .line 860
    invoke-virtual {v1, v3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setLastMeasureSpec(II)V

    .line 861
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 862
    .end local v9    # "width":I
    .local v17, "width":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    .line 863
    .end local v11    # "height":I
    .local v21, "height":I
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v22

    move v9, v0

    move v8, v3

    move/from16 v0, v17

    move/from16 v11, v21

    move/from16 v3, v22

    .line 872
    .end local v7    # "w":I
    .end local v10    # "h":I
    .end local v17    # "width":I
    .end local v21    # "height":I
    .end local v22    # "baseline":I
    .local v0, "width":I
    .local v3, "baseline":I
    .local v8, "horizontalSpec":I
    .local v9, "verticalSpec":I
    .restart local v11    # "height":I
    :goto_314
    const/4 v7, -0x1

    if-eq v3, v7, :cond_319

    const/4 v7, 0x1

    goto :goto_31a

    :cond_319
    const/4 v7, 0x0

    .line 874
    .local v7, "hasBaseline":Z
    :goto_31a
    iget v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    if-ne v0, v10, :cond_325

    iget v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    if-eq v11, v10, :cond_323

    goto :goto_325

    :cond_323
    const/4 v10, 0x0

    goto :goto_326

    :cond_325
    :goto_325
    const/4 v10, 0x1

    :goto_326
    iput-boolean v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 876
    iget-boolean v10, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v10, :cond_32d

    .line 877
    const/4 v7, 0x1

    .line 879
    :cond_32d
    if-eqz v7, :cond_33b

    const/4 v10, -0x1

    if-eq v3, v10, :cond_33b

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v10

    if-eq v10, v3, :cond_33b

    .line 880
    const/4 v10, 0x1

    iput-boolean v10, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 882
    :cond_33b
    iput v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 883
    iput v11, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 884
    iput-boolean v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 885
    iput v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 892
    return-void

    :pswitch_data_344
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_ab
        :pswitch_9e
        :pswitch_4c
    .end packed-switch

    :pswitch_data_350
    .packed-switch 0x1
        :pswitch_130
        :pswitch_128
        :pswitch_11b
        :pswitch_c7
    .end packed-switch
.end method
