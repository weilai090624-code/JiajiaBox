.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$TriggerType$-CC;
.super Ljava/lang/Object;
.source "TypedValues.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$TriggerType;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 424
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_ba

    :cond_8
    goto/16 :goto_90

    :sswitch_a
    const-string/jumbo v0, "triggerReceiver"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    goto/16 :goto_91

    :sswitch_17
    const-string v0, "postLayout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto/16 :goto_91

    :sswitch_22
    const-string/jumbo v0, "viewTransitionOnCross"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_91

    :sswitch_2d
    const-string/jumbo v0, "triggerSlack"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_91

    :sswitch_38
    const-string v0, "CROSS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    goto :goto_91

    :sswitch_43
    const-string/jumbo v0, "viewTransitionOnNegativeCross"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_91

    :sswitch_4e
    const-string/jumbo v0, "triggerCollisionView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_91

    :sswitch_59
    const-string v0, "negativeCross"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    goto :goto_91

    :sswitch_64
    const-string/jumbo v0, "triggerID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto :goto_91

    :sswitch_6f
    const-string/jumbo v0, "triggerCollisionId"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_91

    :sswitch_7a
    const-string/jumbo v0, "viewTransitionOnPositiveCross"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_91

    :sswitch_85
    const-string v0, "positiveCross"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_91

    :goto_90
    const/4 v0, -0x1

    :goto_91
    packed-switch v0, :pswitch_data_ec

    .line 450
    return v1

    .line 448
    :pswitch_95
    const/16 v0, 0x138

    return v0

    .line 446
    :pswitch_98
    const/16 v0, 0x137

    return v0

    .line 444
    :pswitch_9b
    const/16 v0, 0x136

    return v0

    .line 442
    :pswitch_9e
    const/16 v0, 0x135

    return v0

    .line 440
    :pswitch_a1
    const/16 v0, 0x134

    return v0

    .line 438
    :pswitch_a4
    const/16 v0, 0x133

    return v0

    .line 436
    :pswitch_a7
    const/16 v0, 0x132

    return v0

    .line 434
    :pswitch_aa
    const/16 v0, 0x131

    return v0

    .line 432
    :pswitch_ad
    const/16 v0, 0x130

    return v0

    .line 430
    :pswitch_b0
    const/16 v0, 0x12f

    return v0

    .line 428
    :pswitch_b3
    const/16 v0, 0x12e

    return v0

    .line 426
    :pswitch_b6
    const/16 v0, 0x12d

    return v0

    nop

    :sswitch_data_ba
    .sparse-switch
        -0x5f0e9e39 -> :sswitch_85
        -0x399a6b12 -> :sswitch_7a
        -0x2ee3a4eb -> :sswitch_6f
        -0x26ab2f2d -> :sswitch_64
        -0x26090af5 -> :sswitch_59
        -0x4880de1 -> :sswitch_4e
        -0x94d7ce -> :sswitch_43
        0x3d6a020 -> :sswitch_38
        0x15b9acb8 -> :sswitch_2d
        0x4d99e267 -> :sswitch_22
        0x538787ea -> :sswitch_17
        0x5b846bc7 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
    .end packed-switch
.end method
