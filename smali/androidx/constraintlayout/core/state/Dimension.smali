.class public Landroidx/constraintlayout/core/state/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/state/Dimension$Type;
    }
.end annotation


# static fields
.field public static final FIXED_DIMENSION:Ljava/lang/Object;

.field public static final PARENT_DIMENSION:Ljava/lang/Object;

.field public static final PERCENT_DIMENSION:Ljava/lang/Object;

.field public static final RATIO_DIMENSION:Ljava/lang/Object;

.field public static final SPREAD_DIMENSION:Ljava/lang/Object;

.field public static final WRAP_DIMENSION:Ljava/lang/Object;


# instance fields
.field private final WRAP_CONTENT:I

.field mInitialValue:Ljava/lang/Object;

.field mIsSuggested:Z

.field mMax:I

.field mMin:I

.field mPercent:F

.field mRatioString:Ljava/lang/String;

.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->RATIO_DIMENSION:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x2

    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_CONTENT:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    .line 38
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mRatioString:Ljava/lang/String;

    .line 42
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 43
    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    .line 67
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/Object;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x2

    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_CONTENT:I

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    .line 38
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    .line 39
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mRatioString:Ljava/lang/String;

    .line 42
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 43
    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    .line 68
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    return-void
.end method

.method public static Fixed(I)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3
    .param p0, "value"    # I

    .line 83
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 84
    .local v0, "dimension":Landroidx/constraintlayout/core/state/Dimension;
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->fixed(I)Landroidx/constraintlayout/core/state/Dimension;

    .line 85
    return-object v0
.end method

