.class public abstract Landroidx/transition/Visibility;
.super Landroidx/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Visibility$DisappearListener;,
        Landroidx/transition/Visibility$VisibilityInfo;,
        Landroidx/transition/Visibility$Mode;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 81
    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    .line 98
    const/4 v0, 0x3

    iput v0, p0, Landroidx/transition/Visibility;->mMode:I

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 106
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    const/4 v0, 0x3

    iput v0, p0, Landroidx/transition/Visibility;->mMode:I

    .line 107
    sget-object v0, Landroidx/transition/Styleable;->VISIBILITY_TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v1, p2

    check-cast v1, Landroid/content/res/XmlResourceParser;

    const-string/jumbo v2, "transitionVisibilityMode"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 112
    .local v1, "mode":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    if-eqz v1, :cond_1f

    .line 114
    invoke-virtual {p0, v1}, Landroidx/transition/Visibility;->setMode(I)V

    .line 116
    :cond_1f
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .registers 6
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 150
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 151
    .local v0, "visibility":I
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:visibility:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 154
    .local v1, "loc":[I
    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 155
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:screenLocation"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method private getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;
    .registers 10
    .param p1, "startValues"    # Landroidx/transition/TransitionValues;
    .param p2, "endValues"    # Landroidx/transition/TransitionValues;

    .line 195
    new-instance v0, Landroidx/transition/Visibility$VisibilityInfo;

    invoke-direct {v0}, Landroidx/transition/Visibility$VisibilityInfo;-><init>()V

    .line 196
    .local v0, "visInfo":Landroidx/transition/Visibility$VisibilityInfo;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 197
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 198
    const-string v2, "android:visibility:parent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "android:visibility:visibility"

    if-eqz p1, :cond_33

    iget-object v6, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 199
    iget-object v6, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 200
    iget-object v6, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    goto :goto_37

    .line 202
    :cond_33
    iput v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 203
    iput-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 205
    :goto_37
    if-eqz p2, :cond_5a

    iget-object v6, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 206
    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 207
    iget-object v3, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    goto :goto_5e

    .line 209
    :cond_5a
    iput v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 210
    iput-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 212
    :goto_5e
    const/4 v2, 0x1

    if-eqz p1, :cond_9a

    if-eqz p2, :cond_9a

    .line 213
    iget v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-ne v3, v4, :cond_70

    iget-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_70

    .line 215
    return-object v0

    .line 217
    :cond_70
    iget v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v4, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-eq v3, v4, :cond_88

    .line 218
    iget v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v3, :cond_7f

    .line 219
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 220
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_af

    .line 221
    :cond_7f
    iget v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v1, :cond_af

    .line 222
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 223
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_af

    .line 227
    :cond_88
    iget-object v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-nez v3, :cond_91

    .line 228
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 229
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_af

    .line 230
    :cond_91
    iget-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_af

    .line 231
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 232
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_af

    .line 236
    :cond_9a
    if-nez p1, :cond_a5

    iget v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v3, :cond_a5

    .line 237
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 238
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_af

    .line 239
    :cond_a5
    if-nez p2, :cond_af

    iget v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v3, :cond_af

    .line 240
    iput-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 241
    iput-boolean v2, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 243
    :cond_af
    :goto_af
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 165
    invoke-direct {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 166
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 160
    invoke-direct {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 161
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
    .param p3, "endValues"    # Landroidx/transition/TransitionValues;

    .line 250
    invoke-direct {p0, p2, p3}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 251
    .local v0, "visInfo":Landroidx/transition/Visibility$VisibilityInfo;
    iget-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v1, :cond_2e

    iget-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_10

    iget-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2e

    .line 253
    :cond_10
    iget-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    if-eqz v1, :cond_21

    .line 254
    iget v5, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v7, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v1

    return-object v1

    .line 257
    :cond_21
    iget v5, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v7, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v1

    return-object v1

    .line 262
    :cond_2e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMode()I
    .registers 2

    .line 140
    iget v0, p0, Landroidx/transition/Visibility;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 146
    sget-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .registers 7
    .param p1, "startValues"    # Landroidx/transition/TransitionValues;
    .param p2, "newValues"    # Landroidx/transition/TransitionValues;

    .line 512
    const/4 v0, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    .line 513
    return v0

    .line 515
    :cond_6
    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 516
    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 517
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1b

    .line 520
    return v0

    .line 522
    :cond_1b
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v1

    .line 523
    .local v1, "changeInfo":Landroidx/transition/Visibility$VisibilityInfo;
    iget-boolean v2, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v2, :cond_2c

    iget v2, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-eqz v2, :cond_2b

    iget v2, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v2, :cond_2c

    :cond_2b
    const/4 v0, 0x1

    :cond_2c
    return v0
.end method

.method public isVisible(Landroidx/transition/TransitionValues;)Z
    .registers 6
    .param p1, "values"    # Landroidx/transition/TransitionValues;

    .line 184
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 185
    return v0

    .line 187
    :cond_4
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 188
    .local v1, "visibility":I
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 190
    .local v2, "parent":Landroid/view/View;
    if-nez v1, :cond_21

    if-eqz v2, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroidx/transition/TransitionValues;
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;

    .line 321
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .line 284
    iget v0, p0, Landroidx/transition/Visibility;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2e

    if-nez p4, :cond_a

    goto :goto_2e

    .line 287
    :cond_a
    if-nez p2, :cond_27

    .line 288
    iget-object v0, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 289
    .local v0, "endParent":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v3

    .line 291
    .local v3, "startParentValues":Landroidx/transition/TransitionValues;
    invoke-virtual {p0, v0, v1}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v1

    .line 292
    .local v1, "endParentValues":Landroidx/transition/TransitionValues;
    nop

    .line 293
    invoke-direct {p0, v3, v1}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v4

    .line 294
    .local v4, "parentVisibilityInfo":Landroidx/transition/Visibility$VisibilityInfo;
    iget-boolean v5, v4, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v5, :cond_27

    .line 295
    return-object v2

    .line 298
    .end local v0    # "endParent":Landroid/view/View;
    .end local v1    # "endParentValues":Landroidx/transition/TransitionValues;
    .end local v3    # "startParentValues":Landroidx/transition/TransitionValues;
    .end local v4    # "parentVisibilityInfo":Landroidx/transition/Visibility$VisibilityInfo;
    :cond_27
    iget-object v0, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p2, p4}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    .line 285
    :cond_2e
    :goto_2e
    return-object v2
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startValues"    # Landroidx/transition/TransitionValues;
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;

    .line 506
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 25
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroidx/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .line 343
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    iget v5, v0, Landroidx/transition/Visibility;->mMode:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    const/4 v7, 0x0

    if-eq v5, v6, :cond_12

    .line 344
    return-object v7

    .line 347
    :cond_12
    if-nez v2, :cond_15

    .line 349
    return-object v7

    .line 352
    :cond_15
    iget-object v5, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 353
    .local v5, "startView":Landroid/view/View;
    if-eqz v3, :cond_1c

    iget-object v8, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_1d

    :cond_1c
    move-object v8, v7

    .line 354
    .local v8, "endView":Landroid/view/View;
    :goto_1d
    const/4 v9, 0x0

    .line 355
    .local v9, "overlayView":Landroid/view/View;
    const/4 v10, 0x0

    .line 356
    .local v10, "viewToKeep":Landroid/view/View;
    const/4 v11, 0x0

    .line 358
    .local v11, "reusingOverlayView":Z
    sget v12, Landroidx/transition/R$id;->save_overlay_view:I

    invoke-virtual {v5, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 359
    .local v12, "savedOverlayView":Landroid/view/View;
    const/4 v13, 0x1

    if-eqz v12, :cond_2f

    .line 363
    move-object v9, v12

    .line 364
    const/4 v11, 0x1

    goto/16 :goto_96

    .line 366
    :cond_2f
    const/4 v14, 0x0

    .line 368
    .local v14, "needOverlayForStartView":Z
    if-eqz v8, :cond_44

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    if-nez v15, :cond_39

    goto :goto_44

    .line 377
    :cond_39
    const/4 v15, 0x4

    if-ne v4, v15, :cond_3e

    .line 378
    move-object v10, v8

    goto :goto_49

    .line 381
    :cond_3e
    if-ne v5, v8, :cond_42

    .line 382
    move-object v10, v8

    goto :goto_49

    .line 384
    :cond_42
    const/4 v14, 0x1

    goto :goto_49

    .line 369
    :cond_44
    :goto_44
    if-eqz v8, :cond_48

    .line 371
    move-object v9, v8

    goto :goto_49

    .line 373
    :cond_48
    const/4 v14, 0x1

    .line 389
    :goto_49
    if-eqz v14, :cond_96

    .line 393
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    if-nez v15, :cond_53

    .line 395
    move-object v9, v5

    goto :goto_96

    .line 396
    :cond_53
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    instance-of v15, v15, Landroid/view/View;

    if-eqz v15, :cond_96

    .line 397
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 398
    .local v15, "startParent":Landroid/view/View;
    invoke-virtual {v0, v15, v13}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v7

    .line 399
    .local v7, "startParentValues":Landroidx/transition/TransitionValues;
    invoke-virtual {v0, v15, v13}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v6

    .line 401
    .local v6, "endParentValues":Landroidx/transition/TransitionValues;
    nop

    .line 402
    invoke-direct {v0, v7, v6}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v13

    .line 403
    .local v13, "parentVisibilityInfo":Landroidx/transition/Visibility$VisibilityInfo;
    move-object/from16 v17, v6

    .end local v6    # "endParentValues":Landroidx/transition/TransitionValues;
    .local v17, "endParentValues":Landroidx/transition/TransitionValues;
    iget-boolean v6, v13, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-nez v6, :cond_79

    .line 404
    invoke-static {v1, v5, v15}, Landroidx/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v9

    goto :goto_96

    .line 407
    :cond_79
    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v6

    .line 408
    .local v6, "id":I
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    if-nez v18, :cond_94

    move-object/from16 v18, v7

    .end local v7    # "startParentValues":Landroidx/transition/TransitionValues;
    .local v18, "startParentValues":Landroidx/transition/TransitionValues;
    const/4 v7, -0x1

    if-eq v6, v7, :cond_96

    .line 409
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_96

    iget-boolean v7, v0, Landroidx/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v7, :cond_96

    .line 413
    move-object v9, v5

    goto :goto_96

    .line 408
    .end local v18    # "startParentValues":Landroidx/transition/TransitionValues;
    .restart local v7    # "startParentValues":Landroidx/transition/TransitionValues;
    :cond_94
    move-object/from16 v18, v7

    .line 422
    .end local v6    # "id":I
    .end local v7    # "startParentValues":Landroidx/transition/TransitionValues;
    .end local v13    # "parentVisibilityInfo":Landroidx/transition/Visibility$VisibilityInfo;
    .end local v14    # "needOverlayForStartView":Z
    .end local v15    # "startParent":Landroid/view/View;
    .end local v17    # "endParentValues":Landroidx/transition/TransitionValues;
    :cond_96
    :goto_96
    const/4 v6, 0x0

    if-eqz v9, :cond_f3

    .line 423
    if-nez v11, :cond_d2

    .line 424
    iget-object v7, v2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v13, "android:visibility:screenLocation"

    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 425
    .local v7, "screenLoc":[I
    aget v13, v7, v6

    .line 426
    .local v13, "screenX":I
    const/4 v14, 0x1

    aget v15, v7, v14

    .line 427
    .local v15, "screenY":I
    const/4 v14, 0x2

    new-array v14, v14, [I

    .line 428
    .local v14, "loc":[I
    invoke-virtual {v1, v14}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 429
    aget v6, v14, v6

    sub-int v6, v13, v6

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v6, v6, v16

    invoke-virtual {v9, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 430
    const/4 v6, 0x1

    aget v6, v14, v6

    sub-int v6, v15, v6

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v6, v6, v16

    invoke-virtual {v9, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 431
    invoke-static/range {p1 .. p1}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v6

    invoke-interface {v6, v9}, Landroidx/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    .line 433
    .end local v7    # "screenLoc":[I
    .end local v13    # "screenX":I
    .end local v14    # "loc":[I
    .end local v15    # "screenY":I
    :cond_d2
    invoke-virtual {v0, v1, v9, v2, v3}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v6

    .line 434
    .local v6, "animator":Landroid/animation/Animator;
    if-nez v11, :cond_f2

    .line 435
    if-nez v6, :cond_e2

    .line 436
    invoke-static/range {p1 .. p1}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v7

    invoke-interface {v7, v9}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    goto :goto_f2

    .line 438
    :cond_e2
    sget v7, Landroidx/transition/R$id;->save_overlay_view:I

    invoke-virtual {v5, v7, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 439
    move-object v7, v9

    .line 440
    .local v7, "finalOverlayView":Landroid/view/View;
    move-object/from16 v13, p1

    .line 441
    .local v13, "overlayHost":Landroid/view/ViewGroup;
    new-instance v14, Landroidx/transition/Visibility$1;

    invoke-direct {v14, v0, v13, v7, v5}, Landroidx/transition/Visibility$1;-><init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v14}, Landroidx/transition/Visibility;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 466
    .end local v7    # "finalOverlayView":Landroid/view/View;
    .end local v13    # "overlayHost":Landroid/view/ViewGroup;
    :cond_f2
    :goto_f2
    return-object v6

    .line 469
    .end local v6    # "animator":Landroid/animation/Animator;
    :cond_f3
    if-eqz v10, :cond_116

    .line 470
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v7

    .line 471
    .local v7, "originalVisibility":I
    invoke-static {v10, v6}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 472
    invoke-virtual {v0, v1, v10, v2, v3}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v6

    .line 473
    .restart local v6    # "animator":Landroid/animation/Animator;
    if-eqz v6, :cond_112

    .line 474
    new-instance v13, Landroidx/transition/Visibility$DisappearListener;

    const/4 v14, 0x1

    invoke-direct {v13, v10, v4, v14}, Landroidx/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    .line 476
    .local v13, "disappearListener":Landroidx/transition/Visibility$DisappearListener;
    invoke-virtual {v6, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 477
    invoke-static {v6, v13}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 478
    invoke-virtual {v0, v13}, Landroidx/transition/Visibility;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 479
    .end local v13    # "disappearListener":Landroidx/transition/Visibility$DisappearListener;
    goto :goto_115

    .line 480
    :cond_112
    invoke-static {v10, v7}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 482
    :goto_115
    return-object v6

    .line 484
    .end local v6    # "animator":Landroid/animation/Animator;
    .end local v7    # "originalVisibility":I
    :cond_116
    const/4 v6, 0x0

    return-object v6
.end method

.method public setMode(I)V
    .registers 4
    .param p1, "mode"    # I

    .line 126
    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_7

    .line 129
    iput p1, p0, Landroidx/transition/Visibility;->mMode:I

    .line 130
    return-void

    .line 127
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
