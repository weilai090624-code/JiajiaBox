.class public final Lcom/google/android/material/transition/platform/MaterialSharedAxis;
.super Lcom/google/android/material/transition/platform/MaterialVisibility;
.source "MaterialSharedAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/MaterialSharedAxis$Axis;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/transition/platform/MaterialVisibility<",
        "Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_THEMED_DURATION_ATTR:I

.field private static final DEFAULT_THEMED_EASING_ATTR:I

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field public static final Z:I = 0x2


# instance fields
.field private final axis:I

.field private final forward:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 91
    sget v0, Lcom/google/android/material/R$attr;->motionDurationLong1:I

    sput v0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->DEFAULT_THEMED_DURATION_ATTR:I

    .line 94
    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    sput v0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->DEFAULT_THEMED_EASING_ATTR:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 5
    .param p1, "axis"    # I
    .param p2, "forward"    # Z

    .line 97
    invoke-static {p1, p2}, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->createPrimaryAnimatorProvider(IZ)Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->createSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/transition/platform/MaterialVisibility;-><init>(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    .line 98
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->axis:I

    .line 99
    iput-boolean p2, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->forward:Z

    .line 100
    return-void
.end method

.method private static createPrimaryAnimatorProvider(IZ)Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .registers 5
    .param p0, "axis"    # I
    .param p1, "forward"    # Z

    .line 113
    packed-switch p0, :pswitch_data_3e

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid axis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :pswitch_1c
    new-instance v0, Lcom/google/android/material/transition/platform/ScaleProvider;

    invoke-direct {v0, p1}, Lcom/google/android/material/transition/platform/ScaleProvider;-><init>(Z)V

    return-object v0

    .line 117
    :pswitch_22
    new-instance v0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;

    if-eqz p1, :cond_29

    const/16 v1, 0x50

    goto :goto_2b

    :cond_29
    const/16 v1, 0x30

    :goto_2b
    invoke-direct {v0, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;-><init>(I)V

    return-object v0

    .line 115
    :pswitch_2f
    new-instance v0, Lcom/google/android/material/transition/platform/SlideDistanceProvider;

    if-eqz p1, :cond_37

    const v1, 0x800005

    goto :goto_3a

    :cond_37
    const v1, 0x800003

    :goto_3a
    invoke-direct {v0, v1}, Lcom/google/android/material/transition/platform/SlideDistanceProvider;-><init>(I)V

    return-object v0

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_22
        :pswitch_1c
    .end packed-switch
.end method

.method private static createSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .registers 1

    .line 126
    new-instance v0, Lcom/google/android/material/transition/platform/FadeThroughProvider;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FadeThroughProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .registers 2

    .line 55
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/MaterialVisibility;->addAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    return-void
.end method

.method public bridge synthetic clearAdditionalAnimatorProvider()V
    .registers 1

    .line 55
    invoke-super {p0}, Lcom/google/android/material/transition/platform/MaterialVisibility;->clearAdditionalAnimatorProvider()V

    return-void
.end method

.method public getAxis()I
    .registers 2

    .line 104
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->axis:I

    return v0
.end method

.method getDurationThemeAttrResId(Z)I
    .registers 3
    .param p1, "appearing"    # Z

    .line 132
    sget v0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->DEFAULT_THEMED_DURATION_ATTR:I

    return v0
.end method

.method getEasingThemeAttrResId(Z)I
    .registers 3
    .param p1, "appearing"    # Z

    .line 138
    sget v0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->DEFAULT_THEMED_EASING_ATTR:I

    return v0
.end method

.method public bridge synthetic getPrimaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .registers 2

    .line 55
    invoke-super {p0}, Lcom/google/android/material/transition/platform/MaterialVisibility;->getPrimaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
    .registers 2

    .line 55
    invoke-super {p0}, Lcom/google/android/material/transition/platform/MaterialVisibility;->getSecondaryAnimatorProvider()Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;

    move-result-object v0

    return-object v0
.end method

.method public isForward()Z
    .registers 2

    .line 108
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialSharedAxis;->forward:Z

    return v0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/MaterialVisibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/transition/platform/MaterialVisibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)Z
    .registers 2

    .line 55
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/MaterialVisibility;->removeAdditionalAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setSecondaryAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V
    .registers 2

    .line 55
    invoke-super {p0, p1}, Lcom/google/android/material/transition/platform/MaterialVisibility;->setSecondaryAnimatorProvider(Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;)V

    return-void
.end method