.method public static Fixed(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 89
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 90
    .local v0, "dimension":Landroidx/constraintlayout/core/state/Dimension;
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->fixed(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    .line 91
    return-object v0
.end method

.method public static Parent()Landroidx/constraintlayout/core/state/Dimension;
    .registers 2

    .line 101
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static Percent(Ljava/lang/Object;F)Landroidx/constraintlayout/core/state/Dimension;
    .registers 4
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # F

    .line 95
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 96
    .local v0, "dimension":Landroidx/constraintlayout/core/state/Dimension;
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/state/Dimension;->percent(Ljava/lang/Object;F)Landroidx/constraintlayout/core/state/Dimension;

    .line 97
    return-object v0
.end method

.method public static Ratio(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3
    .param p0, "ratio"    # Ljava/lang/String;

    .line 113
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->RATIO_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    .line 114
    .local v0, "dimension":Landroidx/constraintlayout/core/state/Dimension;
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->ratio(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;

    .line 115
    return-object v0
.end method

.method public static Spread()Landroidx/constraintlayout/core/state/Dimension;
    .registers 2

    .line 109
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static Suggested(I)Landroidx/constraintlayout/core/state/Dimension;
    .registers 2
    .param p0, "value"    # I

    .line 71
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/Dimension;-><init>()V

    .line 72
    .local v0, "dimension":Landroidx/constraintlayout/core/state/Dimension;
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->suggested(I)Landroidx/constraintlayout/core/state/Dimension;

    .line 73
    return-object v0
.end method

.method public static Suggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 2
    .param p0, "startValue"    # Ljava/lang/Object;

    .line 77
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    invoke-direct {v0}, Landroidx/constraintlayout/core/state/Dimension;-><init>()V

    .line 78
    .local v0, "dimension":Landroidx/constraintlayout/core/state/Dimension;
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->suggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    .line 79
    return-object v0
.end method

.method public static Wrap()Landroidx/constraintlayout/core/state/Dimension;
    .registers 2

    .line 105
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .registers 8
    .param p1, "state"    # Landroidx/constraintlayout/core/state/State;
    .param p2, "constraintWidget"    # Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .param p3, "orientation"    # I

    .line 200
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mRatioString:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 201
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mRatioString:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    .line 203
    :cond_9
    const v0, 0x7fffffff

    if-nez p3, :cond_6d

    .line 204
    iget-boolean v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    if-eqz v1, :cond_32

    .line 205
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "type":I
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v1, v2, :cond_20

    .line 208
    const/4 v0, 0x1

    goto :goto_27

    .line 209
    :cond_20
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    if-ne v1, v2, :cond_27

    .line 210
    const/4 v0, 0x2

    .line 212
    :cond_27
    :goto_27
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    iget v2, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    iget v3, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 213
    .end local v0    # "type":I
    goto/16 :goto_c8

    .line 214
    :cond_32
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    if-lez v1, :cond_3b

    .line 215
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMinWidth(I)V

    .line 217
    :cond_3b
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    if-ge v1, v0, :cond_44

    .line 218
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMaxWidth(I)V

    .line 220
    :cond_44
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v0, v1, :cond_51

    .line 221
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/16 :goto_c8

    .line 222
    :cond_51
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    if-ne v0, v1, :cond_5e

    .line 223
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/16 :goto_c8

    .line 224
    :cond_5e
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    if-nez v0, :cond_c8

    .line 225
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 226
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_c8

    .line 230
    :cond_6d
    iget-boolean v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    if-eqz v1, :cond_90

    .line 231
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 232
    const/4 v0, 0x0

    .line 233
    .restart local v0    # "type":I
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v1, v2, :cond_7f

    .line 234
    const/4 v0, 0x1

    goto :goto_86

    .line 235
    :cond_7f
    iget-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v2, Landroidx/constraintlayout/core/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    if-ne v1, v2, :cond_86

    .line 236
    const/4 v0, 0x2

    .line 238
    :cond_86
    :goto_86
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    iget v2, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    iget v3, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    .line 239
    .end local v0    # "type":I
    goto :goto_c8

    .line 240
    :cond_90
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    if-lez v1, :cond_99

    .line 241
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMinHeight(I)V

    .line 243
    :cond_99
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    if-ge v1, v0, :cond_a2

    .line 244
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMaxHeight(I)V

    .line 246
    :cond_a2
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne v0, v1, :cond_ae

    .line 247
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_c8

    .line 248
    :cond_ae
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    if-ne v0, v1, :cond_ba

    .line 249
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_c8

    .line 250
    :cond_ba
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    if-nez v0, :cond_c8

    .line 251
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 252
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    .line 256
    :cond_c8
    :goto_c8
    return-void
.end method

.method public equalsFixedValue(I)Z
    .registers 3
    .param p1, "value"    # I

    .line 53
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    if-nez v0, :cond_a

    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    if-ne v0, p1, :cond_a

    .line 55
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public fixed(I)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3
    .param p1, "value"    # I

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 177
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    .line 178
    return-object p0
.end method

.method public fixed(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 167
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 168
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 169
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 172
    :cond_12
    return-object p0
.end method

.method getValue()I
    .registers 2

    .line 192
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    return v0
.end method

.method public max(I)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3
    .param p1, "value"    # I

    .line 138
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    if-ltz v0, :cond_6

    .line 139
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    .line 141
    :cond_6
    return-object p0
.end method

.method public max(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 145
    sget-object v0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p1, v0, :cond_11

    iget-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    if-eqz v0, :cond_11

    .line 146
    sget-object v0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 147
    const v0, 0x7fffffff

    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    .line 149
    :cond_11
    return-object p0
.end method

.method public min(I)Landroidx/constraintlayout/core/state/Dimension;
    .registers 2
    .param p1, "value"    # I

    .line 124
    if-ltz p1, :cond_4

    .line 125
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    .line 127
    :cond_4
    return-object p0
.end method

.method public min(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 131
    sget-object v0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    if-ne p1, v0, :cond_7

    .line 132
    const/4 v0, -0x2

    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    .line 134
    :cond_7
    return-object p0
.end method

.method public percent(Ljava/lang/Object;F)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # F

    .line 119
    iput p2, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    .line 120
    return-object p0
.end method

.method public ratio(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 2
    .param p1, "ratio"    # Ljava/lang/String;

    .line 182
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mRatioString:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method setValue(I)V
    .registers 3
    .param p1, "value"    # I

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 189
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    .line 190
    return-void
.end method

.method public suggested(I)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3
    .param p1, "value"    # I

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    .line 154
    if-ltz p1, :cond_7

    .line 155
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    .line 157
    :cond_7
    return-object p0
.end method

.method public suggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 161
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    .line 163
    return-object p0
.end method
