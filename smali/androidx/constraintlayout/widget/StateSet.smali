.class public Landroidx/constraintlayout/widget/StateSet;
.super Ljava/lang/Object;
.source "StateSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/StateSet$Variant;,
        Landroidx/constraintlayout/widget/StateSet$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "ConstraintLayoutStates"


# instance fields
.field private mConstraintSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

.field mCurrentConstraintNumber:I

.field mCurrentStateId:I

.field mDefaultConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field mDefaultState:I

.field private mStateList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/StateSet$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    .line 44
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    .line 45
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/StateSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 57
    return-void
.end method

.method private load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    .line 70
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 71
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->StateSet:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 72
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 74
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_24

    .line 75
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 76
    .local v4, "attr":I
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->StateSet_defaultState:I

    if-ne v4, v5, :cond_21

    .line 77
    iget v5, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/StateSet;->mDefaultState:I

    .line 74
    .end local v4    # "attr":I
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 80
    .end local v3    # "i":I
    :cond_24
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    const/4 v3, 0x0

    .line 85
    .local v3, "tagName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 86
    .local v4, "document":Ljava/lang/String;
    const/4 v5, 0x0

    .line 87
    .local v5, "state":Landroidx/constraintlayout/widget/StateSet$State;
    :try_start_2a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6
    :try_end_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_2e} :catch_aa
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_a5

    .line 88
    .local v6, "eventType":I
    :goto_2e
    const/4 v7, 0x1

    if-eq v6, v7, :cond_a4

    .line 91
    const-string v8, "StateSet"

    packed-switch v6, :pswitch_data_b0

    :pswitch_36
    goto/16 :goto_9e

    .line 121
    :pswitch_38
    :try_start_38
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 125
    return-void

    .line 128
    :cond_43
    const/4 v3, 0x0

    .line 129
    goto :goto_9e

    .line 96
    :pswitch_45
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 97
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_bc

    :cond_51
    goto :goto_77

    :sswitch_52
    const-string v7, "Variant"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    const/4 v7, 0x3

    goto :goto_78

    :sswitch_5c
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    goto :goto_78

    :sswitch_63
    const-string v7, "LayoutDescription"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    const/4 v7, 0x0

    goto :goto_78

    :sswitch_6d
    const-string v7, "State"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    const/4 v7, 0x2

    goto :goto_78

    :goto_77
    const/4 v7, -0x1

    :goto_78
    packed-switch v7, :pswitch_data_ce

    goto :goto_97

    .line 107
    :pswitch_7c
    new-instance v7, Landroidx/constraintlayout/widget/StateSet$Variant;

    invoke-direct {v7, p1, p2}, Landroidx/constraintlayout/widget/StateSet$Variant;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 108
    .local v7, "match":Landroidx/constraintlayout/widget/StateSet$Variant;
    if-eqz v5, :cond_97

    .line 109
    invoke-virtual {v5, v7}, Landroidx/constraintlayout/widget/StateSet$State;->add(Landroidx/constraintlayout/widget/StateSet$Variant;)V

    goto :goto_97

    .line 103
    .end local v7    # "match":Landroidx/constraintlayout/widget/StateSet$Variant;
    :pswitch_87
    new-instance v7, Landroidx/constraintlayout/widget/StateSet$State;

    invoke-direct {v7, p1, p2}, Landroidx/constraintlayout/widget/StateSet$State;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v5, v7

    .line 104
    iget-object v7, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    iget v8, v5, Landroidx/constraintlayout/widget/StateSet$State;->mId:I

    invoke-virtual {v7, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    goto :goto_97

    .line 101
    :pswitch_95
    goto :goto_97

    .line 99
    :pswitch_96
    nop

    .line 119
    :cond_97
    :goto_97
    goto :goto_9e

    .line 93
    :pswitch_98
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 94
    nop

    .line 89
    :goto_9e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7
    :try_end_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_38 .. :try_end_a2} :catch_aa
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_a2} :catch_a5

    move v6, v7

    goto :goto_2e

    .line 88
    .end local v4    # "document":Ljava/lang/String;
    .end local v5    # "state":Landroidx/constraintlayout/widget/StateSet$State;
    .end local v6    # "eventType":I
    :cond_a4
    goto :goto_ae

    .line 137
    :catch_a5
    move-exception v4

    .line 138
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_af

    .line 135
    .end local v4    # "e":Ljava/io/IOException;
    :catch_aa
    move-exception v4

    .line 136
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 139
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_ae
    nop

    .line 140
    :goto_af
    return-void

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_98
        :pswitch_36
        :pswitch_45
        :pswitch_38
    .end packed-switch

    :sswitch_data_bc
    .sparse-switch
        0x4c7d471 -> :sswitch_6d
        0x4d92b252 -> :sswitch_63
        0x526c4e31 -> :sswitch_5c
        0x7155a865 -> :sswitch_52
    .end sparse-switch

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_96
        :pswitch_95
        :pswitch_87
        :pswitch_7c
    .end packed-switch
