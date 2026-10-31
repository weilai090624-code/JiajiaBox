.class public Landroidx/constraintlayout/core/state/State;
.super Ljava/lang/Object;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/state/State$Chain;,
        Landroidx/constraintlayout/core/state/State$Helper;,
        Landroidx/constraintlayout/core/state/State$Direction;,
        Landroidx/constraintlayout/core/state/State$Constraint;
    }
.end annotation


# static fields
.field static final CONSTRAINT_RATIO:I = 0x2

.field static final CONSTRAINT_SPREAD:I = 0x0

.field static final CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT:Ljava/lang/Integer;

.field static final UNKNOWN:I = -0x1


# instance fields
.field protected mHelperReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroidx/constraintlayout/core/state/HelperReference;",
            ">;"
        }
    .end annotation
.end field

.field public final mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

.field protected mReferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroidx/constraintlayout/core/state/Reference;",
            ">;"
        }
    .end annotation
.end field

.field mTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private numHelpers:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/State;->mHelperReferences:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/State;->mTags:Ljava/util/HashMap;

    .line 48
    new-instance v0, Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/state/State;->numHelpers:I

    .line 97
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    sget-object v1, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    iget-object v2, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method private createHelperKey()Ljava/lang/String;
    .registers 4

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__HELPER_KEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/state/State;->numHelpers:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/state/State;->numHelpers:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .registers 13
    .param p1, "container"    # Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    .line 317
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 318
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getWidth()Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroidx/constraintlayout/core/state/Dimension;->apply(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    .line 319
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getHeight()Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroidx/constraintlayout/core/state/Dimension;->apply(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    .line 320
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 321
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/constraintlayout/core/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/state/HelperReference;

    .line 322
    .local v2, "reference":Landroidx/constraintlayout/core/state/HelperReference;
    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;

    move-result-object v3

    .line 323
    .local v3, "helperWidget":Landroidx/constraintlayout/core/widgets/HelperWidget;
    if-eqz v3, :cond_4a

    .line 324
    iget-object v4, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/state/Reference;

    .line 325
    .local v4, "constraintReference":Landroidx/constraintlayout/core/state/Reference;
    if-nez v4, :cond_47

    .line 326
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

    .line 328
    :cond_47
    invoke-interface {v4, v3}, Landroidx/constraintlayout/core/state/Reference;->setConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 330
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/core/state/HelperReference;
    .end local v3    # "helperWidget":Landroidx/constraintlayout/core/widgets/HelperWidget;
    .end local v4    # "constraintReference":Landroidx/constraintlayout/core/state/Reference;
    :cond_4a
    goto :goto_21

    .line 331
    :cond_4b
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 332
    .restart local v1    # "key":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/state/Reference;

    .line 333
    .local v2, "reference":Landroidx/constraintlayout/core/state/Reference;
    iget-object v3, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    if-eq v2, v3, :cond_90

    invoke-interface {v2}, Landroidx/constraintlayout/core/state/Reference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    move-result-object v3

    instance-of v3, v3, Landroidx/constraintlayout/core/state/HelperReference;

    if-eqz v3, :cond_90

    .line 334
    invoke-interface {v2}, Landroidx/constraintlayout/core/state/Reference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/state/HelperReference;

    invoke-virtual {v3}, Landroidx/constraintlayout/core/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;

    move-result-object v3

    .line 335
    .restart local v3    # "helperWidget":Landroidx/constraintlayout/core/widgets/HelperWidget;
    if-eqz v3, :cond_90

    .line 336
    iget-object v4, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/core/state/Reference;

    .line 337
    .restart local v4    # "constraintReference":Landroidx/constraintlayout/core/state/Reference;
    if-nez v4, :cond_8d

    .line 338
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

    .line 340
    :cond_8d
    invoke-interface {v4, v3}, Landroidx/constraintlayout/core/state/Reference;->setConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 343
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/core/state/Reference;
    .end local v3    # "helperWidget":Landroidx/constraintlayout/core/widgets/HelperWidget;
    .end local v4    # "constraintReference":Landroidx/constraintlayout/core/state/Reference;
    :cond_90
    goto :goto_55

    .line 344
    :cond_91
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 345
    .restart local v1    # "key":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/state/Reference;

    .line 346
    .restart local v2    # "reference":Landroidx/constraintlayout/core/state/Reference;
    iget-object v3, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    if-eq v2, v3, :cond_d3

    .line 347
    invoke-interface {v2}, Landroidx/constraintlayout/core/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v3

    .line 348
    .local v3, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-interface {v2}, Landroidx/constraintlayout/core/state/Reference;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    .line 349
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setParent(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 350
    invoke-interface {v2}, Landroidx/constraintlayout/core/state/Reference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    move-result-object v4

    instance-of v4, v4, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    if-eqz v4, :cond_cf

    .line 352
    invoke-interface {v2}, Landroidx/constraintlayout/core/state/Reference;->apply()V

    .line 354
    :cond_cf
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 355
    .end local v3    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    goto :goto_d6

    .line 356
    :cond_d3
    invoke-interface {v2, p1}, Landroidx/constraintlayout/core/state/Reference;->setConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 358
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/core/state/Reference;
    :goto_d6
    goto :goto_9b

    .line 359
    :cond_d7
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_125

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 360
    .restart local v1    # "key":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/constraintlayout/core/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/state/HelperReference;

    .line 361
    .local v2, "reference":Landroidx/constraintlayout/core/state/HelperReference;
    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;

    move-result-object v3

    .line 362
    .local v3, "helperWidget":Landroidx/constraintlayout/core/widgets/HelperWidget;
    if-eqz v3, :cond_121

    .line 363
    iget-object v4, v2, Landroidx/constraintlayout/core/state/HelperReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ff
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 364
    .local v5, "keyRef":Ljava/lang/Object;
    iget-object v6, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/core/state/Reference;

    .line 365
    .local v6, "constraintReference":Landroidx/constraintlayout/core/state/Reference;
    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;

    move-result-object v7

    invoke-interface {v6}, Landroidx/constraintlayout/core/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/HelperWidget;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    .line 366
    .end local v5    # "keyRef":Ljava/lang/Object;
    .end local v6    # "constraintReference":Landroidx/constraintlayout/core/state/Reference;
    goto :goto_ff

    .line 367
    :cond_11d
    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/HelperReference;->apply()V

    goto :goto_124

    .line 369
    :cond_121
    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/HelperReference;->apply()V

    .line 371
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/core/state/HelperReference;
    .end local v3    # "helperWidget":Landroidx/constraintlayout/core/widgets/HelperWidget;
    :goto_124
    goto :goto_e1

    .line 372
    :cond_125
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 373
    .restart local v1    # "key":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/state/Reference;

    .line 374
    .local v2, "reference":Landroidx/constraintlayout/core/state/Reference;
    iget-object v3, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    if-eq v2, v3, :cond_1a6

    invoke-interface {v2}, Landroidx/constraintlayout/core/state/Reference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    move-result-object v3

    instance-of v3, v3, Landroidx/constraintlayout/core/state/HelperReference;

    if-eqz v3, :cond_1a6

    .line 375
    invoke-interface {v2}, Landroidx/constraintlayout/core/state/Reference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/state/HelperReference;

    .line 376
    .local v3, "helperReference":Landroidx/constraintlayout/core/state/HelperReference;
    invoke-virtual {v3}, Landroidx/constraintlayout/core/state/HelperReference;->getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;

    move-result-object v4

    .line 377
    .local v4, "helperWidget":Landroidx/constraintlayout/core/widgets/HelperWidget;
    if-eqz v4, :cond_1a6

    .line 378
    iget-object v5, v3, Landroidx/constraintlayout/core/state/HelperReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 379
    .local v6, "keyRef":Ljava/lang/Object;
    iget-object v7, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/core/state/Reference;

    .line 380
    .local v7, "constraintReference":Landroidx/constraintlayout/core/state/Reference;
    if-eqz v7, :cond_17b

    .line 381
    invoke-interface {v7}, Landroidx/constraintlayout/core/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroidx/constraintlayout/core/widgets/HelperWidget;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto :goto_1a2

    .line 382
    :cond_17b
    instance-of v8, v6, Landroidx/constraintlayout/core/state/Reference;

    if-eqz v8, :cond_18a

    .line 383
    move-object v8, v6

    check-cast v8, Landroidx/constraintlayout/core/state/Reference;

    invoke-interface {v8}, Landroidx/constraintlayout/core/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroidx/constraintlayout/core/widgets/HelperWidget;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto :goto_1a2

    .line 385
    :cond_18a
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "couldn\'t find reference for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    .end local v6    # "keyRef":Ljava/lang/Object;
    .end local v7    # "constraintReference":Landroidx/constraintlayout/core/state/Reference;
    :goto_1a2
    goto :goto_15f

    .line 388
    :cond_1a3
    invoke-interface {v2}, Landroidx/constraintlayout/core/state/Reference;->apply()V

    .line 391
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/core/state/Reference;
    .end local v3    # "helperReference":Landroidx/constraintlayout/core/state/HelperReference;
    .end local v4    # "helperWidget":Landroidx/constraintlayout/core/widgets/HelperWidget;
    :cond_1a6
    goto :goto_12f

    .line 392
    :cond_1a7
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 393
    .restart local v1    # "key":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/core/state/Reference;

    .line 394
    .restart local v2    # "reference":Landroidx/constraintlayout/core/state/Reference;
    invoke-interface {v2}, Landroidx/constraintlayout/core/state/Reference;->apply()V

    .line 395
    invoke-interface {v2}, Landroidx/constraintlayout/core/state/Reference;->getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v3

    .line 396
    .local v3, "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    if-eqz v3, :cond_1d4

    if-eqz v1, :cond_1d4

    .line 397
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    .line 399
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "reference":Landroidx/constraintlayout/core/state/Reference;
    .end local v3    # "widget":Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    :cond_1d4
    goto :goto_1b1

    .line 400
    :cond_1d5
    return-void
.end method

.method public barrier(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Direction;)Landroidx/constraintlayout/core/state/helpers/BarrierReference;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "direction"    # Landroidx/constraintlayout/core/state/State$Direction;

    .line 233
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    .line 234
    .local v0, "reference":Landroidx/constraintlayout/core/state/ConstraintReference;
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    move-result-object v1

    instance-of v1, v1, Landroidx/constraintlayout/core/state/helpers/BarrierReference;

    if-nez v1, :cond_1d

    .line 235
    :cond_12
    new-instance v1, Landroidx/constraintlayout/core/state/helpers/BarrierReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    .line 236
    .local v1, "barrierReference":Landroidx/constraintlayout/core/state/helpers/BarrierReference;
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V

    .line 237
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setFacade(Landroidx/constraintlayout/core/state/helpers/Facade;)V

    .line 239
    .end local v1    # "barrierReference":Landroidx/constraintlayout/core/state/helpers/BarrierReference;
    :cond_1d
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/state/helpers/BarrierReference;

    return-object v1
.end method

.method public varargs centerHorizontally([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;
    .registers 4
    .param p1, "references"    # [Ljava/lang/Object;

    .line 263
    const/4 v0, 0x0

    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->ALIGN_HORIZONTALLY:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;

    .line 264
    .local v0, "reference":Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    .line 265
    return-object v0
.end method

.method public varargs centerVertically([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;
    .registers 4
    .param p1, "references"    # [Ljava/lang/Object;

    .line 269
    const/4 v0, 0x0

    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;

    .line 270
    .local v0, "reference":Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    .line 271
    return-object v0
.end method

.method public constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/Reference;

    .line 165
    .local v0, "reference":Landroidx/constraintlayout/core/state/Reference;
    if-nez v0, :cond_16

    .line 166
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->createConstraintReference(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    .line 167
    iget-object v1, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/state/Reference;->setKey(Ljava/lang/Object;)V

    .line 170
    :cond_16
    instance-of v1, v0, Landroidx/constraintlayout/core/state/ConstraintReference;

    if-eqz v1, :cond_1e

    .line 171
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/state/ConstraintReference;

    return-object v1

    .line 173
    :cond_1e
    const/4 v1, 0x0

    return-object v1
.end method

.method public convertDimension(Ljava/lang/Object;)I
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 114
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_c

    .line 115
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0

    .line 117
    :cond_c
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    .line 118
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 120
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public createConstraintReference(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 130
    new-instance v0, Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/state/ConstraintReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    return-object v0
.end method

.method public directMapping()V
    .registers 5

    .line 275
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 276
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    .line 277
    .local v2, "ref":Landroidx/constraintlayout/core/state/Reference;
    instance-of v3, v2, Landroidx/constraintlayout/core/state/ConstraintReference;

    if-nez v3, :cond_1d

    .line 278
    goto :goto_a

    .line 280
    :cond_1d
    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 281
    .local v3, "reference":Landroidx/constraintlayout/core/state/ConstraintReference;
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setView(Ljava/lang/Object;)V

    .line 282
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "ref":Landroidx/constraintlayout/core/state/Reference;
    .end local v3    # "reference":Landroidx/constraintlayout/core/state/ConstraintReference;
    goto :goto_a

    .line 283
    :cond_24
    return-void
.end method

.method public getIdsForTag(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mTags:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 311
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mTags:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    .line 313
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public guideline(Ljava/lang/Object;I)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "orientation"    # I

    .line 222
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    .line 223
    .local v0, "reference":Landroidx/constraintlayout/core/state/ConstraintReference;
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    move-result-object v1

    instance-of v1, v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    if-nez v1, :cond_20

    .line 224
    :cond_12
    new-instance v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    .line 225
    .local v1, "guidelineReference":Landroidx/constraintlayout/core/state/helpers/GuidelineReference;
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->setOrientation(I)V

    .line 226
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->setKey(Ljava/lang/Object;)V

    .line 227
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setFacade(Landroidx/constraintlayout/core/state/helpers/Facade;)V

    .line 229
    .end local v1    # "guidelineReference":Landroidx/constraintlayout/core/state/helpers/GuidelineReference;
    :cond_20
    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    return-object v1
.end method

.method public height(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/State;
    .registers 3
    .param p1, "dimension"    # Landroidx/constraintlayout/core/state/Dimension;

    .line 146
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->setHeight(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/State;

    move-result-object v0

    return-object v0
.end method

.method public helper(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "type"    # Landroidx/constraintlayout/core/state/State$Helper;

    .line 182
    if-nez p1, :cond_6

    .line 183
    invoke-direct {p0}, Landroidx/constraintlayout/core/state/State;->createHelperKey()Ljava/lang/String;

    move-result-object p1

    .line 185
    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/HelperReference;

    .line 186
    .local v0, "reference":Landroidx/constraintlayout/core/state/HelperReference;
    if-nez v0, :cond_4d

    .line 187
    sget-object v1, Landroidx/constraintlayout/core/state/State$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Helper:[I

    invoke-virtual {p2}, Landroidx/constraintlayout/core/state/State$Helper;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4e

    .line 204
    new-instance v1, Landroidx/constraintlayout/core/state/HelperReference;

    invoke-direct {v1, p0, p2}, Landroidx/constraintlayout/core/state/HelperReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    move-object v0, v1

    goto :goto_45

    .line 201
    :pswitch_22
    new-instance v1, Landroidx/constraintlayout/core/state/helpers/BarrierReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    move-object v0, v1

    .line 202
    goto :goto_45

    .line 198
    :pswitch_29
    new-instance v1, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    move-object v0, v1

    .line 199
    goto :goto_45

    .line 195
    :pswitch_30
    new-instance v1, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    move-object v0, v1

    .line 196
    goto :goto_45

    .line 192
    :pswitch_37
    new-instance v1, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    move-object v0, v1

    .line 193
    goto :goto_45

    .line 189
    :pswitch_3e
    new-instance v1, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    move-object v0, v1

    .line 190
    nop

    .line 207
    :goto_45
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/HelperReference;->setKey(Ljava/lang/Object;)V

    .line 208
    iget-object v1, p0, Landroidx/constraintlayout/core/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_4d
    return-object v0

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_37
        :pswitch_30
        :pswitch_29
        :pswitch_22
    .end packed-switch
.end method

.method public horizontalChain()Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;
    .registers 3

    .line 253
    const/4 v0, 0x0

    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;

    return-object v0
.end method

.method public varargs horizontalChain([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;
    .registers 4
    .param p1, "references"    # [Ljava/lang/Object;

    .line 257
    const/4 v0, 0x0

    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;

    .line 258
    .local v0, "reference":Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    .line 259
    return-object v0
.end method

.method public horizontalGuideline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/state/State;->guideline(Ljava/lang/Object;I)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "view"    # Ljava/lang/Object;

    .line 286
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    .line 287
    .local v0, "ref":Landroidx/constraintlayout/core/state/Reference;
    instance-of v1, v0, Landroidx/constraintlayout/core/state/ConstraintReference;

    if-eqz v1, :cond_e

    .line 288
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 289
    .local v1, "reference":Landroidx/constraintlayout/core/state/ConstraintReference;
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/state/ConstraintReference;->setView(Ljava/lang/Object;)V

    .line 291
    .end local v1    # "reference":Landroidx/constraintlayout/core/state/ConstraintReference;
    :cond_e
    return-void
.end method

.method reference(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Reference;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mReferences:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/Reference;

    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 101
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mHelperReferences:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 102
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mTags:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 103
    return-void
.end method

.method public sameFixedHeight(I)Z
    .registers 3
    .param p1, "height"    # I

    .line 138
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getHeight()Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/Dimension;->equalsFixedValue(I)Z

    move-result v0

    return v0
.end method

.method public sameFixedWidth(I)Z
    .registers 3
    .param p1, "width"    # I

    .line 134
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->getWidth()Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/Dimension;->equalsFixedValue(I)Z

    move-result v0

    return v0
.end method

.method public setHeight(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/State;
    .registers 3
    .param p1, "dimension"    # Landroidx/constraintlayout/core/state/Dimension;

    .line 155
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHeight(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 156
    return-object p0
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 294
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    .line 295
    .local v0, "ref":Landroidx/constraintlayout/core/state/Reference;
    instance-of v1, v0, Landroidx/constraintlayout/core/state/ConstraintReference;

    if-eqz v1, :cond_2f

    .line 296
    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 297
    .local v1, "reference":Landroidx/constraintlayout/core/state/ConstraintReference;
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/core/state/ConstraintReference;->setTag(Ljava/lang/String;)V

    .line 298
    const/4 v2, 0x0

    .line 299
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Landroidx/constraintlayout/core/state/State;->mTags:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 300
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 301
    iget-object v3, p0, Landroidx/constraintlayout/core/state/State;->mTags:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 303
    :cond_23
    iget-object v3, p0, Landroidx/constraintlayout/core/state/State;->mTags:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/util/ArrayList;

    .line 305
    :goto_2c
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v1    # "reference":Landroidx/constraintlayout/core/state/ConstraintReference;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2f
    return-void
.end method

.method public setWidth(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/State;
    .registers 3
    .param p1, "dimension"    # Landroidx/constraintlayout/core/state/Dimension;

    .line 150
    iget-object v0, p0, Landroidx/constraintlayout/core/state/State;->mParent:Landroidx/constraintlayout/core/state/ConstraintReference;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/ConstraintReference;->setWidth(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 151
    return-object p0
.end method

.method public verticalChain()Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;
    .registers 3

    .line 243
    const/4 v0, 0x0

    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;

    return-object v0
.end method

.method public varargs verticalChain([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;
    .registers 4
    .param p1, "references"    # [Ljava/lang/Object;

    .line 247
    const/4 v0, 0x0

    sget-object v1, Landroidx/constraintlayout/core/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/core/state/State;->helper(Ljava/lang/Object;Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;

    .line 248
    .local v0, "reference":Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;

    .line 249
    return-object v0
.end method

.method public verticalGuideline(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/state/State;->guideline(Ljava/lang/Object;I)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    move-result-object v0

    return-object v0
.end method

.method public width(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/State;
    .registers 3
    .param p1, "dimension"    # Landroidx/constraintlayout/core/state/Dimension;

    .line 142
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/state/State;->setWidth(Landroidx/constraintlayout/core/state/Dimension;)Landroidx/constraintlayout/core/state/State;

    move-result-object v0

    return-object v0
.end method
