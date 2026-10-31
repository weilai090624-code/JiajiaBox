.class public Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;
.super Ljava/lang/Object;
.source "DependencyGraph.java"


# static fields
.field private static final USE_GROUPS:Z = true


# instance fields
.field private container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field private mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field private mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

.field private mNeedBuildGraph:Z

.field private mNeedRedoMeasures:Z

.field private mRuns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field

.field private runGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .registers 3
    .param p1, "container"    # Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 45
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->runGroups:Ljava/util/ArrayList;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 58
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 54
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 55
    return-void
.end method

.method private applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V
    .registers 25
    .param p1, "node"    # Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .param p2, "orientation"    # I
    .param p3, "direction"    # I
    .param p4, "end"    # Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .param p6, "group"    # Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;",
            "II",
            "Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;",
            ">;",
            "Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;",
            ")V"
        }
    .end annotation

    .line 710
    .local p5, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;>;"
    move-object/from16 v8, p0

    move/from16 v0, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p1

    iget-object v11, v10, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 711
    .local v11, "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->runGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    if-nez v1, :cond_159

    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    if-eq v11, v1, :cond_159

    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-ne v11, v1, :cond_20

    move/from16 v12, p3

    move-object/from16 v13, p5

    goto/16 :goto_15d

    .line 715
    :cond_20
    if-nez p6, :cond_30

    .line 716
    new-instance v1, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    move/from16 v12, p3

    invoke-direct {v1, v11, v12}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;I)V

    .line 717
    .end local p6    # "group":Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
    .local v1, "group":Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
    move-object/from16 v13, p5

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v14, v1

    goto :goto_36

    .line 715
    .end local v1    # "group":Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
    .restart local p6    # "group":Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
    :cond_30
    move/from16 v12, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    .line 720
    .end local p6    # "group":Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
    .local v14, "group":Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
    :goto_36
    iput-object v14, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->runGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 721
    invoke-virtual {v14, v11}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->add(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V

    .line 722
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_43
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 723
    .local v7, "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    instance-of v1, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_67

    .line 724
    move-object v2, v7

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v16, v7

    .end local v7    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    .local v16, "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    goto :goto_69

    .line 723
    .end local v16    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    .restart local v7    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    :cond_67
    move-object/from16 v16, v7

    .line 726
    .end local v7    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    :goto_69
    goto :goto_43

    .line 727
    :cond_6a
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_72
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 728
    .restart local v7    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    instance-of v1, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_96

    .line 729
    move-object v2, v7

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v16, v7

    .end local v7    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    .restart local v16    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    goto :goto_98

    .line 728
    .end local v16    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    .restart local v7    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    :cond_96
    move-object/from16 v16, v7

    .line 731
    .end local v7    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    :goto_98
    goto :goto_72

    .line 732
    :cond_99
    const/4 v15, 0x1

    if-ne v0, v15, :cond_d2

    instance-of v1, v11, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-eqz v1, :cond_d2

    .line 733
    move-object v1, v11

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_ab
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 734
    .restart local v7    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    instance-of v1, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_cf

    .line 735
    move-object v2, v7

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v4, 0x2

    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v17, v7

    .end local v7    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    .local v17, "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    goto :goto_d1

    .line 734
    .end local v17    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    .restart local v7    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    :cond_cf
    move-object/from16 v17, v7

    .line 737
    .end local v7    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    :goto_d1
    goto :goto_ab

    .line 739
    :cond_d2
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_da
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fc

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 740
    .local v7, "target":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    if-ne v7, v9, :cond_eb

    .line 741
    iput-boolean v15, v14, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->dual:Z

    .line 743
    :cond_eb
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v2, v7

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v17, v7

    .end local v7    # "target":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .local v17, "target":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 744
    .end local v17    # "target":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    goto :goto_da

    .line 745
    :cond_fc
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_104
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_126

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 746
    .restart local v7    # "target":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    if-ne v7, v9, :cond_115

    .line 747
    iput-boolean v15, v14, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->dual:Z

    .line 749
    :cond_115
    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object v2, v7

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v17, v7

    .end local v7    # "target":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .restart local v17    # "target":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    move-object v7, v14

    invoke-direct/range {v1 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 750
    .end local v17    # "target":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    goto :goto_104

    .line 751
    :cond_126
    if-ne v0, v15, :cond_158

    instance-of v1, v11, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-eqz v1, :cond_158

    .line 752
    move-object v1, v11

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_137
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_158

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 753
    .local v16, "target":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    const/4 v4, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v14

    :try_start_151
    invoke-direct/range {v1 .. v7}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V
    :try_end_154
    .catchall {:try_start_151 .. :try_end_154} :catchall_155

    .line 754
    .end local v16    # "target":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    goto :goto_137

    .line 753
    .end local v11    # "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    .end local v14    # "group":Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
    .end local p0    # "this":Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;
    .end local p1    # "node":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .end local p2    # "orientation":I
    .end local p3    # "direction":I
    .end local p4    # "end":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .end local p5    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;>;"
    :catchall_155
    move-exception v0

    move-object v1, v0

    throw v1

    .line 756
    .restart local v11    # "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    .restart local v14    # "group":Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
    .restart local p1    # "node":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .restart local p2    # "orientation":I
    .restart local p3    # "direction":I
    .restart local p4    # "end":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .restart local p5    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;>;"
    :cond_158
    return-void

    .line 711
    .end local v14    # "group":Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
    .restart local p6    # "group":Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
    :cond_159
    move/from16 v12, p3

    move-object/from16 v13, p5

    .line 712
    :goto_15d
    return-void
.end method

.method private basicMeasureWidgets(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)Z
    .registers 18
    .param p1, "constraintWidgetContainer"    # Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 388
    move-object/from16 v0, p1

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_39f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 389
    .local v2, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v3

    .line 390
    .local v4, "horizontal":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x1

    aget-object v5, v5, v10

    .line 392
    .local v5, "vertical":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_29

    .line 393
    iput-boolean v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 394
    goto :goto_8

    .line 399
    :cond_29
    iget v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    cmpg-float v6, v6, v11

    if-gez v6, :cond_38

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_38

    .line 400
    iput v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 402
    :cond_38
    iget v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_44

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_44

    .line 403
    iput v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 405
    :cond_44
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x3

    cmpl-float v6, v6, v8

    if-lez v6, :cond_80

    .line 406
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_5d

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v6, :cond_5a

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_5d

    .line 407
    :cond_5a
    iput v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    goto :goto_80

    .line 408
    :cond_5d
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_6c

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v6, :cond_69

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_6c

    .line 409
    :cond_69
    iput v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    goto :goto_80

    .line 410
    :cond_6c
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_80

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_80

    .line 411
    iget v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v6, :cond_7a

    .line 412
    iput v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 414
    :cond_7a
    iget v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v6, :cond_80

    .line 415
    iput v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 420
    :cond_80
    :goto_80
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_98

    iget v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v6, v10, :cond_98

    .line 421
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v6, :cond_94

    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v6, :cond_98

    .line 422
    :cond_94
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v12, v4

    goto :goto_99

    .line 425
    :cond_98
    move-object v12, v4

    .end local v4    # "horizontal":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .local v12, "horizontal":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    :goto_99
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v4, :cond_b1

    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v4, v10, :cond_b1

    .line 426
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_ad

    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v4, :cond_b1

    .line 427
    :cond_ad
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v13, v5

    goto :goto_b2

    .line 431
    :cond_b1
    move-object v13, v5

    .end local v5    # "vertical":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .local v13, "vertical":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    :goto_b2
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iput-object v12, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 432
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    iput v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->matchConstraintsType:I

    .line 433
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iput-object v13, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimensionBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 434
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    iput v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->matchConstraintsType:I

    .line 436
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v12, v4, :cond_d2

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v12, v4, :cond_d2

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v4, :cond_e0

    :cond_d2
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v13, v4, :cond_346

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v13, v4, :cond_346

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v4, :cond_e0

    goto/16 :goto_346

    .line 455
    :cond_e0
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/high16 v14, 0x3f000000    # 0.5f

    if-ne v12, v4, :cond_1cb

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v13, v4, :cond_ee

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v4, :cond_1cb

    .line 456
    :cond_ee
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v4, v9, :cond_133

    .line 457
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v3, :cond_102

    .line 458
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 460
    :cond_102
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    .line 461
    .local v3, "height":I
    int-to-float v4, v3

    iget v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float v4, v4, v5

    add-float/2addr v4, v14

    float-to-int v11, v4

    .line 462
    .local v11, "width":I
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v4, p0

    move-object v5, v2

    move v7, v11

    move v9, v3

    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 463
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 464
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 465
    iput-boolean v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 466
    goto/16 :goto_8

    .line 467
    .end local v3    # "height":I
    .end local v11    # "width":I
    :cond_133
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v4, v10, :cond_14e

    .line 468
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v8, v13

    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 469
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 470
    goto/16 :goto_8

    .line 471
    :cond_14e
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v4, v7, :cond_196

    .line 472
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v3

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_162

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v3

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_1cb

    .line 474
    :cond_162
    iget v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 475
    .local v3, "percent":F
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    add-float/2addr v4, v14

    float-to-int v11, v4

    .line 476
    .restart local v11    # "width":I
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    .line 477
    .local v14, "height":I
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v4, p0

    move-object v5, v2

    move v7, v11

    move-object v8, v13

    move v9, v14

    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 478
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 479
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 480
    iput-boolean v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 481
    goto/16 :goto_8

    .line 485
    .end local v3    # "percent":F
    .end local v11    # "width":I
    .end local v14    # "height":I
    :cond_196
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v4, v3

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_1a6

    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v4, v10

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v4, :cond_1cb

    .line 487
    :cond_1a6
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v8, v13

    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 488
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 489
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 490
    iput-boolean v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 491
    goto/16 :goto_8

    .line 495
    :cond_1cb
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v4, :cond_2c0

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v12, v4, :cond_1d7

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v4, :cond_2c0

    .line 496
    :cond_1d7
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v4, v9, :cond_228

    .line 497
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v3, :cond_1eb

    .line 498
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 500
    :cond_1eb
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    .line 501
    .local v3, "width":I
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 502
    .local v4, "ratio":F
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatioSide()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1fc

    .line 503
    div-float v4, v11, v4

    move v11, v4

    goto :goto_1fd

    .line 502
    :cond_1fc
    move v11, v4

    .line 505
    .end local v4    # "ratio":F
    .local v11, "ratio":F
    :goto_1fd
    int-to-float v4, v3

    mul-float v4, v4, v11

    add-float/2addr v4, v14

    float-to-int v14, v4

    .line 507
    .restart local v14    # "height":I
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v4, p0

    move-object v5, v2

    move v7, v3

    move v9, v14

    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 508
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 509
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 510
    iput-boolean v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 511
    goto/16 :goto_8

    .line 512
    .end local v3    # "width":I
    .end local v11    # "ratio":F
    .end local v14    # "height":I
    :cond_228
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v4, v10, :cond_243

    .line 513
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v12

    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 514
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 515
    goto/16 :goto_8

    .line 516
    :cond_243
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v4, v7, :cond_28b

    .line 517
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v10

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_257

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v4, v4, v10

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_2c0

    .line 519
    :cond_257
    iget v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 520
    .local v3, "percent":F
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    .line 521
    .local v11, "width":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    add-float/2addr v4, v14

    float-to-int v14, v4

    .line 522
    .restart local v14    # "height":I
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v12

    move v7, v11

    move v9, v14

    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 523
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 524
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 525
    iput-boolean v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 526
    goto/16 :goto_8

    .line 530
    .end local v3    # "percent":F
    .end local v11    # "width":I
    .end local v14    # "height":I
    :cond_28b
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v4, v7

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v4, :cond_29b

    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    aget-object v4, v4, v9

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-nez v4, :cond_2c0

    .line 532
    :cond_29b
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object v8, v13

    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 533
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 534
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 535
    iput-boolean v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 536
    goto/16 :goto_8

    .line 540
    :cond_2c0
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v4, :cond_344

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v4, :cond_344

    .line 541
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v4, v10, :cond_324

    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v4, v10, :cond_2d1

    goto :goto_324

    .line 546
    :cond_2d1
    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v4, v7, :cond_344

    iget v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v4, v7, :cond_344

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v4, v3

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_344

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v10

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_344

    .line 550
    iget v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 551
    .local v3, "horizPercent":F
    iget v11, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 552
    .local v11, "vertPercent":F
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    add-float/2addr v4, v14

    float-to-int v15, v4

    .line 553
    .local v15, "width":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v11

    add-float/2addr v4, v14

    float-to-int v14, v4

    .line 554
    .restart local v14    # "height":I
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v4, p0

    move-object v5, v2

    move v7, v15

    move v9, v14

    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 555
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 556
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 557
    iput-boolean v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    goto :goto_344

    .line 543
    .end local v3    # "horizPercent":F
    .end local v11    # "vertPercent":F
    .end local v14    # "height":I
    .end local v15    # "width":I
    :cond_324
    :goto_324
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object v5, v2

    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 544
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 545
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 560
    .end local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v12    # "horizontal":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v13    # "vertical":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_344
    :goto_344
    goto/16 :goto_8

    .line 438
    .restart local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .restart local v12    # "horizontal":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v13    # "vertical":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_346
    :goto_346
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    .line 439
    .local v3, "width":I
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v12, v4, :cond_35f

    .line 440
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v4, v5

    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    sub-int v3, v4, v5

    .line 441
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 443
    :cond_35f
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    .line 444
    .local v4, "height":I
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v5, :cond_37a

    .line 445
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v5

    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v5, v6

    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    sub-int v4, v5, v6

    .line 446
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move v11, v4

    goto :goto_37b

    .line 444
    :cond_37a
    move v11, v4

    .line 448
    .end local v4    # "height":I
    .local v11, "height":I
    :goto_37b
    move-object/from16 v4, p0

    move-object v5, v2

    move-object v6, v12

    move v7, v3

    move-object v8, v13

    move v9, v11

    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 449
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 450
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 451
    iput-boolean v10, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 452
    goto/16 :goto_8

    .line 561
    .end local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v3    # "width":I
    .end local v11    # "height":I
    .end local v12    # "horizontal":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v13    # "vertical":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_39f
    return v3
.end method

.method private computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I
    .registers 10
    .param p1, "container"    # Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .param p2, "orientation"    # I

    .line 65
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 66
    .local v0, "count":I
    const-wide/16 v1, 0x0

    .line 67
    .local v1, "wrapSize":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_1e

    .line 68
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 69
    .local v4, "run":Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
    invoke-virtual {v4, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->computeWrapSize(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)J

    move-result-wide v5

    .line 70
    .local v5, "size":J
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 67
    .end local v4    # "run":Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
    .end local v5    # "size":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 72
    .end local v3    # "i":I
    :cond_1e
    long-to-int v3, v1

    return v3
.end method

.method private displayGraph()V
    .registers 5

    .line 701
    const-string v0, "digraph {\n"

    .line 702
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 703
    .local v2, "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    invoke-direct {p0, v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->generateDisplayGraph(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .end local v2    # "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    goto :goto_8

    .line 705
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content:<<\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 707
    return-void
.end method

.method private findGroup(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V
    .registers 14
    .param p1, "run"    # Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    .param p2, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;",
            ">;)V"
        }
    .end annotation

    .line 759
    .local p3, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;>;"
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 760
    .local v1, "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v2, :cond_27

    .line 761
    move-object v2, v1

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 762
    .local v2, "node":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, v2

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .end local v2    # "node":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    goto :goto_3b

    .line 763
    :cond_27
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    if-eqz v2, :cond_3b

    .line 764
    move-object v2, v1

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 765
    .local v2, "dependentRun":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    goto :goto_3c

    .line 763
    .end local v2    # "dependentRun":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    :cond_3b
    :goto_3b
    nop

    .line 767
    .end local v1    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    :goto_3c
    goto :goto_8

    .line 768
    :cond_3d
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 769
    .restart local v1    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v2, :cond_64

    .line 770
    move-object v2, v1

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 771
    .local v2, "node":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v9, 0x0

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, v2

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .end local v2    # "node":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    goto :goto_78

    .line 772
    :cond_64
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    if-eqz v2, :cond_78

    .line 773
    move-object v2, v1

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 774
    .local v2, "dependentRun":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    iget-object v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    const/4 v9, 0x0

    const/4 v6, 0x1

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    goto :goto_79

    .line 772
    .end local v2    # "dependentRun":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    :cond_78
    :goto_78
    nop

    .line 776
    .end local v1    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    :goto_79
    goto :goto_45

    .line 777
    :cond_7a
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a6

    .line 778
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_88
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    .line 779
    .restart local v1    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    instance-of v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v2, :cond_a5

    .line 780
    move-object v2, v1

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 781
    .local v2, "node":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x2

    move-object v3, p0

    move-object v4, v2

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->applyGroup(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;IILandroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;)V

    .line 783
    .end local v1    # "dependent":Landroidx/constraintlayout/core/widgets/analyzer/Dependency;
    .end local v2    # "node":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    :cond_a5
    goto :goto_88

    .line 785
    :cond_a6
    return-void
.end method

.method private generateChainDisplayGraph(Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "chain"    # Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;
    .param p2, "content"    # Ljava/lang/String;

    .line 893
    iget v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    .line 894
    .local v0, "orientation":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "subgraph "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 895
    .local v1, "subgroup":Ljava/lang/StringBuilder;
    const-string v2, "cluster_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    if-nez v0, :cond_20

    .line 898
    const-string v2, "_h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 900
    :cond_20
    const-string v2, "_v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    :goto_25
    const-string v2, " {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    const-string v2, ""

    .line 904
    .local v2, "definitions":Ljava/lang/String;
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 905
    .local v4, "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    if-nez v0, :cond_4f

    .line 907
    const-string v5, "_HORIZONTAL"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 909
    :cond_4f
    const-string v5, "_VERTICAL"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    :goto_54
    const-string v5, ";\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-direct {p0, v4, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->generateDisplayGraph(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 913
    .end local v4    # "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    goto :goto_32

    .line 914
    :cond_5e
    const-string/jumbo v3, "}\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private generateDisplayGraph(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "root"    # Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    .param p2, "content"    # Ljava/lang/String;

    .line 935
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 936
    .local v0, "start":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 937
    .local v1, "end":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 939
    .local v2, "sb":Ljava/lang/StringBuilder;
    instance-of v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    if-nez v3, :cond_2d

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_2d

    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 940
    return-object p2

    .line 942
    :cond_2d
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->nodeDefinition(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->isCenteredConnection(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)Z

    move-result v3

    .line 945
    .local v3, "centeredConnection":Z
    invoke-direct {p0, v0, v3, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->generateDisplayNode(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 946
    invoke-direct {p0, v1, v3, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->generateDisplayNode(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 947
    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-eqz v4, :cond_4d

    .line 948
    move-object v4, p1

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 949
    .local v4, "baseline":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    invoke-direct {p0, v4, v3, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->generateDisplayNode(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 952
    .end local v4    # "baseline":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    :cond_4d
    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    const/4 v5, 0x0

    const-string v6, " -> "

    const-string v7, "\n"

    if-nez v4, :cond_106

    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    if-eqz v4, :cond_63

    move-object v4, p1

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    if-nez v4, :cond_63

    goto/16 :goto_106

    .line 979
    :cond_63
    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    if-nez v4, :cond_76

    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    if-eqz v4, :cond_74

    move-object v4, p1

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    iget v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;->orientation:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_74

    goto :goto_76

    :cond_74
    :goto_74
    goto/16 :goto_196

    .line 981
    :cond_76
    :goto_76
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    .line 982
    .local v4, "behaviour":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v8, :cond_b4

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v8, :cond_85

    goto :goto_b4

    .line 998
    :cond_85
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_196

    iget-object v6, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v6

    cmpl-float v5, v6, v5

    if-lez v5, :cond_196

    .line 999
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    const-string v5, "_VERTICAL -> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    const-string v5, "_HORIZONTAL;\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_196

    .line 984
    :cond_b4
    :goto_b4
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_dd

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_dd

    .line 985
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_196

    .line 990
    :cond_dd
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_196

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_196

    .line 991
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_196

    .line 954
    .end local v4    # "behaviour":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_106
    :goto_106
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    .line 955
    .restart local v4    # "behaviour":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v8, :cond_144

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v8, :cond_115

    goto :goto_144

    .line 971
    :cond_115
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_74

    iget-object v6, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v6

    cmpl-float v5, v6, v5

    if-lez v5, :cond_74

    .line 972
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    const-string v5, "_HORIZONTAL -> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const-string v5, "_VERTICAL;\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_74

    .line 957
    :cond_144
    :goto_144
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_16d

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_16d

    .line 958
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_74

    .line 963
    :cond_16d
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_74

    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_74

    .line 964
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_74

    .line 1007
    .end local v4    # "behaviour":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_196
    :goto_196
    instance-of v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    if-eqz v4, :cond_1a2

    .line 1008
    move-object v4, p1

    check-cast v4, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    invoke-direct {p0, v4, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->generateChainDisplayGraph(Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1010
    :cond_1a2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private generateDisplayNode(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "node"    # Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .param p2, "centeredConnection"    # Z
    .param p3, "content"    # Ljava/lang/String;

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 790
    .local v0, "contentBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 791
    .local v2, "target":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 792
    .local v3, "constraint":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 793
    iget v5, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    if-gtz v5, :cond_55

    if-nez p2, :cond_55

    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    instance-of v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    if-eqz v5, :cond_e1

    .line 794
    :cond_55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 795
    iget v5, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    if-lez v5, :cond_a0

    .line 796
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "label=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 797
    if-eqz p2, :cond_a0

    .line 798
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 801
    :cond_a0
    if-eqz p2, :cond_b5

    .line 802
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " style=dashed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 804
    :cond_b5
    iget-object v5, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    instance-of v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    if-eqz v5, :cond_ce

    .line 805
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " style=bold,color=gray "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 807
    :cond_ce
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 809
    :cond_e1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 810
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .end local v2    # "target":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .end local v3    # "constraint":Ljava/lang/String;
    goto/16 :goto_b

    .line 812
    :cond_f7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 816
    return-object p3
.end method

.method private isCenteredConnection(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)Z
    .registers 7
    .param p1, "start"    # Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    .param p2, "end"    # Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 919
    const/4 v0, 0x0

    .line 920
    .local v0, "startTargets":I
    const/4 v1, 0x0

    .line 921
    .local v1, "endTargets":I
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 922
    .local v3, "s":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    if-eq v3, p2, :cond_18

    .line 923
    add-int/lit8 v0, v0, 0x1

    .line 925
    .end local v3    # "s":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    :cond_18
    goto :goto_8

    .line 926
    :cond_19
    iget-object v2, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    .line 927
    .local v3, "e":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    if-eq v3, p1, :cond_2f

    .line 928
    add-int/lit8 v1, v1, 0x1

    .line 930
    .end local v3    # "e":Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
    :cond_2f
    goto :goto_1f

    .line 931
    :cond_30
    if-lez v0, :cond_36

    if-lez v1, :cond_36

    const/4 v2, 0x1

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    return v2
.end method

.method private measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .registers 8
    .param p1, "widget"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p2, "horizontalBehavior"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .param p3, "horizontalDimension"    # I
    .param p4, "verticalBehavior"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .param p5, "verticalDimension"    # I

    .line 376
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput-object p2, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 377
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput-object p4, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 378
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 379
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iput p5, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 380
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    .line 381
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    .line 382
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 383
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 384
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 385
    return-void
.end method

.method private nodeDefinition(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)Ljava/lang/String;
    .registers 10
    .param p1, "run"    # Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 820
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    .line 821
    .local v0, "orientation":I
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 823
    .local v2, "definition":Ljava/lang/StringBuilder;
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-nez v0, :cond_16

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    goto :goto_1a

    .line 824
    :cond_16
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    :goto_1a
    nop

    .line 825
    .local v3, "behaviour":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->runGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 827
    .local v4, "runGroup":Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
    if-nez v0, :cond_25

    .line 828
    const-string v5, "_HORIZONTAL"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 830
    :cond_25
    const-string v5, "_VERTICAL"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    :goto_2a
    const-string v5, " [shape=none, label=<"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    const-string v5, "<TABLE BORDER=\"0\" CELLSPACING=\"0\" CELLPADDING=\"2\">"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    const-string v5, "  <TR>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    const-string v5, " BGCOLOR=\"green\""

    const-string v6, "    <TD "

    if-nez v0, :cond_51

    .line 836
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v7, :cond_4b

    .line 838
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    :cond_4b
    const-string v7, " PORT=\"LEFT\" BORDER=\"1\">L</TD>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    .line 842
    :cond_51
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v7, :cond_5d

    .line 844
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    :cond_5d
    const-string v7, " PORT=\"TOP\" BORDER=\"1\">T</TD>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    :goto_62
    const-string v7, "    <TD BORDER=\"1\" "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v7, :cond_79

    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    if-nez v7, :cond_79

    .line 850
    const-string v7, " BGCOLOR=\"green\" "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_90

    .line 851
    :cond_79
    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v7, :cond_85

    .line 852
    const-string v7, " BGCOLOR=\"lightgray\" "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_90

    .line 853
    :cond_85
    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    if-eqz v7, :cond_90

    .line 854
    const-string v7, " BGCOLOR=\"yellow\" "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    :cond_90
    :goto_90
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v7, :cond_9a

    .line 857
    const-string/jumbo v7, "style=\"dashed\""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    :cond_9a
    const-string v7, ">"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    if-eqz v4, :cond_bf

    .line 862
    const-string v7, " ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    iget v7, v4, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->groupIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 864
    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    sget v7, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->index:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 866
    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    :cond_bf
    const-string v7, " </TD>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    if-nez v0, :cond_d8

    .line 870
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    iget-object v6, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v6, :cond_d2

    .line 872
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    :cond_d2
    const-string v5, " PORT=\"RIGHT\" BORDER=\"1\">R</TD>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fd

    .line 876
    :cond_d8
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    move-object v7, p1

    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v7, :cond_e7

    .line 878
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    :cond_e7
    const-string v7, " PORT=\"BASELINE\" BORDER=\"1\">b</TD>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    iget-object v6, p1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v6, :cond_f8

    .line 883
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    :cond_f8
    const-string v5, " PORT=\"BOTTOM\" BORDER=\"1\">B</TD>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    :goto_fd
    const-string v5, "  </TR></TABLE>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    const-string v5, ">];\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public buildGraph()V
    .registers 5

    .line 630
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->buildGraph(Ljava/util/ArrayList;)V

    .line 633
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 635
    const/4 v0, 0x0

    sput v0, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->index:I

    .line 636
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->findGroup(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 637
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->findGroup(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 639
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 640
    return-void
.end method

.method public buildGraph(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;",
            ">;)V"
        }
    .end annotation

    .line 643
    .local p1, "runs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 644
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->clear()V

    .line 645
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->clear()V

    .line 646
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, "chainRuns":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;>;"
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 650
    .local v2, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v3, :cond_41

    .line 651
    new-instance v3, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;

    invoke-direct {v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    goto :goto_28

    .line 654
    :cond_41
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 655
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    if-nez v3, :cond_53

    .line 657
    new-instance v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 659
    :cond_53
    if-nez v0, :cond_5b

    .line 660
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v0, v3

    .line 662
    :cond_5b
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 664
    :cond_61
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    :goto_66
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 667
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    if-nez v3, :cond_78

    .line 669
    new-instance v3, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    iput-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    .line 671
    :cond_78
    if-nez v0, :cond_80

    .line 672
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v0, v3

    .line 674
    :cond_80
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 676
    :cond_86
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    :goto_8b
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/HelperWidget;

    if-eqz v3, :cond_97

    .line 679
    new-instance v3, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    invoke-direct {v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    .end local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_97
    goto :goto_28

    .line 682
    :cond_98
    if-eqz v0, :cond_9d

    .line 683
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 685
    :cond_9d
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 686
    .local v2, "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->clear()V

    .line 687
    .end local v2    # "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    goto :goto_a1

    .line 688
    :cond_b1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 689
    .restart local v2    # "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-ne v3, v4, :cond_c8

    .line 690
    goto :goto_b5

    .line 692
    :cond_c8
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->apply()V

    .line 693
    .end local v2    # "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    goto :goto_b5

    .line 696
    :cond_cc
    return-void
.end method

.method public defineTerminalWidgets(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .registers 10
    .param p1, "horizontalBehavior"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .param p2, "verticalBehavior"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 82
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    if-eqz v0, :cond_52

    .line 83
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "hasBarrier":Z
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 88
    .local v2, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v4, v5, v3

    .line 89
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v4, v3, v4

    .line 90
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    if-eqz v3, :cond_2b

    .line 91
    const/4 v0, 0x1

    .line 93
    .end local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_2b
    goto :goto_10

    .line 94
    :cond_2c
    if-nez v0, :cond_52

    .line 95
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

    .line 96
    .local v2, "group":Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v5, :cond_46

    const/4 v5, 0x1

    goto :goto_47

    :cond_46
    const/4 v5, 0x0

    :goto_47
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v6, :cond_4d

    const/4 v6, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v6, 0x0

    :goto_4e
    invoke-virtual {v2, v5, v6}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->defineTerminalWidgets(ZZ)V

    .line 97
    .end local v2    # "group":Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
    goto :goto_34

    .line 101
    .end local v0    # "hasBarrier":Z
    :cond_52
    return-void
.end method

.method public directMeasure(Z)Z
    .registers 13
    .param p1, "optimizeWrap"    # Z

    .line 110
    const/4 v0, 0x1

    and-int/2addr p1, v0

    .line 112
    iget-boolean v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    const/4 v2, 0x0

    if-nez v1, :cond_b

    iget-boolean v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    if-eqz v1, :cond_48

    .line 113
    :cond_b
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 114
    .local v3, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->ensureWidgetRuns()V

    .line 115
    iput-boolean v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 116
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 117
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 118
    .end local v3    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    goto :goto_13

    .line 119
    :cond_2f
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->ensureWidgetRuns()V

    .line 120
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measured:Z

    .line 121
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 122
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 123
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 126
    :cond_48
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->basicMeasureWidgets(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)Z

    move-result v1

    .line 127
    .local v1, "avoid":Z
    if-eqz v1, :cond_51

    .line 128
    return v2

    .line 131
    :cond_51
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 132
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 134
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    .line 135
    .local v3, "originalHorizontalDimension":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    .line 137
    .local v4, "originalVerticalDimension":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    iget-boolean v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    if-eqz v5, :cond_6e

    .line 138
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 141
    :cond_6e
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getX()I

    move-result v5

    .line 142
    .local v5, "x1":I
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getY()I

    move-result v6

    .line 144
    .local v6, "y1":I
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v7, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 145
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 149
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 152
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v7, :cond_97

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v7, :cond_102

    .line 153
    :cond_97
    if-eqz p1, :cond_b4

    .line 154
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 155
    .local v8, "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    move-result v9

    if-nez v9, :cond_b3

    .line 156
    const/4 p1, 0x0

    .line 157
    goto :goto_b4

    .line 159
    .end local v8    # "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    :cond_b3
    goto :goto_9f

    .line 162
    :cond_b4
    :goto_b4
    if-eqz p1, :cond_db

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v7, :cond_db

    .line 163
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 164
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v8, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 165
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 167
    :cond_db
    if-eqz p1, :cond_102

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v7, :cond_102

    .line 168
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 169
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v8, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 170
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 174
    :cond_102
    const/4 v7, 0x0

    .line 179
    .local v7, "checkRoot":Z
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, v2

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v9, :cond_117

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v8, v2

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v8, :cond_168

    .line 183
    :cond_117
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v2

    add-int/2addr v2, v5

    .line 184
    .local v2, "x2":I
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v8, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 185
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    sub-int v9, v2, v5

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 186
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 187
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, v0

    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v9, :cond_149

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v8, v0

    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v8, :cond_164

    .line 189
    :cond_149
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v0

    add-int/2addr v0, v6

    .line 190
    .local v0, "y2":I
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 191
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    sub-int v9, v0, v6

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 193
    .end local v0    # "y2":I
    :cond_164
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 194
    const/4 v7, 0x1

    .line 200
    .end local v2    # "x2":I
    :cond_168
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_189

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 201
    .local v2, "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    iget-object v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-ne v8, v9, :cond_185

    iget-boolean v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolved:Z

    if-nez v8, :cond_185

    .line 202
    goto :goto_16e

    .line 204
    :cond_185
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->applyToWidget()V

    .line 205
    .end local v2    # "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    goto :goto_16e

    .line 207
    :cond_189
    const/4 v0, 0x1

    .line 208
    .local v0, "allResolved":Z
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_190
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1ca

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 209
    .restart local v8    # "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    if-nez v7, :cond_1a5

    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v10, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-ne v9, v10, :cond_1a5

    .line 210
    goto :goto_190

    .line 212
    :cond_1a5
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v9, :cond_1ad

    .line 213
    const/4 v0, 0x0

    .line 214
    goto :goto_1ca

    .line 216
    :cond_1ad
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v9, :cond_1b9

    instance-of v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;

    if-nez v9, :cond_1b9

    .line 217
    const/4 v0, 0x0

    .line 218
    goto :goto_1ca

    .line 220
    :cond_1b9
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v9, :cond_1c9

    instance-of v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    if-nez v9, :cond_1c9

    instance-of v9, v8, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;

    if-nez v9, :cond_1c9

    .line 221
    const/4 v0, 0x0

    .line 222
    goto :goto_1ca

    .line 224
    .end local v8    # "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    :cond_1c9
    goto :goto_190

    .line 226
    :cond_1ca
    :goto_1ca
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 227
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 229
    return v0
.end method

.method public directMeasureSetup(Z)Z
    .registers 6
    .param p1, "optimizeWrap"    # Z

    .line 233
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_73

    .line 234
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 235
    .local v2, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->ensureWidgetRuns()V

    .line 236
    iput-boolean v1, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 237
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iput-boolean v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 238
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iput-boolean v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->resolved:Z

    .line 239
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 240
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iput-boolean v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 241
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iput-boolean v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->resolved:Z

    .line 242
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 243
    .end local v2    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    goto :goto_d

    .line 244
    :cond_3d
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->ensureWidgetRuns()V

    .line 245
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measured:Z

    .line 246
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 247
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->resolved:Z

    .line 248
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 249
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 250
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->resolved:Z

    .line 251
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 252
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 255
    :cond_73
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->basicMeasureWidgets(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)Z

    move-result v0

    .line 256
    .local v0, "avoid":Z
    if-eqz v0, :cond_7c

    .line 257
    return v1

    .line 260
    :cond_7c
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 261
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 262
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 263
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 264
    const/4 v1, 0x1

    return v1
.end method

.method public directMeasureWithOrientation(ZI)Z
    .registers 13
    .param p1, "optimizeWrap"    # Z
    .param p2, "orientation"    # I

    .line 268
    const/4 v0, 0x1

    and-int/2addr p1, v0

    .line 270
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    .line 271
    .local v1, "originalHorizontalDimension":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    .line 273
    .local v3, "originalVerticalDimension":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getX()I

    move-result v4

    .line 274
    .local v4, "x1":I
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getY()I

    move-result v5

    .line 277
    .local v5, "y1":I
    if-eqz p1, :cond_95

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v6, :cond_25

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_95

    .line 278
    :cond_25
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 279
    .local v7, "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    iget v8, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    if-ne v8, p2, :cond_43

    .line 280
    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    move-result v8

    if-nez v8, :cond_43

    .line 281
    const/4 p1, 0x0

    .line 282
    goto :goto_44

    .line 284
    .end local v7    # "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    :cond_43
    goto :goto_2b

    .line 286
    :cond_44
    :goto_44
    if-nez p2, :cond_6e

    .line 287
    if-eqz p1, :cond_95

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v6, :cond_95

    .line 288
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 289
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v7, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 290
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_95

    .line 293
    :cond_6e
    if-eqz p1, :cond_95

    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_95

    .line 294
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 295
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v7, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->computeWrap(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 296
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 301
    :cond_95
    :goto_95
    const/4 v6, 0x0

    .line 306
    .local v6, "checkRoot":Z
    if-nez p2, :cond_c9

    .line 307
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v2

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v7, :cond_ac

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v2

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_f9

    .line 309
    :cond_ac
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v0

    add-int/2addr v0, v4

    .line 310
    .local v0, "x2":I
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 311
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    sub-int v7, v0, v4

    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 312
    const/4 v6, 0x1

    .line 313
    .end local v0    # "x2":I
    goto :goto_f9

    .line 315
    :cond_c9
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v0

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v7, :cond_dd

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v2, v0

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v2, :cond_f9

    .line 317
    :cond_dd
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    .line 318
    .local v0, "y2":I
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 319
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    sub-int v7, v0, v5

    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 320
    const/4 v6, 0x1

    .line 323
    .end local v0    # "y2":I
    :cond_f9
    :goto_f9
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 326
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_102
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_122

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 327
    .local v2, "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    iget v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    if-eq v7, p2, :cond_113

    .line 328
    goto :goto_102

    .line 330
    :cond_113
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-ne v7, v8, :cond_11e

    iget-boolean v7, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->resolved:Z

    if-nez v7, :cond_11e

    .line 331
    goto :goto_102

    .line 333
    :cond_11e
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->applyToWidget()V

    .line 334
    .end local v2    # "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    goto :goto_102

    .line 336
    :cond_122
    const/4 v0, 0x1

    .line 337
    .local v0, "allResolved":Z
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_129
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_160

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    .line 338
    .restart local v7    # "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    iget v8, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->orientation:I

    if-eq v8, p2, :cond_13a

    .line 339
    goto :goto_129

    .line 341
    :cond_13a
    if-nez v6, :cond_143

    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    if-ne v8, v9, :cond_143

    .line 342
    goto :goto_129

    .line 344
    :cond_143
    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v8, :cond_14b

    .line 345
    const/4 v0, 0x0

    .line 346
    goto :goto_160

    .line 348
    :cond_14b
    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v8, :cond_153

    .line 349
    const/4 v0, 0x0

    .line 350
    goto :goto_160

    .line 352
    :cond_153
    instance-of v8, v7, Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

    if-nez v8, :cond_15f

    iget-object v8, v7, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v8, v8, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v8, :cond_15f

    .line 353
    const/4 v0, 0x0

    .line 354
    goto :goto_160

    .line 356
    .end local v7    # "run":Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    :cond_15f
    goto :goto_129

    .line 358
    :cond_160
    :goto_160
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 359
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 361
    return v0
.end method

.method public invalidateGraph()V
    .registers 2

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 617
    return-void
.end method

.method public invalidateMeasures()V
    .registers 2

    .line 623
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 624
    return-void
.end method

.method public measureWidgets()V
    .registers 20

    .line 565
    move-object/from16 v6, p0

    iget-object v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->container:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_101

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 566
    .local v8, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    iget-boolean v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    if-eqz v0, :cond_1c

    .line 567
    goto :goto_a

    .line 569
    :cond_1c
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v9, v0, v1

    .line 570
    .local v9, "horiz":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x1

    aget-object v11, v0, v10

    .line 571
    .local v11, "vert":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    iget v12, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 572
    .local v12, "horizMatchConstraintsType":I
    iget v13, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 574
    .local v13, "vertMatchConstraintsType":I
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v9, v0, :cond_37

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v0, :cond_35

    if-ne v12, v10, :cond_35

    goto :goto_37

    :cond_35
    const/4 v0, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v0, 0x1

    :goto_38
    move v14, v0

    .line 577
    .local v14, "horizWrap":Z
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v11, v0, :cond_43

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v0, :cond_44

    if-ne v13, v10, :cond_44

    :cond_43
    const/4 v1, 0x1

    :cond_44
    move v15, v1

    .line 580
    .local v15, "vertWrap":Z
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 581
    .local v5, "horizResolved":Z
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget-boolean v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 583
    .local v4, "vertResolved":Z
    if-eqz v5, :cond_79

    if-eqz v4, :cond_79

    .line 584
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    sget-object v16, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    move-object/from16 v0, p0

    move/from16 v17, v1

    move-object v1, v8

    move/from16 v18, v4

    .end local v4    # "vertResolved":Z
    .local v18, "vertResolved":Z
    move-object/from16 v4, v16

    move/from16 v16, v5

    .end local v5    # "horizResolved":Z
    .local v16, "horizResolved":Z
    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 586
    iput-boolean v10, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_ea

    .line 583
    .end local v16    # "horizResolved":Z
    .end local v18    # "vertResolved":Z
    .restart local v4    # "vertResolved":Z
    .restart local v5    # "horizResolved":Z
    :cond_79
    move/from16 v18, v4

    move/from16 v16, v5

    .line 587
    .end local v4    # "vertResolved":Z
    .end local v5    # "horizResolved":Z
    .restart local v16    # "horizResolved":Z
    .restart local v18    # "vertResolved":Z
    if-eqz v16, :cond_b4

    if-eqz v15, :cond_b4

    .line 588
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 590
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v0, :cond_a6

    .line 591
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto :goto_ea

    .line 593
    :cond_a6
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 594
    iput-boolean v10, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    goto :goto_ea

    .line 596
    :cond_b4
    if-eqz v18, :cond_ea

    if-eqz v14, :cond_ea

    .line 597
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 599
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v0, :cond_dd

    .line 600
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto :goto_ea

    .line 602
    :cond_dd
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 603
    iput-boolean v10, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    .line 606
    :cond_ea
    :goto_ea
    iget-boolean v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    if-eqz v0, :cond_ff

    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baselineDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    if-eqz v0, :cond_ff

    .line 607
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baselineDimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 609
    .end local v8    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .end local v9    # "horiz":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v11    # "vert":Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v12    # "horizMatchConstraintsType":I
    .end local v13    # "vertMatchConstraintsType":I
    .end local v14    # "horizWrap":Z
    .end local v15    # "vertWrap":Z
    .end local v16    # "horizResolved":Z
    .end local v18    # "vertResolved":Z
    :cond_ff
    goto/16 :goto_a

    .line 610
    :cond_101
    return-void
.end method

.method public setMeasurer(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    .registers 2
    .param p1, "measurer"    # Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 61
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    .line 62
    return-void
.end method