.end method


# virtual methods
.method public convertToConstraintSet(IIFF)I
    .registers 10
    .param p1, "currentConstrainSettId"    # I
    .param p2, "stateId"    # I
    .param p3, "width"    # F
    .param p4, "height"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentConstrainSettId",
            "stateId",
            "width",
            "height"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/StateSet$State;

    .line 180
    .local v0, "state":Landroidx/constraintlayout/widget/StateSet$State;
    if-nez v0, :cond_b

    .line 181
    return p2

    .line 183
    :cond_b
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, p3, v1

    if-eqz v2, :cond_3e

    cmpl-float v1, p4, v1

    if-nez v1, :cond_16

    goto :goto_3e

    .line 194
    :cond_16
    const/4 v1, 0x0

    .line 195
    .local v1, "match":Landroidx/constraintlayout/widget/StateSet$Variant;
    iget-object v2, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 196
    .local v3, "mVariant":Landroidx/constraintlayout/widget/StateSet$Variant;
    invoke-virtual {v3, p3, p4}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 197
    iget v4, v3, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    if-ne p1, v4, :cond_34

    .line 198
    return p1

    .line 200
    :cond_34
    move-object v1, v3

    .line 202
    .end local v3    # "mVariant":Landroidx/constraintlayout/widget/StateSet$Variant;
    :cond_35
    goto :goto_1d

    .line 203
    :cond_36
    if-eqz v1, :cond_3b

    .line 204
    iget v2, v1, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    return v2

    .line 207
    :cond_3b
    iget v2, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    return v2

    .line 184
    .end local v1    # "match":Landroidx/constraintlayout/widget/StateSet$Variant;
    :cond_3e
    :goto_3e
    iget v1, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    if-ne v1, p1, :cond_43

    .line 185
    return p1

    .line 187
    :cond_43
    iget-object v1, v0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/StateSet$Variant;

    .line 188
    .local v2, "mVariant":Landroidx/constraintlayout/widget/StateSet$Variant;
    iget v3, v2, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    if-ne p1, v3, :cond_5a

    .line 189
    return p1

    .line 191
    .end local v2    # "mVariant":Landroidx/constraintlayout/widget/StateSet$Variant;
    :cond_5a
    goto :goto_49

    .line 192
    :cond_5b
    iget v1, v0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    return v1
.end method

