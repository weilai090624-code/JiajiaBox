.class Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;
.super Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
.source "DimensionDependency.java"


# instance fields
.field public wrapValue:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V
    .registers 3
    .param p1, "run"    # Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 24
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V

    .line 25
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-eqz v0, :cond_c

    .line 26
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->HORIZONTAL_DIMENSION:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    goto :goto_10

    .line 28
    :cond_c
    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->VERTICAL_DIMENSION:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    .line 30
    :goto_10
    return-void
.end method


# virtual methods
.method public resolve(I)V
    .registers 4
    .param p1, "value"    # I

    .line 33
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v0, :cond_5

    .line 34
    return-void

    .line 36
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 37
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    .line 38
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 39
    .local v1, "node":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    invoke-interface {v1, v1}, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;->update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V

    .line 40
    .end local v1    # "node":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    goto :goto_10

    .line 41
    :cond_20
    return-void
.end method
