.class public Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;
.super Ljava/lang/Object;
.source "WidgetGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static count:I


# instance fields
.field authoritative:Z

.field id:I

.field private moveTo:I

.field orientation:I

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;",
            ">;"
        }
    .end annotation
.end field

.field widgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const/4 v0, 0x0

    sput v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->count:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "orientation"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->authoritative:Z

    .line 39
    iput v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

    .line 41
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo:I

    .line 44
    sget v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->count:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    .line 45
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    .line 46
    return-void
.end method

.method private contains(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z
    .registers 3
    .param p1, "widget"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 202
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getOrientationString()Ljava/lang/String;
    .registers 3

    .line 63
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    if-nez v0, :cond_7

    .line 64
    const-string v0, "Horizontal"

    return-object v0

    .line 65
    :cond_7
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 66
    const-string v0, "Vertical"

    return-object v0

    .line 67
    :cond_f
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    .line 68
    const-string v0, "Both"

    return-object v0

    .line 70
    :cond_17
    const-string v0, "Unknown"

    return-object v0
.end method

.method private measureWrap(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I
    .registers 5
    .param p1, "orientation"    # I
    .param p2, "widget"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 103
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    .line 104
    .local v0, "behaviour":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v1, :cond_13

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v1, :cond_13

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_11

    goto :goto_13

    .line 115
    :cond_11
    const/4 v1, -0x1

    return v1

    .line 108
    :cond_13
    :goto_13
    if-nez p1, :cond_1a

    .line 109
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    .local v1, "dimension":I
    goto :goto_1e

    .line 111
    .end local v1    # "dimension":I
    :cond_1a
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    .line 113
    .restart local v1    # "dimension":I
    :goto_1e
    return v1
.end method

.method private solverMeasure(Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)I
    .registers 10
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p3, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/LinearSystem;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;I)I"
        }
    .end annotation

    .line 128
    .local p2, "widgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/ConstraintWidget;>;"
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 129
    .local v1, "container":Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    invoke-virtual {p1}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    .line 130
    const/4 v2, 0x0

    .line 131
    .local v2, "prevDebug":Z
    invoke-virtual {v1, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 132
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_27

    .line 133
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 134
    .local v4, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    .line 132
    .end local v4    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 136
    .end local v3    # "i":I
    :cond_27
    if-nez p3, :cond_30

    .line 137
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    if-lez v3, :cond_30

    .line 138
    invoke-static {v1, p1, p2, v0}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    .line 141
    :cond_30
    const/4 v0, 0x1

    if-ne p3, v0, :cond_3a

    .line 142
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    if-lez v3, :cond_3a

    .line 143
    invoke-static {v1, p1, p2, v0}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    .line 148
    :cond_3a
    :try_start_3a
    invoke-virtual {p1}, Landroidx/constraintlayout/core/LinearSystem;->minimize()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 151
    goto :goto_42

    .line 149
    :catch_3e
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_63

    .line 156
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 157
    .local v3, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    new-instance v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;

    invoke-direct {v4, p0, v3, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/LinearSystem;I)V

    .line 158
    .local v4, "result":Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v3    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v4    # "result":Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 161
    .end local v0    # "i":I
    :cond_63
    if-nez p3, :cond_77

    .line 162
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    .line 163
    .local v0, "left":I
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v3

    .line 164
    .local v3, "right":I
    invoke-virtual {p1}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    .line 165
    sub-int v4, v3, v0

    return v4

    .line 167
    .end local v0    # "left":I
    .end local v3    # "right":I
    :cond_77
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    .line 168
    .local v0, "top":I
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v3

    .line 169
    .local v3, "bottom":I
    invoke-virtual {p1}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    .line 170
    sub-int v4, v3, v0

    return v4
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z
    .registers 3
    .param p1, "widget"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 53
    const/4 v0, 0x0

    return v0

    .line 55
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public apply()V
    .registers 3

    .line 179
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 180
    return-void

    .line 182
    :cond_5
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->authoritative:Z

    if-nez v0, :cond_a

    .line 183
    return-void

    .line 185
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 186
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;

    .line 187
    .local v1, "result":Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;->apply()V

    .line 185
    .end local v1    # "result":Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 189
    .end local v0    # "i":I
    :cond_21
    return-void
.end method

.method public cleanup(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;",
            ">;)V"
        }
    .end annotation

    .line 210
    .local p1, "dependencyLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;>;"
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 211
    .local v0, "count":I
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    if-lez v0, :cond_28

    .line 212
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 213
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 214
    .local v2, "group":Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;
    iget v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo:I

    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    if-ne v3, v4, :cond_25

    .line 215
    iget v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    invoke-virtual {p0, v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    .line 212
    .end local v2    # "group":Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 219
    .end local v1    # "i":I
    :cond_28
    if-nez v0, :cond_2e

    .line 220
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 221
    return-void

    .line 223
    :cond_2e
    return-void
.end method

.method public clear()V
    .registers 2

    .line 99
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    return-void
.end method

.method public getId()I
    .registers 2

    .line 49
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 48
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    return v0
.end method

.method public intersectWith(Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Z
    .registers 5
    .param p1, "group"    # Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 193
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 194
    .local v1, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-direct {p1, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->contains(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 195
    const/4 v2, 0x1

    return v2

    .line 192
    .end local v1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public isAuthoritative()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->authoritative:Z

    return v0
.end method

.method public measureWrap(Landroidx/constraintlayout/core/LinearSystem;I)I
    .registers 5
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p2, "orientation"    # I

    .line 119
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 120
    .local v0, "count":I
    if-nez v0, :cond_a

    .line 121
    const/4 v1, 0x0

    return v1

    .line 124
    :cond_a
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->solverMeasure(Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)I

    move-result v1

    return v1
.end method

.method public moveTo(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V
    .registers 6
    .param p1, "orientation"    # I
    .param p2, "widgetGroup"    # Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    .line 87
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 88
    .local v1, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    .line 89
    if-nez p1, :cond_1e

    .line 90
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->getId()I

    move-result v2

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    goto :goto_24

    .line 92
    :cond_1e
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->getId()I

    move-result v2

    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    .line 94
    .end local v1    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :goto_24
    goto :goto_6

    .line 95
    :cond_25
    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo:I

    .line 96
    return-void
.end method

.method public setAuthoritative(Z)V
    .registers 2
    .param p1, "isAuthoritative"    # Z

    .line 59
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->authoritative:Z

    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .line 175
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    .line 176
    return-void
.end method

.method public size()I
    .registers 2

    .line 206
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->getOrientationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 77
    .local v2, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .end local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    goto :goto_29

    .line 79
    :cond_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    return-object v0
.end method