.method public needsToChange(IFF)Z
    .registers 9
    .param p1, "id"    # I
    .param p2, "width"    # F
    .param p3, "height"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "width",
            "height"
        }
    .end annotation

    .line 143
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_6

    .line 144
    return v1

    .line 147
    :cond_6
    const/4 v0, -0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    if-ne p1, v0, :cond_11

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_17

    :cond_11
    iget v4, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    :goto_17
    check-cast v3, Landroidx/constraintlayout/widget/StateSet$State;

    .line 149
    .local v3, "state":Landroidx/constraintlayout/widget/StateSet$State;
    iget v4, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    if-eq v4, v0, :cond_2e

    .line 150
    iget-object v0, v3, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    iget v4, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/StateSet$Variant;

    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 151
    return v2

    .line 155
    :cond_2e
    iget v0, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    invoke-virtual {v3, p2, p3}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    move-result v4

    if-ne v0, v4, :cond_37

    .line 156
    return v2

    .line 158
    :cond_37
    return v1
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V
    .registers 2
    .param p1, "constraintsChangedListener"    # Landroidx/constraintlayout/widget/ConstraintsChangedListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraintsChangedListener"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Landroidx/constraintlayout/widget/StateSet;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 163
    return-void
.end method

.method public stateGetConstraintID(III)I
    .registers 7
    .param p1, "id"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "width",
            "height"
        }
    .end annotation

    .line 166
    int-to-float v0, p2

    int-to-float v1, p3

    const/4 v2, -0x1

    invoke-virtual {p0, v2, p1, v0, v1}, Landroidx/constraintlayout/widget/StateSet;->updateConstraints(IIFF)I

    move-result v0

    return v0
.end method

.method public updateConstraints(IIFF)I
    .registers 8
    .param p1, "currentId"    # I
    .param p2, "id"    # I
    .param p3, "width"    # F
    .param p4, "height"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentId",
            "id",
            "width",
            "height"
        }
    .end annotation

    .line 212
    const/4 v0, -0x1

    if-ne p1, p2, :cond_46

    .line 214
    if-ne p2, v0, :cond_f

    .line 215
    iget-object v1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/StateSet$State;

    .local v1, "state":Landroidx/constraintlayout/widget/StateSet$State;
    goto :goto_19

    .line 217
    .end local v1    # "state":Landroidx/constraintlayout/widget/StateSet$State;
    :cond_f
    iget-object v1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    iget v2, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentStateId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/StateSet$State;

    .line 220
    .restart local v1    # "state":Landroidx/constraintlayout/widget/StateSet$State;
    :goto_19
    if-nez v1, :cond_1c

    .line 221
    return v0

    .line 223
    :cond_1c
    iget v2, p0, Landroidx/constraintlayout/widget/StateSet;->mCurrentConstraintNumber:I

    if-eq v2, v0, :cond_2f

    .line 224
    iget-object v2, v1, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/StateSet$Variant;

    invoke-virtual {v2, p3, p4}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 225
    return p1

    .line 228
    :cond_2f
    invoke-virtual {v1, p3, p4}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    move-result v2

    .line 229
    .local v2, "match":I
    if-ne p1, v2, :cond_36

    .line 230
    return p1

    .line 233
    :cond_36
    if-ne v2, v0, :cond_3b

    iget v0, v1, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    goto :goto_45

    :cond_3b
    iget-object v0, v1, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/StateSet$Variant;

    iget v0, v0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    :goto_45
    return v0

    .line 236
    .end local v1    # "state":Landroidx/constraintlayout/widget/StateSet$State;
    .end local v2    # "match":I
    :cond_46
    iget-object v1, p0, Landroidx/constraintlayout/widget/StateSet;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/StateSet$State;

    .line 237
    .restart local v1    # "state":Landroidx/constraintlayout/widget/StateSet$State;
    if-nez v1, :cond_51

    .line 238
    return v0

    .line 240
    :cond_51
    invoke-virtual {v1, p3, p4}, Landroidx/constraintlayout/widget/StateSet$State;->findMatch(FF)I

    move-result v2

    .line 241
    .restart local v2    # "match":I
    if-ne v2, v0, :cond_5a

    iget v0, v1, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    goto :goto_64

    :cond_5a
    iget-object v0, v1, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/StateSet$Variant;

    iget v0, v0, Landroidx/constraintlayout/widget/StateSet$Variant;->mConstraintID:I

    :goto_64
    return v0
.end method
