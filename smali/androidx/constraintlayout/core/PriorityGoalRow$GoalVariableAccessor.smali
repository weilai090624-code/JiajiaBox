.class Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/PriorityGoalRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GoalVariableAccessor"
.end annotation


# instance fields
.field row:Landroidx/constraintlayout/core/PriorityGoalRow;

.field final synthetic this$0:Landroidx/constraintlayout/core/PriorityGoalRow;

.field variable:Landroidx/constraintlayout/core/SolverVariable;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/PriorityGoalRow;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/constraintlayout/core/PriorityGoalRow;
    .param p2, "row"    # Landroidx/constraintlayout/core/PriorityGoalRow;

    .line 39
    iput-object p1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/core/PriorityGoalRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->row:Landroidx/constraintlayout/core/PriorityGoalRow;

    .line 41
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 6
    .param p1, "other"    # Landroidx/constraintlayout/core/SolverVariable;

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_2d

    .line 82
    iget-object v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v2, v1, v0

    iget-object v3, p1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 83
    iget-object v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v1, v1, v0

    .line 84
    .local v1, "value":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x38d1b717    # 1.0E-4f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2a

    .line 85
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 81
    .end local v1    # "value":F
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "i":I
    :cond_2d
    return-void
.end method

.method public addToGoal(Landroidx/constraintlayout/core/SolverVariable;F)Z
    .registers 11
    .param p1, "other"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p2, "value"    # F

    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    const v1, 0x38d1b717    # 1.0E-4f

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_44

    .line 49
    const/4 v0, 0x1

    .line 50
    .local v0, "empty":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v2, :cond_38

    .line 51
    iget-object v5, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v6, v5, v4

    iget-object v7, p1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v7, v7, v4

    mul-float v7, v7, p2

    add-float/2addr v6, v7

    aput v6, v5, v4

    .line 52
    iget-object v5, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v5, v5, v4

    .line 53
    .local v5, "v":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gez v6, :cond_34

    .line 54
    iget-object v6, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aput v3, v6, v4

    goto :goto_35

    .line 56
    :cond_34
    const/4 v0, 0x0

    .line 50
    .end local v5    # "v":F
    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 59
    .end local v4    # "i":I
    :cond_38
    if-eqz v0, :cond_41

    .line 60
    iget-object v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/core/PriorityGoalRow;

    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    # invokes: Landroidx/constraintlayout/core/PriorityGoalRow;->removeGoal(Landroidx/constraintlayout/core/SolverVariable;)V
    invoke-static {v1, v2}, Landroidx/constraintlayout/core/PriorityGoalRow;->access$000(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/SolverVariable;)V

    .line 62
    .end local v0    # "empty":Z
    :cond_41
    nop

    .line 77
    const/4 v0, 0x0

    return v0

    .line 63
    :cond_44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_45
    if-ge v0, v2, :cond_6a

    .line 64
    iget-object v4, p1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v4, v4, v0

    .line 65
    .local v4, "strength":F
    cmpl-float v5, v4, v3

    if-eqz v5, :cond_61

    .line 66
    mul-float v5, p2, v4

    .line 67
    .restart local v5    # "v":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gez v6, :cond_5a

    .line 68
    const/4 v5, 0x0

    .line 70
    :cond_5a
    iget-object v6, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aput v5, v6, v0

    .line 71
    .end local v5    # "v":F
    goto :goto_67

    .line 72
    :cond_61
    iget-object v5, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aput v3, v5, v0

    .line 63
    .end local v4    # "strength":F
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 75
    .end local v0    # "i":I
    :cond_6a
    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 2
    .param p1, "variable"    # Landroidx/constraintlayout/core/SolverVariable;

    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 45
    return-void
.end method

.method public final isNegative()Z
    .registers 6

    .line 91
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_2
    const/4 v1, 0x0

    if-ltz v0, :cond_1a

    .line 92
    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v2, v2, v0

    .line 93
    .local v2, "value":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_11

    .line 94
    return v1

    .line 96
    :cond_11
    cmpg-float v1, v2, v3

    if-gez v1, :cond_17

    .line 97
    const/4 v1, 0x1

    return v1

    .line 91
    .end local v2    # "value":F
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 100
    .end local v0    # "i":I
    :cond_1a
    return v1
.end method

.method public final isNull()Z
    .registers 4

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_15

    .line 121
    iget-object v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v1, v1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_12

    .line 122
    const/4 v1, 0x0

    return v1

    .line 120
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    .end local v0    # "i":I
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public final isSmallerThan(Landroidx/constraintlayout/core/SolverVariable;)Z
    .registers 7
    .param p1, "other"    # Landroidx/constraintlayout/core/SolverVariable;

    .line 104
    const/16 v0, 0x8

    .local v0, "i":I
    :goto_2
    const/4 v1, 0x0

    if-ltz v0, :cond_1e

    .line 105
    iget-object v2, p1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v2, v2, v0

    .line 106
    .local v2, "comparedValue":F
    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v3, v3, v0

    .line 107
    .local v3, "value":F
    cmpl-float v4, v3, v2

    if-nez v4, :cond_17

    .line 108
    nop

    .line 104
    .end local v2    # "comparedValue":F
    .end local v3    # "value":F
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 110
    .restart local v2    # "comparedValue":F
    .restart local v3    # "value":F
    :cond_17
    cmpg-float v4, v3, v2

    if-gez v4, :cond_1d

    .line 111
    const/4 v1, 0x1

    return v1

    .line 113
    :cond_1d
    return v1

    .line 116
    .end local v0    # "i":I
    .end local v2    # "comparedValue":F
    .end local v3    # "value":F
    :cond_1e
    return v1
.end method

.method public reset()V
    .registers 3

    .line 129
    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, v0, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 133
    const-string v0, "[ "

    .line 134
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v1, :cond_2b

    .line 135
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/16 v2, 0x9

    if-ge v1, v2, :cond_2b

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 139
    .end local v1    # "i":I
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    return-object v0
.end method
