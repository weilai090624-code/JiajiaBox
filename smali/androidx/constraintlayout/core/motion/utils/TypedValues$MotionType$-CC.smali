.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionType$-CC;
.super Ljava/lang/Object;
.source "TypedValues.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionType;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 586
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_c0

    :cond_8
    goto/16 :goto_94

    :sswitch_a
    const-string v0, "PathMotionArc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto/16 :goto_95

    :sswitch_15
    const-string v0, "AnimateRelativeTo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto/16 :goto_95

    :sswitch_20
    const-string v0, "TransitionEasing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto/16 :goto_95

    :sswitch_2b
    const-string v0, "QuantizeInterpolatorID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc

    goto :goto_95

    :sswitch_36
    const-string v0, "QuantizeInterpolatorType"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    goto :goto_95

    :sswitch_41
    const-string v0, "PolarRelativeTo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    goto :goto_95

    :sswitch_4c
    const-string v0, "Stagger"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_95

    :sswitch_56
    const-string v0, "DrawPath"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_95

    :sswitch_61
    const-string v0, "QuantizeInterpolator"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_95

    :sswitch_6b
    const-string v0, "PathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_95

    :sswitch_75
    const-string v0, "QuantizeMotionSteps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    goto :goto_95

    :sswitch_80
    const-string v0, "QuantizeMotionPhase"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_95

    :sswitch_8a
    const-string v0, "AnimateCircleAngleTo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_95

    :goto_94
    const/4 v0, -0x1

    :goto_95
    packed-switch v0, :pswitch_data_f6

    .line 614
    return v1

    .line 612
    :pswitch_99
    const/16 v0, 0x264

    return v0

    .line 610
    :pswitch_9c
    const/16 v0, 0x263

    return v0

    .line 608
    :pswitch_9f
    const/16 v0, 0x262

    return v0

    .line 606
    :pswitch_a2
    const/16 v0, 0x261

    return v0

    .line 604
    :pswitch_a5
    const/16 v0, 0x260

    return v0

    .line 602
    :pswitch_a8
    const/16 v0, 0x25f

    return v0

    .line 600
    :pswitch_ab
    const/16 v0, 0x25e

    return v0

    .line 598
    :pswitch_ae
    const/16 v0, 0x25d

    return v0

    .line 596
    :pswitch_b1
    const/16 v0, 0x25c

    return v0

    .line 594
    :pswitch_b4
    const/16 v0, 0x25b

    return v0

    .line 592
    :pswitch_b7
    const/16 v0, 0x25a

    return v0

    .line 590
    :pswitch_ba
    const/16 v0, 0x259

    return v0

    .line 588
    :pswitch_bd
    const/16 v0, 0x258

    return v0

    :sswitch_data_c0
    .sparse-switch
        -0x7933ed83 -> :sswitch_8a
        -0x5b54b2ac -> :sswitch_80
        -0x5b24e900 -> :sswitch_75
        -0x594e6600 -> :sswitch_6b
        -0x3d700b48 -> :sswitch_61
        -0x2d70d857 -> :sswitch_56
        -0xde15873 -> :sswitch_4c
        0x43dc0025 -> :sswitch_41
        0x5bbedc12 -> :sswitch_36
        0x5e65afd3 -> :sswitch_2b
        0x61b6c700 -> :sswitch_20
        0x714d6c08 -> :sswitch_15
        0x7dbf63f7 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
    .end packed-switch
.end method
