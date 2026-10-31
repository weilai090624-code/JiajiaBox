.class public abstract Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.super Ljava/lang/Object;
.source "WidgetRun.java"

# interfaces
.implements Landroidx/constraintlayout/core/widgets/analyzer/Dependency;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;
    }
.end annotation


# instance fields
.field dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

.field protected dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

.field public end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

.field protected mRunType:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

.field public matchConstraintsType:I

.field public orientation:I

.field resolved:Z

.field runGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

.field public start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

.field widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 3
    .param p1, "widget"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    .line 37
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolved:Z

    .line 38
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 39
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 41
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->NONE:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->mRunType:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 45
    return-void
.end method

.method private resolveDimension(II)V
    .registers 10
    .param p1, "orientation"    # I
    .param p2, "distance"    # I

    .line 172
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->matchConstraintsType:I

    const/high16 v1, 0x3f000000    # 0.5f

    packed-switch v0, :pswitch_data_ae

    goto/16 :goto_ad

    .line 200
    :pswitch_9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_30

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->matchConstraintsType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_30

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_30

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->matchConstraintsType:I

    if-ne v0, v2, :cond_30

    goto/16 :goto_ad

    .line 206
    :cond_30
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez p1, :cond_37

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    goto :goto_39

    :cond_37
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 207
    .local v0, "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    :goto_39
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v2, :cond_5f

    .line 208
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v2

    .line 210
    .local v2, "ratio":F
    const/4 v3, 0x1

    if-ne p1, v3, :cond_51

    .line 211
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    float-to-int v1, v3

    .local v1, "value":I
    goto :goto_5a

    .line 213
    .end local v1    # "value":I
    :cond_51
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    int-to-float v3, v3

    mul-float v3, v3, v2

    add-float/2addr v3, v1

    float-to-int v1, v3

    .line 215
    .restart local v1    # "value":I
    :goto_5a
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 219
    .end local v0    # "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    .end local v1    # "value":I
    .end local v2    # "ratio":F
    :cond_5f
    goto :goto_ad

    .line 178
    :pswitch_60
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    .line 179
    .local v0, "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eqz v0, :cond_90

    .line 180
    if-nez p1, :cond_6d

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    goto :goto_6f

    :cond_6d
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 183
    .local v2, "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    :goto_6f
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v3, :cond_90

    .line 184
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez p1, :cond_7c

    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    goto :goto_7e

    :cond_7c
    iget v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 187
    .local v3, "percent":F
    :goto_7e
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    .line 188
    .local v4, "targetDimensionValue":I
    int-to-float v5, v4

    mul-float v5, v5, v3

    add-float/2addr v5, v1

    float-to-int v1, v5

    .line 189
    .local v1, "size":I
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {p0, v1, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 193
    .end local v0    # "parent":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v1    # "size":I
    .end local v2    # "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    .end local v3    # "percent":F
    .end local v4    # "targetDimensionValue":I
    :cond_90
    goto :goto_ad

    .line 195
    :pswitch_91
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    move-result v0

    .line 196
    .local v0, "wrapValue":I
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 198
    .end local v0    # "wrapValue":I
    goto :goto_ad

    .line 174
    :pswitch_a3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getLimitedDimension(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 176
    nop

    .line 222
    :goto_ad
    return-void

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_a3
        :pswitch_91
        :pswitch_60
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method protected final addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;I)V
    .registers 5
    .param p1, "node"    # Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .param p2, "target"    # Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .param p3, "margin"    # I

    .line 283
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iput p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    .line 285
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    return-void
.end method

.method protected final addTarget(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ILandroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;)V
    .registers 7
    .param p1, "node"    # Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .param p2, "target"    # Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .param p3, "marginFactor"    # I
    .param p4, "dimensionDependency"    # Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 289
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    iput p3, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->marginFactor:I

    .line 292
    iput-object p4, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->marginDependency:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    .line 293
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p4, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    return-void
.end method

.method abstract apply()V
.end method

.method abstract applyToWidget()V
.end method

.method abstract clear()V
.end method

.method protected final getLimitedDimension(II)I
    .registers 6
    .param p1, "dimension"    # I
    .param p2, "orientation"    # I

    .line 235
    if-nez p2, :cond_18

    .line 236
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    .line 237
    .local v0, "max":I
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 238
    .local v1, "min":I
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 239
    .local v2, "value":I
    if-lez v0, :cond_14

    .line 240
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 242
    :cond_14
    if-eq v2, p1, :cond_17

    .line 243
    move p1, v2

    .line 245
    .end local v0    # "max":I
    .end local v1    # "min":I
    .end local v2    # "value":I
    :cond_17
    goto :goto_2d

    .line 246
    :cond_18
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 247
    .restart local v0    # "max":I
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 248
    .restart local v1    # "min":I
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 249
    .restart local v2    # "value":I
    if-lez v0, :cond_2a

    .line 250
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 252
    :cond_2a
    if-eq v2, p1, :cond_2d

    .line 253
    move p1, v2

    .line 256
    .end local v0    # "max":I
    .end local v1    # "min":I
    .end local v2    # "value":I
    :cond_2d
    :goto_2d
    return p1
.end method

.method protected final getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .registers 7
    .param p1, "anchor"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 95
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v0, :cond_6

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_6
    const/4 v0, 0x0

    .line 99
    .local v0, "target":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 100
    .local v1, "targetWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 101
    .local v2, "targetType":Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    sget-object v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_36

    goto :goto_34

    .line 119
    :pswitch_1b
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 120
    .local v3, "run":Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;
    iget-object v0, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 121
    .end local v3    # "run":Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;
    goto :goto_34

    .line 115
    :pswitch_20
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 116
    .restart local v3    # "run":Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;
    iget-object v0, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 117
    .end local v3    # "run":Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;
    goto :goto_34

    .line 111
    :pswitch_25
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 112
    .restart local v3    # "run":Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;
    iget-object v0, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 113
    .end local v3    # "run":Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;
    goto :goto_34

    .line 107
    :pswitch_2a
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 108
    .local v3, "run":Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;
    iget-object v0, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 109
    .end local v3    # "run":Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;
    goto :goto_34

    .line 103
    :pswitch_2f
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    .line 104
    .restart local v3    # "run":Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;
    iget-object v0, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 105
    .end local v3    # "run":Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;
    nop

    .line 124
    :goto_34
    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
    .end packed-switch
.end method

.method protected final getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .registers 9
    .param p1, "anchor"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .param p2, "orientation"    # I

    .line 260
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v0, :cond_6

    .line 261
    const/4 v0, 0x0

    return-object v0

    .line 263
    :cond_6
    const/4 v0, 0x0

    .line 264
    .local v0, "target":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 265
    .local v1, "targetWidget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-nez p2, :cond_10

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    goto :goto_12

    :cond_10
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 267
    .local v2, "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    :goto_12
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    .line 268
    .local v3, "targetType":Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;
    sget-object v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2a

    :pswitch_21
    goto :goto_28

    .line 275
    :pswitch_22
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 276
    goto :goto_28

    .line 271
    :pswitch_25
    iget-object v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 272
    nop

    .line 279
    :goto_28
    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_22
        :pswitch_25
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

.method public getWrapDimension()J
    .registers 3

    .line 298
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v0, :cond_c

    .line 299
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    int-to-long v0, v0

    return-wide v0

    .line 301
    :cond_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCenterConnection()Z
    .registers 6

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "connections":I
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 61
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_1f

    .line 62
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 63
    .local v3, "dependency":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    if-eq v4, p0, :cond_1c

    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 61
    .end local v3    # "dependency":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 67
    .end local v2    # "i":I
    :cond_1f
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 68
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_28
    if-ge v2, v1, :cond_3d

    .line 69
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 70
    .restart local v3    # "dependency":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    if-eq v4, p0, :cond_3a

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 68
    .end local v3    # "dependency":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 74
    .end local v2    # "i":I
    :cond_3d
    const/4 v2, 0x2

    if-lt v0, v2, :cond_42

    const/4 v2, 0x1

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    return v2
.end method

.method public isDimensionResolved()Z
    .registers 2

    .line 55
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    return v0
.end method

.method public isResolved()Z
    .registers 2

    .line 304
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolved:Z

    return v0
.end method

.method abstract reset()V
.end method

.method abstract supportsWrapComputation()Z
.end method

.method public update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .registers 2
    .param p1, "dependency"    # Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 232
    return-void
.end method

.method protected updateRunCenter(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V
    .registers 15
    .param p1, "dependency"    # Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    .param p2, "startAnchor"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .param p3, "endAnchor"    # Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .param p4, "orientation"    # I

    .line 128
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v0

    .line 129
    .local v0, "startTarget":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getTarget(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    move-result-object v1

    .line 131
    .local v1, "endTarget":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    iget-boolean v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v2, :cond_82

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v2, :cond_11

    goto :goto_82

    .line 135
    :cond_11
    iget v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v2, v3

    .line 136
    .local v2, "startPos":I
    iget v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    sub-int/2addr v3, v4

    .line 137
    .local v3, "endPos":I
    sub-int v4, v3, v2

    .line 139
    .local v4, "distance":I
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v5, :cond_30

    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_30

    .line 141
    invoke-direct {p0, p4, v4}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolveDimension(II)V

    .line 144
    :cond_30
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v5, :cond_37

    .line 145
    return-void

    .line 148
    :cond_37
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    if-ne v5, v4, :cond_48

    .line 149
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v5, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 150
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v5, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 151
    return-void

    .line 155
    :cond_48
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez p4, :cond_51

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v5

    goto :goto_55

    .line 156
    :cond_51
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalBiasPercent()F

    move-result v5

    :goto_55
    nop

    .line 158
    .local v5, "bias":F
    if-ne v0, v1, :cond_5e

    .line 159
    iget v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 160
    iget v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    .line 163
    const/high16 v5, 0x3f000000    # 0.5f

    .line 166
    :cond_5e
    sub-int v6, v3, v2

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    sub-int/2addr v6, v7

    .line 167
    .local v6, "availableDistance":I
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/high16 v8, 0x3f000000    # 0.5f

    int-to-float v9, v2

    add-float/2addr v9, v8

    int-to-float v8, v6

    mul-float v8, v8, v5

    add-float/2addr v9, v8

    float-to-int v8, v9

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 168
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 169
    return-void

    .line 132
    .end local v2    # "startPos":I
    .end local v3    # "endPos":I
    .end local v4    # "distance":I
    .end local v5    # "bias":F
    .end local v6    # "availableDistance":I
    :cond_82
    :goto_82
    return-void
.end method

.method protected updateRunEnd(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .registers 2
    .param p1, "dependency"    # Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 230
    return-void
.end method

.method protected updateRunStart(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .registers 2
    .param p1, "dependency"    # Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 226
    return-void
.end method

.method public wrapSize(I)J
    .registers 6
    .param p1, "direction"    # I

    .line 78
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v0, :cond_2d

    .line 79
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    int-to-long v0, v0

    .line 80
    .local v0, "size":J
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->isCenterConnection()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 81
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_2c

    .line 83
    :cond_1d
    if-nez p1, :cond_26

    .line 84
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_2c

    .line 86
    :cond_26
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 89
    :goto_2c
    return-wide v0

    .line 91
    .end local v0    # "size":J
    :cond_2d
    const-wide/16 v0, 0x0

    return-wide v0
.end method
