.class Lcom/google/android/material/transition/platform/FadeModeEvaluators;
.super Ljava/lang/Object;
.source "FadeModeEvaluators.java"


# static fields
.field private static final CROSS:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

.field private static final IN:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

.field private static final OUT:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

.field private static final THROUGH:Lcom/google/android/material/transition/platform/FadeModeEvaluator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators$1;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FadeModeEvaluators$1;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->IN:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 45
    new-instance v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators$2;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FadeModeEvaluators$2;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->OUT:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 56
    new-instance v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators$3;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FadeModeEvaluators$3;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->CROSS:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    .line 67
    new-instance v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators$4;

    invoke-direct {v0}, Lcom/google/android/material/transition/platform/FadeModeEvaluators$4;-><init>()V

    sput-object v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->THROUGH:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(IZ)Lcom/google/android/material/transition/platform/FadeModeEvaluator;
    .registers 5
    .param p0, "fadeMode"    # I
    .param p1, "entering"    # Z

    .line 82
    packed-switch p0, :pswitch_data_32

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fade mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :pswitch_1c
    sget-object v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->THROUGH:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    return-object v0

    .line 88
    :pswitch_1f
    sget-object v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->CROSS:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    return-object v0

    .line 86
    :pswitch_22
    if-eqz p1, :cond_27

    sget-object v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->OUT:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    goto :goto_29

    :cond_27
    sget-object v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->IN:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    :goto_29
    return-object v0

    .line 84
    :pswitch_2a
    if-eqz p1, :cond_2f

    sget-object v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->IN:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    goto :goto_31

    :cond_2f
    sget-object v0, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->OUT:Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    :goto_31
    return-object v0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method
