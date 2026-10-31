.class public Landroidx/constraintlayout/core/ArrayRow;
.super Ljava/lang/Object;
.source "ArrayRow.java"

# interfaces
.implements Landroidx/constraintlayout/core/LinearSystem$Row;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final FULL_NEW_CHECK:Z


# instance fields
.field constantValue:F

.field isSimpleDefinition:Z

.field used:Z

.field variable:Landroidx/constraintlayout/core/SolverVariable;

.field public variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

.field variablesToUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/SolverVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/ArrayRow;->used:Z

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    .line 53
    iput-boolean v0, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/Cache;)V
    .registers 4
    .param p1, "cache"    # Landroidx/constraintlayout/core/Cache;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/ArrayRow;->used:Z

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    .line 53
    iput-boolean v0, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 58
    new-instance v0, Landroidx/constraintlayout/core/ArrayLinkedVariables;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/core/ArrayLinkedVariables;-><init>(Landroidx/constraintlayout/core/ArrayRow;Landroidx/constraintlayout/core/Cache;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 60
    return-void
.end method

.method private isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z
    .registers 5
    .param p1, "variable"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p2, "system"    # Landroidx/constraintlayout/core/LinearSystem;

    .line 532
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method private pickPivotInVariables([ZLandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;
    .registers 14
    .param p1, "avoid"    # [Z
    .param p2, "exclude"    # Landroidx/constraintlayout/core/SolverVariable;

    .line 610
    const/4 v0, 0x1

    .line 611
    .local v0, "all":Z
    const/4 v1, 0x0

    .line 612
    .local v1, "value":F
    const/4 v2, 0x0

    .line 613
    .local v2, "pivot":Landroidx/constraintlayout/core/SolverVariable;
    const/4 v3, 0x0

    .line 614
    .local v3, "pivotSlack":Landroidx/constraintlayout/core/SolverVariable;
    const/4 v4, 0x0

    .line 616
    .local v4, "valueSlack":F
    iget-object v5, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v5

    .line 617
    .local v5, "currentSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_c
    if-ge v6, v5, :cond_5a

    .line 618
    iget-object v7, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v7, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v7

    .line 619
    .local v7, "currentValue":F
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gez v8, :cond_57

    .line 622
    iget-object v8, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v8, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    .line 623
    .local v8, "v":Landroidx/constraintlayout/core/SolverVariable;
    if-eqz p1, :cond_27

    iget v9, v8, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aget-boolean v9, p1, v9

    if-nez v9, :cond_57

    :cond_27
    if-eq v8, p2, :cond_57

    .line 624
    if-eqz v0, :cond_3e

    .line 625
    iget-object v9, v8, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v10, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-eq v9, v10, :cond_37

    iget-object v9, v8, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v10, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v9, v10, :cond_57

    .line 627
    :cond_37
    cmpg-float v9, v7, v1

    if-gez v9, :cond_57

    .line 628
    move v1, v7

    .line 629
    move-object v2, v8

    goto :goto_57

    .line 633
    :cond_3e
    iget-object v9, v8, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v10, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v9, v10, :cond_4b

    .line 634
    cmpg-float v9, v7, v4

    if-gez v9, :cond_57

    .line 635
    move v4, v7

    .line 636
    move-object v3, v8

    goto :goto_57

    .line 638
    :cond_4b
    iget-object v9, v8, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v10, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v9, v10, :cond_57

    .line 639
    cmpg-float v9, v7, v1

    if-gez v9, :cond_57

    .line 640
    move v1, v7

    .line 641
    move-object v2, v8

    .line 617
    .end local v7    # "currentValue":F
    .end local v8    # "v":Landroidx/constraintlayout/core/SolverVariable;
    :cond_57
    :goto_57
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 648
    .end local v6    # "i":I
    :cond_5a
    if-eqz v0, :cond_5d

    .line 649
    return-object v2

    .line 651
    :cond_5d
    if-eqz v2, :cond_61

    move-object v6, v2

    goto :goto_62

    :cond_61
    move-object v6, v3

    :goto_62
    return-object v6
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 6
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p2, "strength"    # I

    .line 349
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const-string v1, "ep"

    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/core/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 350
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const-string v1, "em"

    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/core/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v0, v1, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 351
    return-object p0
.end method

.method public addError(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 5
    .param p1, "error"    # Landroidx/constraintlayout/core/SolverVariable;

    .line 690
    const/high16 v0, 0x3f800000    # 1.0f

    .line 691
    .local v0, "weight":F
    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 692
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2c

    .line 693
    :cond_a
    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    .line 694
    const/high16 v0, 0x447a0000    # 1000.0f

    goto :goto_2c

    .line 695
    :cond_12
    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1b

    .line 696
    const v0, 0x49742400    # 1000000.0f

    goto :goto_2c

    .line 697
    :cond_1b
    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_24

    .line 698
    const v0, 0x4e6e6b28    # 1.0E9f

    goto :goto_2c

    .line 699
    :cond_24
    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2c

    .line 700
    const v0, 0x5368d4a5    # 1.0E12f

    .line 702
    :cond_2c
    :goto_2c
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p1, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 703
    return-void
.end method

.method addSingleError(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 5
    .param p1, "error"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p2, "sign"    # I

    .line 178
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    int-to-float v1, p2

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 179
    return-object p0
.end method

.method chooseSubject(Landroidx/constraintlayout/core/LinearSystem;)Z
    .registers 5
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "addedExtra":Z
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/ArrayRow;->chooseSubjectInVariables(Landroidx/constraintlayout/core/LinearSystem;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    .line 433
    .local v1, "pivotCandidate":Landroidx/constraintlayout/core/SolverVariable;
    if-nez v1, :cond_9

    .line 435
    const/4 v0, 0x1

    goto :goto_c

    .line 437
    :cond_9
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    .line 439
    :goto_c
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v2

    if-nez v2, :cond_17

    .line 440
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 442
    :cond_17
    return v0
.end method

.method chooseSubjectInVariables(Landroidx/constraintlayout/core/LinearSystem;)Landroidx/constraintlayout/core/SolverVariable;
    .registers 14
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "restrictedCandidate":Landroidx/constraintlayout/core/SolverVariable;
    const/4 v1, 0x0

    .line 459
    .local v1, "unrestrictedCandidate":Landroidx/constraintlayout/core/SolverVariable;
    const/4 v2, 0x0

    .line 460
    .local v2, "unrestrictedCandidateAmount":F
    const/4 v3, 0x0

    .line 461
    .local v3, "restrictedCandidateAmount":F
    const/4 v4, 0x0

    .line 462
    .local v4, "unrestrictedCandidateIsNew":Z
    const/4 v5, 0x0

    .line 464
    .local v5, "restrictedCandidateIsNew":Z
    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v6

    .line 465
    .local v6, "currentSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_d
    if-ge v7, v6, :cond_6a

    .line 466
    iget-object v8, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v8, v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v8

    .line 467
    .local v8, "amount":F
    iget-object v9, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v9, v7}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v9

    .line 468
    .local v9, "variable":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v10, v9, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v11, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v10, v11, :cond_41

    .line 469
    if-nez v1, :cond_2a

    .line 470
    move-object v1, v9

    .line 471
    move v2, v8

    .line 472
    invoke-direct {p0, v9, p1}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    move-result v4

    goto :goto_67

    .line 473
    :cond_2a
    cmpl-float v10, v2, v8

    if-lez v10, :cond_35

    .line 474
    move-object v1, v9

    .line 475
    move v2, v8

    .line 476
    invoke-direct {p0, v9, p1}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    move-result v4

    goto :goto_67

    .line 477
    :cond_35
    if-nez v4, :cond_67

    invoke-direct {p0, v9, p1}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    move-result v10

    if-eqz v10, :cond_67

    .line 478
    move-object v1, v9

    .line 479
    move v2, v8

    .line 480
    const/4 v4, 0x1

    goto :goto_67

    .line 482
    :cond_41
    if-nez v1, :cond_67

    .line 483
    const/4 v10, 0x0

    cmpg-float v10, v8, v10

    if-gez v10, :cond_67

    .line 484
    if-nez v0, :cond_51

    .line 485
    move-object v0, v9

    .line 486
    move v3, v8

    .line 487
    invoke-direct {p0, v9, p1}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    move-result v5

    goto :goto_67

    .line 488
    :cond_51
    cmpl-float v10, v3, v8

    if-lez v10, :cond_5c

    .line 489
    move-object v0, v9

    .line 490
    move v3, v8

    .line 491
    invoke-direct {p0, v9, p1}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    move-result v5

    goto :goto_67

    .line 492
    :cond_5c
    if-nez v5, :cond_67

    invoke-direct {p0, v9, p1}, Landroidx/constraintlayout/core/ArrayRow;->isNew(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/LinearSystem;)Z

    move-result v10

    if-eqz v10, :cond_67

    .line 493
    move-object v0, v9

    .line 494
    move v3, v8

    .line 495
    const/4 v5, 0x1

    .line 465
    .end local v8    # "amount":F
    .end local v9    # "variable":Landroidx/constraintlayout/core/SolverVariable;
    :cond_67
    :goto_67
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 501
    .end local v7    # "i":I
    :cond_6a
    if-eqz v1, :cond_6d

    .line 502
    return-object v1

    .line 504
    :cond_6d
    return-object v0
.end method

.method public clear()V
    .registers 2

    .line 665
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->clear()V

    .line 666
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 667
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 668
    return-void
.end method

.method createRowCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 12
    .param p1, "variableA"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p3, "marginA"    # I
    .param p4, "bias"    # F
    .param p5, "variableC"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p6, "variableD"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p7, "marginB"    # I

    .line 303
    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_16

    .line 307
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p1, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 308
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p6, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 309
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const/high16 v1, -0x40000000    # -2.0f

    invoke-interface {v0, p2, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 310
    return-object p0

    .line 312
    :cond_16
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, p4, v1

    if-nez v1, :cond_3c

    .line 319
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p1, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 320
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p2, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 321
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p5, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 322
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p6, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 323
    if-gtz p3, :cond_36

    if-lez p7, :cond_91

    .line 324
    :cond_36
    neg-int v0, p3

    add-int/2addr v0, p7

    int-to-float v0, v0

    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    goto :goto_91

    .line 326
    :cond_3c
    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gtz v1, :cond_4f

    .line 328
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p1, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 329
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p2, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 330
    int-to-float v0, p3

    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    goto :goto_91

    .line 331
    :cond_4f
    cmpl-float v1, p4, v0

    if-ltz v1, :cond_62

    .line 333
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p6, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 334
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p5, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 335
    neg-int v0, p7

    int-to-float v0, v0

    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    goto :goto_91

    .line 337
    :cond_62
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    sub-float v3, v0, p4

    mul-float v3, v3, v0

    invoke-interface {v1, p1, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 338
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    sub-float v3, v0, p4

    mul-float v3, v3, v2

    invoke-interface {v1, p2, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 339
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    mul-float v2, v2, p4

    invoke-interface {v1, p5, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 340
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    mul-float v2, p4, v0

    invoke-interface {v1, p6, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 341
    if-gtz p3, :cond_86

    if-lez p7, :cond_91

    .line 342
    :cond_86
    neg-int v1, p3

    int-to-float v1, v1

    sub-float/2addr v0, p4

    mul-float v1, v1, v0

    int-to-float v0, p7

    mul-float v0, v0, p4

    add-float/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 345
    :cond_91
    :goto_91
    return-object p0
.end method

.method createRowDefinition(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 4
    .param p1, "variable"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p2, "value"    # I

    .line 139
    iput-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 140
    int-to-float v0, p2

    iput v0, p1, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    .line 141
    int-to-float v0, p2

    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 143
    return-object p0
.end method

.method createRowDimensionPercent(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;
    .registers 6
    .param p1, "variableA"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p2, "variableC"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p3, "percent"    # F

    .line 356
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 357
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p2, p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 358
    return-object p0
.end method

.method public createRowDimensionRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;
    .registers 8
    .param p1, "variableA"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p3, "variableC"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p4, "variableD"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p5, "ratio"    # F

    .line 375
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 376
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, p2, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 377
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p3, p5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 378
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    neg-float v1, p5

    invoke-interface {v0, p4, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 379
    return-object p0
.end method

.method public createRowEqualDimension(FFFLandroidx/constraintlayout/core/SolverVariable;ILandroidx/constraintlayout/core/SolverVariable;ILandroidx/constraintlayout/core/SolverVariable;ILandroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 27
    .param p1, "currentWeight"    # F
    .param p2, "totalWeights"    # F
    .param p3, "nextWeight"    # F
    .param p4, "variableStartA"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p5, "marginStartA"    # I
    .param p6, "variableEndA"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p7, "marginEndA"    # I
    .param p8, "variableStartB"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p9, "marginStartB"    # I
    .param p10, "variableEndB"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p11, "marginEndB"    # I

    .line 276
    move-object v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p10

    move/from16 v7, p11

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v8, p2, v8

    if-eqz v8, :cond_47

    cmpl-float v8, p1, p3

    if-nez v8, :cond_1d

    goto :goto_47

    .line 286
    :cond_1d
    div-float v8, p1, p2

    .line 287
    .local v8, "cw":F
    div-float v11, p3, p2

    .line 288
    .local v11, "nw":F
    div-float v12, v8, v11

    .line 292
    .local v12, "w":F
    neg-int v13, v2

    sub-int v13, v13, p7

    int-to-float v13, v13

    int-to-float v14, v5

    mul-float v14, v14, v12

    add-float/2addr v13, v14

    int-to-float v14, v7

    mul-float v14, v14, v12

    add-float/2addr v13, v14

    iput v13, v0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 293
    iget-object v13, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v13, v1, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 294
    iget-object v10, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v10, v3, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 295
    iget-object v9, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v9, v6, v12}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 296
    iget-object v9, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    neg-float v10, v12

    invoke-interface {v9, v4, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_63

    .line 280
    .end local v8    # "cw":F
    .end local v11    # "nw":F
    .end local v12    # "w":F
    :cond_47
    :goto_47
    neg-int v8, v2

    sub-int v8, v8, p7

    add-int/2addr v8, v5

    add-int/2addr v8, v7

    int-to-float v8, v8

    iput v8, v0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 281
    iget-object v8, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v8, v1, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 282
    iget-object v8, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v8, v3, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 283
    iget-object v8, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v8, v6, v10}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 284
    iget-object v8, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v8, v4, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 298
    :goto_63
    return-object v0
.end method

.method public createRowEqualMatchDimensions(FFFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/ArrayRow;
    .registers 14
    .param p1, "currentWeight"    # F
    .param p2, "totalWeights"    # F
    .param p3, "nextWeight"    # F
    .param p4, "variableStartA"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p5, "variableEndA"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p6, "variableStartB"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p7, "variableEndB"    # Landroidx/constraintlayout/core/SolverVariable;

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 241
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v0

    if-eqz v3, :cond_4a

    cmpl-float v3, p1, p3

    if-nez v3, :cond_10

    goto :goto_4a

    .line 249
    :cond_10
    cmpl-float v3, p1, v0

    if-nez v3, :cond_1f

    .line 250
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p4, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 251
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p5, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_5e

    .line 252
    :cond_1f
    cmpl-float v0, p3, v0

    if-nez v0, :cond_2e

    .line 253
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p6, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 254
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p7, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_5e

    .line 256
    :cond_2e
    div-float v0, p1, p2

    .line 257
    .local v0, "cw":F
    div-float v3, p3, p2

    .line 258
    .local v3, "nw":F
    div-float v4, v0, v3

    .line 262
    .local v4, "w":F
    iget-object v5, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v5, p4, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 263
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, p5, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 264
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p7, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 265
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    neg-float v2, v4

    invoke-interface {v1, p6, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_5e

    .line 244
    .end local v0    # "cw":F
    .end local v3    # "nw":F
    .end local v4    # "w":F
    :cond_4a
    :goto_4a
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p4, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 245
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p5, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 246
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p7, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 247
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p6, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 268
    :goto_5e
    return-object p0
.end method

.method public createRowEquals(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 5
    .param p1, "variable"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p2, "value"    # I

    .line 147
    if-gez p2, :cond_f

    .line 148
    mul-int/lit8 v0, p2, -0x1

    int-to-float v0, v0

    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 149
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_19

    .line 151
    :cond_f
    int-to-float v0, p2

    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 152
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 154
    :goto_19
    return-object p0
.end method

.method public createRowEquals(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 8
    .param p1, "variableA"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p3, "margin"    # I

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "inverse":Z
    if-eqz p3, :cond_c

    .line 160
    move v1, p3

    .line 161
    .local v1, "m":I
    if-gez v1, :cond_9

    .line 162
    mul-int/lit8 v1, v1, -0x1

    .line 163
    const/4 v0, 0x1

    .line 165
    :cond_9
    int-to-float v2, v1

    iput v2, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 167
    .end local v1    # "m":I
    :cond_c
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_1d

    .line 168
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 169
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p2, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_27

    .line 171
    :cond_1d
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, p1, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 172
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, p2, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 174
    :goto_27
    return-object p0
.end method

.method public createRowGreaterThan(Landroidx/constraintlayout/core/SolverVariable;ILandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/ArrayRow;
    .registers 6
    .param p1, "a"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p2, "b"    # I
    .param p3, "slack"    # Landroidx/constraintlayout/core/SolverVariable;

    .line 207
    int-to-float v0, p2

    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 208
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 209
    return-object p0
.end method

.method public createRowGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 9
    .param p1, "variableA"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p3, "slack"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p4, "margin"    # I

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "inverse":Z
    if-eqz p4, :cond_c

    .line 187
    move v1, p4

    .line 188
    .local v1, "m":I
    if-gez v1, :cond_9

    .line 189
    mul-int/lit8 v1, v1, -0x1

    .line 190
    const/4 v0, 0x1

    .line 192
    :cond_9
    int-to-float v2, v1

    iput v2, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 194
    .end local v1    # "m":I
    :cond_c
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_22

    .line 195
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 196
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p2, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 197
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p3, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_31

    .line 199
    :cond_22
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, p1, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 200
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, p2, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 201
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, p3, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 203
    :goto_31
    return-object p0
.end method

.method public createRowLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;
    .registers 9
    .param p1, "variableA"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p3, "slack"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p4, "margin"    # I

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "inverse":Z
    if-eqz p4, :cond_c

    .line 216
    move v1, p4

    .line 217
    .local v1, "m":I
    if-gez v1, :cond_9

    .line 218
    mul-int/lit8 v1, v1, -0x1

    .line 219
    const/4 v0, 0x1

    .line 221
    :cond_9
    int-to-float v2, v1

    iput v2, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 223
    .end local v1    # "m":I
    :cond_c
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_22

    .line 224
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 225
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, p2, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 226
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, p3, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_31

    .line 228
    :cond_22
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, p1, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 229
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, p2, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 230
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p3, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 232
    :goto_31
    return-object p0
.end method

.method public createRowWithAngle(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;
    .registers 8
    .param p1, "at"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p2, "ab"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p3, "bt"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p4, "bb"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p5, "angleComponent"    # F

    .line 393
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {v0, p3, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 394
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p4, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 395
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const/high16 v1, -0x41000000    # -0.5f

    invoke-interface {v0, p1, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 396
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p2, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 397
    neg-float v0, p5

    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 398
    return-object p0
.end method

.method ensurePositiveConstant()V
    .registers 3

    .line 415
    iget v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    .line 417
    iget v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v0, v0, v1

    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 418
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->invert()V

    .line 420
    :cond_14
    return-void
.end method

.method public getKey()Landroidx/constraintlayout/core/SolverVariable;
    .registers 2

    .line 707
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    return-object v0
.end method

.method public getPivotCandidate(Landroidx/constraintlayout/core/LinearSystem;[Z)Landroidx/constraintlayout/core/SolverVariable;
    .registers 4
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p2, "avoid"    # [Z

    .line 660
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroidx/constraintlayout/core/ArrayRow;->pickPivotInVariables([ZLandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    return-object v0
.end method

.method hasKeyVariable()Z
    .registers 3

    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, v0, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-eq v0, v1, :cond_13

    iget v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method hasVariable(Landroidx/constraintlayout/core/SolverVariable;)Z
    .registers 3
    .param p1, "v"    # Landroidx/constraintlayout/core/SolverVariable;

    .line 135
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->contains(Landroidx/constraintlayout/core/SolverVariable;)Z

    move-result v0

    return v0
.end method

.method public initFromRow(Landroidx/constraintlayout/core/LinearSystem$Row;)V
    .registers 8
    .param p1, "row"    # Landroidx/constraintlayout/core/LinearSystem$Row;

    .line 676
    instance-of v0, p1, Landroidx/constraintlayout/core/ArrayRow;

    if-eqz v0, :cond_2d

    .line 677
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/core/ArrayRow;

    .line 678
    .local v0, "copiedRow":Landroidx/constraintlayout/core/ArrayRow;
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 679
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->clear()V

    .line 680
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget-object v2, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 681
    iget-object v2, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    .line 682
    .local v2, "var":Landroidx/constraintlayout/core/SolverVariable;
    iget-object v3, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v3

    .line 683
    .local v3, "val":F
    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const/4 v5, 0x1

    invoke-interface {v4, v2, v3, v5}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->add(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    .line 680
    .end local v2    # "var":Landroidx/constraintlayout/core/SolverVariable;
    .end local v3    # "val":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 686
    .end local v0    # "copiedRow":Landroidx/constraintlayout/core/ArrayRow;
    .end local v1    # "i":I
    :cond_2d
    return-void
.end method

.method public isEmpty()Z
    .registers 3

    .line 556
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    if-nez v0, :cond_15

    iget v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_15

    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public pickPivot(Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;
    .registers 3
    .param p1, "exclude"    # Landroidx/constraintlayout/core/SolverVariable;

    .line 655
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/core/ArrayRow;->pickPivotInVariables([ZLandroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    return-object v0
.end method

.method pivot(Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 5
    .param p1, "v"    # Landroidx/constraintlayout/core/SolverVariable;

    .line 536
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_15

    .line 538
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-interface {v0, v2, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 539
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v2, -0x1

    iput v2, v0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    .line 540
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 543
    :cond_15
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    move-result v0

    mul-float v0, v0, v1

    .line 544
    .local v0, "amount":F
    iput-object p1, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 545
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_27

    .line 546
    return-void

    .line 548
    :cond_27
    iget v1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    div-float/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 549
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->divideByAmount(F)V

    .line 550
    return-void
.end method

.method public reset()V
    .registers 2

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    .line 129
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->clear()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 132
    return-void
.end method

.method sizeInBytes()I
    .registers 3

    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "size":I
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v1, :cond_7

    .line 404
    add-int/lit8 v0, v0, 0x4

    .line 406
    :cond_7
    add-int/lit8 v0, v0, 0x4

    .line 407
    add-int/lit8 v0, v0, 0x4

    .line 409
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->sizeInBytes()I

    move-result v1

    add-int/2addr v0, v1

    .line 410
    return v0
.end method

.method toReadableString()Ljava/lang/String;
    .registers 12

    .line 75
    const-string v0, ""

    .line 76
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    if-nez v1, :cond_1a

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    .line 79
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "addedVariable":Z
    iget v2, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5c

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    const/4 v1, 0x1

    .line 87
    :cond_5c
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v2

    .line 88
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_63
    if-ge v4, v2, :cond_102

    .line 89
    iget-object v5, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v5, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v5

    .line 90
    .local v5, "v":Landroidx/constraintlayout/core/SolverVariable;
    if-nez v5, :cond_6f

    .line 91
    goto/16 :goto_fe

    .line 93
    :cond_6f
    iget-object v6, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v6, v4}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariableValue(I)F

    move-result v6

    .line 94
    .local v6, "amount":F
    cmpl-float v7, v6, v3

    if-nez v7, :cond_7b

    .line 95
    goto/16 :goto_fe

    .line 97
    :cond_7b
    invoke-virtual {v5}, Landroidx/constraintlayout/core/SolverVariable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "name":Ljava/lang/String;
    const/high16 v8, -0x40800000    # -1.0f

    if-nez v1, :cond_9d

    .line 99
    cmpg-float v9, v6, v3

    if-gez v9, :cond_ca

    .line 100
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    mul-float v6, v6, v8

    goto :goto_ca

    .line 104
    :cond_9d
    cmpl-float v9, v6, v3

    if-lez v9, :cond_b5

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ca

    .line 107
    :cond_b5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    mul-float v6, v6, v8

    .line 111
    :cond_ca
    :goto_ca
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v6, v8

    if-nez v8, :cond_e2

    .line 112
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_fd

    .line 114
    :cond_e2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_fd
    const/4 v1, 0x1

    .line 88
    .end local v5    # "v":Landroidx/constraintlayout/core/SolverVariable;
    .end local v6    # "amount":F
    .end local v7    # "name":Ljava/lang/String;
    :goto_fe
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_63

    .line 118
    .end local v4    # "i":I
    :cond_102
    if-nez v1, :cond_117

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0.0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    :cond_117
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 71
    invoke-virtual {p0}, Landroidx/constraintlayout/core/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFromFinalVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V
    .registers 7
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p2, "variable"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p3, "removeFromDefinition"    # Z

    .line 575
    if-eqz p2, :cond_32

    iget-boolean v0, p2, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-nez v0, :cond_7

    goto :goto_32

    .line 578
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v0

    .line 579
    .local v0, "value":F
    iget v1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    iget v2, p2, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 580
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p2, p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    .line 581
    if-eqz p3, :cond_20

    .line 582
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 584
    :cond_20
    sget-boolean v1, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    if-eqz v1, :cond_31

    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 585
    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v1

    if-nez v1, :cond_31

    .line 586
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 587
    iput-boolean v1, p1, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 589
    :cond_31
    return-void

    .line 576
    .end local v0    # "value":F
    :cond_32
    :goto_32
    return-void
.end method

.method public updateFromRow(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;Z)V
    .registers 7
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p2, "definition"    # Landroidx/constraintlayout/core/ArrayRow;
    .param p3, "removeFromDefinition"    # Z

    .line 561
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p2, p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->use(Landroidx/constraintlayout/core/ArrayRow;Z)F

    move-result v0

    .line 563
    .local v0, "value":F
    iget v1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    iget v2, p2, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 564
    if-eqz p3, :cond_16

    .line 565
    iget-object v1, p2, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 567
    :cond_16
    sget-boolean v1, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 568
    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v1

    if-nez v1, :cond_2b

    .line 569
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 570
    iput-boolean v1, p1, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 572
    :cond_2b
    return-void
.end method

.method public updateFromSynonymVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V
    .registers 8
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;
    .param p2, "variable"    # Landroidx/constraintlayout/core/SolverVariable;
    .param p3, "removeFromDefinition"    # Z

    .line 592
    if-eqz p2, :cond_3f

    iget-boolean v0, p2, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    if-nez v0, :cond_7

    goto :goto_3f

    .line 595
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v0, p2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v0

    .line 596
    .local v0, "value":F
    iget v1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    iget v2, p2, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    .line 597
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1, p2, p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->remove(Landroidx/constraintlayout/core/SolverVariable;Z)F

    .line 598
    if-eqz p3, :cond_20

    .line 599
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 601
    :cond_20
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    iget-object v2, p1, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v3, p2, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v0, p3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->add(Landroidx/constraintlayout/core/SolverVariable;FZ)V

    .line 602
    sget-boolean v1, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 603
    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v1

    if-nez v1, :cond_3e

    .line 604
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 605
    iput-boolean v1, p1, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 607
    :cond_3e
    return-void

    .line 593
    .end local v0    # "value":F
    :cond_3f
    :goto_3f
    return-void
.end method

.method public updateFromSystem(Landroidx/constraintlayout/core/LinearSystem;)V
    .registers 10
    .param p1, "system"    # Landroidx/constraintlayout/core/LinearSystem;

    .line 712
    iget-object v0, p1, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    array-length v0, v0

    if-nez v0, :cond_6

    .line 713
    return-void

    .line 716
    :cond_6
    const/4 v0, 0x0

    .line 717
    .local v0, "done":Z
    :goto_7
    const/4 v1, 0x1

    if-nez v0, :cond_65

    .line 718
    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v2

    .line 719
    .local v2, "currentSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v2, :cond_2e

    .line 720
    iget-object v4, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v4, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    .line 721
    .local v4, "variable":Landroidx/constraintlayout/core/SolverVariable;
    iget v5, v4, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_26

    iget-boolean v5, v4, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-nez v5, :cond_26

    iget-boolean v5, v4, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    if-eqz v5, :cond_2b

    .line 722
    :cond_26
    iget-object v5, p0, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    .end local v4    # "variable":Landroidx/constraintlayout/core/SolverVariable;
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 725
    .end local v3    # "i":I
    :cond_2e
    iget-object v3, p0, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 726
    .local v3, "size":I
    if-lez v3, :cond_63

    .line 727
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_37
    if-ge v4, v3, :cond_5d

    .line 728
    iget-object v5, p0, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/SolverVariable;

    .line 729
    .local v5, "variable":Landroidx/constraintlayout/core/SolverVariable;
    iget-boolean v6, v5, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v6, :cond_49

    .line 730
    invoke-virtual {p0, p1, v5, v1}, Landroidx/constraintlayout/core/ArrayRow;->updateFromFinalVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V

    goto :goto_5a

    .line 731
    :cond_49
    iget-boolean v6, v5, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    if-eqz v6, :cond_51

    .line 732
    invoke-virtual {p0, p1, v5, v1}, Landroidx/constraintlayout/core/ArrayRow;->updateFromSynonymVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V

    goto :goto_5a

    .line 734
    :cond_51
    iget-object v6, p1, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    iget v7, v5, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    aget-object v6, v6, v7

    invoke-virtual {p0, p1, v6, v1}, Landroidx/constraintlayout/core/ArrayRow;->updateFromRow(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;Z)V

    .line 727
    .end local v5    # "variable":Landroidx/constraintlayout/core/SolverVariable;
    :goto_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 737
    .end local v4    # "i":I
    :cond_5d
    iget-object v1, p0, Landroidx/constraintlayout/core/ArrayRow;->variablesToUpdate:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_64

    .line 739
    :cond_63
    const/4 v0, 0x1

    .line 741
    .end local v2    # "currentSize":I
    .end local v3    # "size":I
    :goto_64
    goto :goto_7

    .line 742
    :cond_65
    sget-boolean v2, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    if-eqz v2, :cond_79

    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v2, :cond_79

    iget-object v2, p0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 743
    invoke-interface {v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v2

    if-nez v2, :cond_79

    .line 744
    iput-boolean v1, p0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    .line 745
    iput-boolean v1, p1, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    .line 747
    :cond_79
    return-void
.end method
