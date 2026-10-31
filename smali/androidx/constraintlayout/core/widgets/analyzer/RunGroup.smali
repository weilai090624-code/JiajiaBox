.class Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
.super Ljava/lang/Object;
.source "RunGroup.java"


# static fields
.field public static final BASELINE:I = 0x2

.field public static final END:I = 0x1

.field public static final START:I

.field public static index:I


# instance fields
.field direction:I

.field public dual:Z

.field firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

.field groupIndex:I

.field lastRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

.field public position:I

.field runs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)V
    .registers 5
    .param p1, "run"    # Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    .param p2, "dir"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->position:I

    .line 34
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->dual:Z

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 37
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->runs:Ljava/util/ArrayList;

    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->groupIndex:I

    .line 44
    sget v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->index:I

    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->groupIndex:I

    .line 45
    sget v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->index:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->index:I

    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 47
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 48
    iput p2, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->direction:I

    .line 49
    return-void
.end method

.method private defineTerminalWidget(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z
    .registers 10
    .param p1, "run"    # Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    .param p2, "orientation"    # I

    .line 186
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aget-boolean v0, v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 187
    return v1

    .line 189
    :cond_a
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 190
    .local v2, "dependency":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v3, :cond_5d

    .line 191
    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 192
    .local v3, "node":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    if-ne v4, p1, :cond_2a

    .line 193
    goto :goto_12

    .line 195
    :cond_2a
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-ne v3, v4, :cond_5d

    .line 196
    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    if-eqz v4, :cond_4e

    .line 197
    move-object v4, p1

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 198
    .local v4, "chainRun":Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 199
    .local v6, "widgetChainRun":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    invoke-direct {p0, v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    .line 200
    .end local v6    # "widgetChainRun":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    goto :goto_3d

    .line 201
    .end local v4    # "chainRun":Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;
    :cond_4d
    goto :goto_58

    .line 202
    :cond_4e
    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    if-nez v4, :cond_58

    .line 203
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v1, v4, p2

    .line 206
    :cond_58
    :goto_58
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    invoke-direct {p0, v4, p2}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    .line 209
    .end local v2    # "dependency":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    .end local v3    # "node":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    :cond_5d
    goto :goto_12

    .line 210
    :cond_5e
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 211
    .restart local v2    # "dependency":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v3, :cond_b1

    .line 212
    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 213
    .restart local v3    # "node":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    if-ne v4, p1, :cond_7e

    .line 214
    goto :goto_66

    .line 216
    :cond_7e
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-ne v3, v4, :cond_b1

    .line 217
    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    if-eqz v4, :cond_a2

    .line 218
    move-object v4, p1

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 219
    .restart local v4    # "chainRun":Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_91
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 220
    .restart local v6    # "widgetChainRun":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    invoke-direct {p0, v6, p2}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    .line 221
    .end local v6    # "widgetChainRun":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    goto :goto_91

    .line 222
    .end local v4    # "chainRun":Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;
    :cond_a1
    goto :goto_ac

    .line 223
    :cond_a2
    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    if-nez v4, :cond_ac

    .line 224
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v1, v4, p2

    .line 227
    :cond_ac
    :goto_ac
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    invoke-direct {p0, v4, p2}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    .line 230
    .end local v2    # "dependency":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    .end local v3    # "node":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    :cond_b1
    goto :goto_66

    .line 231
    :cond_b2
    return v1
.end method

.method private traverseEnd(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J
    .registers 14
    .param p1, "node"    # Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .param p2, "startPosition"    # J

    .line 89
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 90
    .local v0, "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    if-eqz v1, :cond_7

    .line 91
    return-wide p2

    .line 93
    :cond_7
    move-wide v1, p2

    .line 97
    .local v1, "position":J
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 98
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v3, :cond_34

    .line 99
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 100
    .local v5, "dependency":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v6, :cond_31

    .line 101
    move-object v6, v5

    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 102
    .local v6, "nextNode":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    if-ne v7, v0, :cond_25

    .line 104
    goto :goto_31

    .line 106
    :cond_25
    iget v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    invoke-direct {p0, v6, v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v7

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 98
    .end local v5    # "dependency":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    .end local v6    # "nextNode":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    :cond_31
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 110
    .end local v4    # "i":I
    :cond_34
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-ne p1, v4, :cond_54

    .line 112
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v4

    .line 113
    .local v4, "dimension":J
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    sub-long v7, p2, v4

    invoke-direct {p0, v6, v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 114
    sub-long v6, p2, v4

    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 117
    .end local v4    # "dimension":J
    :cond_54
    return-wide v1
.end method

.method private traverseStart(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J
    .registers 14
    .param p1, "node"    # Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .param p2, "startPosition"    # J

    .line 57
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 58
    .local v0, "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    if-eqz v1, :cond_7

    .line 59
    return-wide p2

    .line 61
    :cond_7
    move-wide v1, p2

    .line 65
    .local v1, "position":J
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 66
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_f
    if-ge v4, v3, :cond_34

    .line 67
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 68
    .local v5, "dependency":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v6, :cond_31

    .line 69
    move-object v6, v5

    check-cast v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 70
    .local v6, "nextNode":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    if-ne v7, v0, :cond_25

    .line 72
    goto :goto_31

    .line 74
    :cond_25
    iget v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    invoke-direct {p0, v6, v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v7

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 66
    .end local v5    # "dependency":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    .end local v6    # "nextNode":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    :cond_31
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 78
    .end local v4    # "i":I
    :cond_34
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-ne p1, v4, :cond_54

    .line 80
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v4

    .line 81
    .local v4, "dimension":J
    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    add-long v7, p2, v4

    invoke-direct {p0, v6, v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 82
    add-long v6, p2, v4

    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 85
    .end local v4    # "dimension":J
    :cond_54
    return-wide v1
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V
    .registers 3
    .param p1, "run"    # Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->runs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->lastRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 54
    return-void
.end method

.method public computeWrapSize(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)J
    .registers 29
    .param p1, "container"    # Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .param p2, "orientation"    # I

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    instance-of v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_18

    .line 122
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 123
    .local v3, "chainRun":Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;
    iget v6, v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    if-eq v6, v2, :cond_17

    .line 124
    return-wide v4

    .line 126
    .end local v3    # "chainRun":Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;
    :cond_17
    goto :goto_28

    .line 127
    :cond_18
    if-nez v2, :cond_21

    .line 128
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    instance-of v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-nez v3, :cond_28

    .line 129
    return-wide v4

    .line 132
    :cond_21
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    instance-of v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-nez v3, :cond_28

    .line 133
    return-wide v4

    .line 137
    :cond_28
    :goto_28
    if-nez v2, :cond_2f

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    goto :goto_33

    :cond_2f
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 138
    .local v3, "containerStart":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    :goto_33
    if-nez v2, :cond_3a

    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    goto :goto_3e

    :cond_3a
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 140
    .local v6, "containerEnd":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    :goto_3e
    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 141
    .local v7, "runWithStartTarget":Z
    iget-object v8, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 143
    .local v8, "runWithEndTarget":Z
    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v9

    .line 145
    .local v9, "dimension":J
    if-eqz v7, :cond_e7

    if-eqz v8, :cond_e7

    .line 146
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-direct {v0, v11, v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v11

    .line 147
    .local v11, "maxPosition":J
    iget-object v13, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v13, v13, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-direct {v0, v13, v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v4

    .line 150
    .local v4, "minPosition":J
    sub-long v13, v11, v9

    .line 151
    .local v13, "endGap":J
    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v15, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    neg-int v15, v15

    move-wide/from16 v16, v11

    .end local v11    # "maxPosition":J
    .local v16, "maxPosition":J
    int-to-long v11, v15

    cmp-long v15, v13, v11

    if-ltz v15, :cond_84

    .line 152
    iget-object v11, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v11, v11, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v11, v11

    add-long/2addr v13, v11

    .line 154
    :cond_84
    neg-long v11, v4

    sub-long/2addr v11, v9

    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v15, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    .end local v3    # "containerStart":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .end local v4    # "minPosition":J
    .local v18, "containerStart":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .local v19, "minPosition":J
    int-to-long v3, v15

    sub-long/2addr v11, v3

    .line 155
    .local v11, "startGap":J
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v3, v3

    cmp-long v5, v11, v3

    if-ltz v5, :cond_a5

    .line 156
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v3, v3

    sub-long/2addr v11, v3

    .line 158
    :cond_a5
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBiasPercent(I)F

    move-result v3

    .line 159
    .local v3, "bias":F
    const-wide/16 v4, 0x0

    .line 160
    .local v4, "gap":J
    const/4 v15, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v15, v3, v15

    if-lez v15, :cond_bf

    .line 161
    long-to-float v15, v11

    div-float/2addr v15, v3

    long-to-float v1, v13

    sub-float v22, v21, v3

    div-float v1, v1, v22

    add-float/2addr v15, v1

    float-to-long v4, v15

    .line 164
    :cond_bf
    long-to-float v1, v4

    mul-float v1, v1, v3

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v1, v15

    float-to-long v11, v1

    .line 165
    long-to-float v1, v4

    sub-float v21, v21, v3

    mul-float v1, v1, v21

    add-float/2addr v1, v15

    float-to-long v13, v1

    .line 167
    add-long v21, v11, v9

    add-long v21, v21, v13

    .line 168
    .local v21, "runDimension":J
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v1, v1

    add-long v1, v1, v21

    iget-object v15, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v15, v15, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    move/from16 v23, v3

    move-wide/from16 v24, v4

    .end local v3    # "bias":F
    .end local v4    # "gap":J
    .local v23, "bias":F
    .local v24, "gap":J
    int-to-long v3, v15

    sub-long/2addr v1, v3

    .line 170
    .end local v9    # "dimension":J
    .end local v11    # "startGap":J
    .end local v13    # "endGap":J
    .end local v16    # "maxPosition":J
    .end local v19    # "minPosition":J
    .end local v21    # "runDimension":J
    .end local v23    # "bias":F
    .end local v24    # "gap":J
    .local v1, "dimension":J
    goto :goto_13d

    .line 145
    .end local v1    # "dimension":J
    .end local v18    # "containerStart":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .local v3, "containerStart":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .restart local v9    # "dimension":J
    :cond_e7
    move-object/from16 v18, v3

    .line 170
    .end local v3    # "containerStart":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .restart local v18    # "containerStart":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    if-eqz v7, :cond_107

    .line 171
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v2, v2

    invoke-direct {v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v1

    .line 172
    .local v1, "maxPosition":J
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v3, v3

    add-long/2addr v3, v9

    .line 173
    .local v3, "runDimension":J
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 174
    .end local v3    # "runDimension":J
    .end local v9    # "dimension":J
    .local v1, "dimension":J
    goto :goto_13d

    .end local v1    # "dimension":J
    .restart local v9    # "dimension":J
    :cond_107
    if-eqz v8, :cond_127

    .line 175
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v2, v2

    invoke-direct {v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v1

    .line 176
    .local v1, "minPosition":J
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    neg-int v3, v3

    int-to-long v3, v3

    add-long/2addr v3, v9

    .line 177
    .restart local v3    # "runDimension":J
    neg-long v11, v1

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 178
    .end local v3    # "runDimension":J
    .end local v9    # "dimension":J
    .local v1, "dimension":J
    goto :goto_13d

    .line 179
    .end local v1    # "dimension":J
    .restart local v9    # "dimension":J
    :cond_127
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v1, v1

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 182
    .end local v9    # "dimension":J
    .restart local v1    # "dimension":J
    :goto_13d
    return-wide v1
.end method

.method public defineTerminalWidgets(ZZ)V
    .registers 5
    .param p1, "horizontalCheck"    # Z
    .param p2, "verticalCheck"    # Z

    .line 236
    if-eqz p1, :cond_e

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v0, :cond_e

    .line 237
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    .line 239
    :cond_e
    if-eqz p2, :cond_1c

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-eqz v0, :cond_1c

    .line 240
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->firstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->defineTerminalWidget(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)Z

    .line 242
    :cond_1c
    return-void
.end method
