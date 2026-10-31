.class public abstract Landroidx/constraintlayout/motion/utils/ViewSpline;
.super Landroidx/constraintlayout/core/motion/utils/SplineSet;
.source "ViewSpline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewSpline"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;-><init>()V

    return-void
.end method

.method public static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewSpline;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "attrList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;"
        }
    .end annotation

    .line 36
    .local p1, "attrList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/widget/ConstraintAttribute;>;"
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public static makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewSpline;
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

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_126

    :cond_7
    goto/16 :goto_c0

    :sswitch_9
    const-string/jumbo v0, "waveOffset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto/16 :goto_c1

    :sswitch_16
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_c1

    :sswitch_21
    const-string/jumbo v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto/16 :goto_c1

    :sswitch_2d
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_c1

    :sswitch_38
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto/16 :goto_c1

    :sswitch_43
    const-string/jumbo v0, "transformPivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto/16 :goto_c1

    :sswitch_4f
    const-string/jumbo v0, "transformPivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto/16 :goto_c1

    :sswitch_5b
    const-string/jumbo v0, "waveVariesBy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_c1

    :sswitch_67
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto :goto_c1

    :sswitch_72
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_c1

    :sswitch_7d
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto :goto_c1

    :sswitch_88
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto :goto_c1

    :sswitch_94
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_c1

    :sswitch_a0
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto :goto_c1

    :sswitch_ac
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_c1

    :sswitch_b6
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_c1

    :goto_c0
    const/4 v0, -0x1

    :goto_c1
    packed-switch v0, :pswitch_data_168

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 72
    :pswitch_c6
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;-><init>()V

    return-object v0

    .line 70
    :pswitch_cc
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;-><init>()V

    return-object v0

    .line 68
    :pswitch_d2
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;-><init>()V

    return-object v0

    .line 66
    :pswitch_d8
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;-><init>()V

    return-object v0

    .line 64
    :pswitch_de
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    return-object v0

    .line 62
    :pswitch_e4
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    return-object v0

    .line 60
    :pswitch_ea
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;-><init>()V

    return-object v0

    .line 58
    :pswitch_f0
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;-><init>()V

    return-object v0

    .line 56
    :pswitch_f6
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;-><init>()V

    return-object v0

    .line 54
    :pswitch_fc
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;-><init>()V

    return-object v0

    .line 52
    :pswitch_102
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;-><init>()V

    return-object v0

    .line 50
    :pswitch_108
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;-><init>()V

    return-object v0

    .line 48
    :pswitch_10e
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;-><init>()V

    return-object v0

    .line 46
    :pswitch_114
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;-><init>()V

    return-object v0

    .line 44
    :pswitch_11a
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;-><init>()V

    return-object v0

    .line 42
    :pswitch_120
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    return-object v0

    :sswitch_data_126
    .sparse-switch
        -0x4a771f66 -> :sswitch_b6
        -0x4a771f65 -> :sswitch_ac
        -0x490b9c39 -> :sswitch_a0
        -0x490b9c38 -> :sswitch_94
        -0x490b9c37 -> :sswitch_88
        -0x3bab3dd3 -> :sswitch_7d
        -0x3621dfb2 -> :sswitch_72
        -0x3621dfb1 -> :sswitch_67
        -0x2f893320 -> :sswitch_5b
        -0x2d5a2d1e -> :sswitch_4f
        -0x2d5a2d1d -> :sswitch_43
        -0x266f082 -> :sswitch_38
        -0x42d1a3 -> :sswitch_2d
        0x2382115 -> :sswitch_21
        0x589b15e -> :sswitch_16
        0x94e04ec -> :sswitch_9
    .end sparse-switch

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_120
        :pswitch_11a
        :pswitch_114
        :pswitch_10e
        :pswitch_108
        :pswitch_102
        :pswitch_fc
        :pswitch_f6
        :pswitch_f0
        :pswitch_ea
        :pswitch_e4
        :pswitch_de
        :pswitch_d8
        :pswitch_d2
        :pswitch_cc
        :pswitch_c6
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
