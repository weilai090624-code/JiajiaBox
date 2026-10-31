.class public Landroidx/constraintlayout/core/state/helpers/GuidelineReference;
.super Ljava/lang/Object;
.source "GuidelineReference.java"

# interfaces
.implements Landroidx/constraintlayout/core/state/helpers/Facade;
.implements Landroidx/constraintlayout/core/state/Reference;


# instance fields
.field private key:Ljava/lang/Object;

.field private mEnd:I

.field private mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

.field private mOrientation:I

.field private mPercent:F

.field private mStart:I

.field final mState:Landroidx/constraintlayout/core/state/State;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .registers 3
    .param p1, "state"    # Landroidx/constraintlayout/core/state/State;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mStart:I

    .line 31
    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mEnd:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mPercent:F

    .line 44
    iput-object p1, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mState:Landroidx/constraintlayout/core/state/State;

    .line 45
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 3

    .line 77
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mOrientation:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setOrientation(I)V

    .line 78
    iget v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mStart:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 79
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mStart:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_27

    .line 80
    :cond_14
    iget v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mEnd:I

    if-eq v0, v1, :cond_20

    .line 81
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mEnd:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_27

    .line 83
    :cond_20
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    iget v1, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mPercent:F

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuidePercent(F)V

    .line 85
    :goto_27
    return-void
.end method

.method public end(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;
    .registers 3
    .param p1, "margin"    # Ljava/lang/Object;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mStart:I

    .line 56
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mState:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mEnd:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mPercent:F

    .line 58
    return-object p0
.end method

.method public getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 2

    .line 94
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v0, :cond_b

    .line 95
    new-instance v0, Landroidx/constraintlayout/core/widgets/Guideline;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/Guideline;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    .line 97
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    return-object v0
.end method

.method public getFacade()Landroidx/constraintlayout/core/state/helpers/Facade;
    .registers 2

    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .line 40
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    .line 73
    iget v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mOrientation:I

    return v0
.end method

.method public percent(F)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;
    .registers 3
    .param p1, "percent"    # F

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mStart:I

    .line 63
    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mEnd:I

    .line 64
    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mPercent:F

    .line 65
    return-object p0
.end method

.method public setConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 3
    .param p1, "widget"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 102
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/Guideline;

    if-eqz v0, :cond_a

    .line 103
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    goto :goto_d

    .line 105
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/core/widgets/Guideline;

    .line 107
    :goto_d
    return-void
.end method

.method public setKey(Ljava/lang/Object;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->key:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .line 69
    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mOrientation:I

    .line 70
    return-void
.end method

.method public start(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;
    .registers 3
    .param p1, "margin"    # Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mState:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mStart:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mEnd:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->mPercent:F

    .line 51
    return-object p0
.end method
