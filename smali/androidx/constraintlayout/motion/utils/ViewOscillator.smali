.class public abstract Landroidx/constraintlayout/motion/utils/ViewOscillator;
.super Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.source "ViewOscillator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationZset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationYset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationXset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleYset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleXset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationYset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationXset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$ElevationSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewOscillator"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;-><init>()V

    return-void
.end method

.method public static makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewOscillator;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 42
    const-string v0, "CUSTOM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 43
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;-><init>()V

    return-object v0

    .line 45
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_10e

    :cond_15
    goto/16 :goto_b3

    :sswitch_17
    const-string/jumbo v0, "waveOffset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x8

    goto/16 :goto_b4

    :sswitch_24
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_b4

    :sswitch_2f
    const-string/jumbo v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x5

    goto/16 :goto_b4

    :sswitch_3b
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto/16 :goto_b4

    :sswitch_46
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x2

    goto :goto_b4

    :sswitch_50
    const-string/jumbo v0, "waveVariesBy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x9

    goto :goto_b4

    :sswitch_5c
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x7

    goto :goto_b4

    :sswitch_66
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x6

    goto :goto_b4

    :sswitch_70
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xd

    goto :goto_b4

    :sswitch_7b
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xc

    goto :goto_b4

    :sswitch_87
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xb

    goto :goto_b4

    :sswitch_93
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xa

    goto :goto_b4

    :sswitch_9f
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x4

    goto :goto_b4

    :sswitch_a9
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x3

    goto :goto_b4

    :goto_b3
    const/4 v0, -0x1

    :goto_b4
    packed-switch v0, :pswitch_data_148

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 73
    :pswitch_b9
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;-><init>()V

    return-object v0

    .line 71
    :pswitch_bf
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationZset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationZset;-><init>()V

    return-object v0

    .line 69
    :pswitch_c5
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationYset;-><init>()V

    return-object v0

    .line 67
    :pswitch_cb
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationXset;-><init>()V

    return-object v0

    .line 65
    :pswitch_d1
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    return-object v0

    .line 63
    :pswitch_d7
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    return-object v0

    .line 61
    :pswitch_dd
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleYset;-><init>()V

    return-object v0

    .line 59
    :pswitch_e3
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleXset;-><init>()V

    return-object v0

    .line 57
    :pswitch_e9
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;-><init>()V

    return-object v0

    .line 55
    :pswitch_ef
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationYset;-><init>()V

    return-object v0

    .line 53
    :pswitch_f5
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationXset;-><init>()V

    return-object v0

    .line 51
    :pswitch_fb
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationSet;-><init>()V

    return-object v0

    .line 49
    :pswitch_101
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ElevationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ElevationSet;-><init>()V

    return-object v0

    .line 47
    :pswitch_107
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    return-object v0

    nop

    :sswitch_data_10e
    .sparse-switch
        -0x4a771f66 -> :sswitch_a9
        -0x4a771f65 -> :sswitch_9f
        -0x490b9c39 -> :sswitch_93
        -0x490b9c38 -> :sswitch_87
        -0x490b9c37 -> :sswitch_7b
        -0x3bab3dd3 -> :sswitch_70
        -0x3621dfb2 -> :sswitch_66
        -0x3621dfb1 -> :sswitch_5c
        -0x2f893320 -> :sswitch_50
        -0x266f082 -> :sswitch_46
        -0x42d1a3 -> :sswitch_3b
        0x2382115 -> :sswitch_2f
        0x589b15e -> :sswitch_24
        0x94e04ec -> :sswitch_17
    .end sparse-switch

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_107
        :pswitch_101
        :pswitch_fb
        :pswitch_f5
        :pswitch_ef
        :pswitch_e9
        :pswitch_e3
        :pswitch_dd
        :pswitch_d7
        :pswitch_d1
        :pswitch_cb
        :pswitch_c5
        :pswitch_bf
        :pswitch_b9
    .end packed-switch
.end method


# virtual methods
.method public abstract setProperty(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "t"
        }
    .end annotation
.end method
