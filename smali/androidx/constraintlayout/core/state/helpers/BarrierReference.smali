.class public Landroidx/constraintlayout/core/state/helpers/BarrierReference;
.super Landroidx/constraintlayout/core/state/HelperReference;
.source "BarrierReference.java"


# instance fields
.field private mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

.field private mDirection:Landroidx/constraintlayout/core/state/State$Direction;

.field private mMargin:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .registers 3
    .param p1, "state"    # Landroidx/constraintlayout/core/state/State;

    .line 32
    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->BARRIER:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/state/HelperReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    .line 33
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 4

    .line 59
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;

    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, "direction":I
    sget-object v1, Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I

    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mDirection:Landroidx/constraintlayout/core/state/State$Direction;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/State$Direction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_26

    goto :goto_19

    .line 75
    :pswitch_12
    const/4 v0, 0x3

    goto :goto_19

    .line 72
    :pswitch_14
    const/4 v0, 0x2

    .line 73
    goto :goto_19

    .line 69
    :pswitch_16
    const/4 v0, 0x1

    .line 70
    goto :goto_19

    .line 65
    :pswitch_18
    nop

    .line 78
    :goto_19
    iget-object v1, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/Barrier;->setBarrierType(I)V

    .line 79
    iget-object v1, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    iget v2, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mMargin:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/Barrier;->setMargin(I)V

    .line 80
    return-void

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_18
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_14
        :pswitch_12
    .end packed-switch
.end method

.method public getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;
    .registers 2

    .line 52
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    if-nez v0, :cond_b

    .line 53
    new-instance v0, Landroidx/constraintlayout/core/widgets/Barrier;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/Barrier;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    .line 55
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    return-object v0
.end method

.method public margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 2
    .param p1, "value"    # I

    .line 46
    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mMargin:I

    .line 47
    return-object p0
.end method

.method public margin(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mState:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    .line 42
    return-object p0
.end method

.method public setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V
    .registers 2
    .param p1, "barrierDirection"    # Landroidx/constraintlayout/core/state/State$Direction;

    .line 36
    iput-object p1, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mDirection:Landroidx/constraintlayout/core/state/State$Direction;

    .line 37
    return-void
.end method
