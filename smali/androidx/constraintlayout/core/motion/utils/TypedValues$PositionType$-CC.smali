.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType$-CC;
.super Ljava/lang/Object;
.source "TypedValues.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 492
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_6c

    :cond_8
    goto :goto_51

    :sswitch_9
    const-string v0, "percentY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_52

    :sswitch_13
    const-string v0, "percentX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_52

    :sswitch_1d
    const-string/jumbo v0, "sizePercent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_52

    :sswitch_28
    const-string v0, "drawPath"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_52

    :sswitch_32
    const-string v0, "percentHeight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_52

    :sswitch_3c
    const-string v0, "percentWidth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_52

    :sswitch_46
    const-string/jumbo v0, "transitionEasing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_52

    :goto_51
    const/4 v0, -0x1

    :goto_52
    packed-switch v0, :pswitch_data_8a

    .line 508
    return v1

    .line 506
    :pswitch_56
    const/16 v0, 0x1fb

    return v0

    .line 504
    :pswitch_59
    const/16 v0, 0x1fa

    return v0

    .line 502
    :pswitch_5c
    const/16 v0, 0x1f9

    return v0

    .line 500
    :pswitch_5f
    const/16 v0, 0x1f8

    return v0

    .line 498
    :pswitch_62
    const/16 v0, 0x1f7

    return v0

    .line 496
    :pswitch_65
    const/16 v0, 0x1f6

    return v0

    .line 494
    :pswitch_68
    const/16 v0, 0x1f5

    return v0

    nop

    :sswitch_data_6c
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_46
        -0x4330437f -> :sswitch_3c
        -0x3ca72634 -> :sswitch_32
        -0x314b3c77 -> :sswitch_28
        -0xbefb6fc -> :sswitch_1d
        0x198424b3 -> :sswitch_13
        0x198424b4 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2
    .param p0, "name"    # I

    .line 512
    sparse-switch p0, :sswitch_data_c

    .line 527
    const/4 v0, -0x1

    return v0

    .line 521
    :sswitch_5
    const/4 v0, 0x4

    return v0

    .line 525
    :sswitch_7
    const/16 v0, 0x8

    return v0

    .line 515
    :sswitch_a
    const/4 v0, 0x2

    return v0

    :sswitch_data_c
    .sparse-switch
        0x64 -> :sswitch_a
        0x65 -> :sswitch_7
        0x1f5 -> :sswitch_7
        0x1f6 -> :sswitch_7
        0x1f7 -> :sswitch_5
        0x1f8 -> :sswitch_5
        0x1f9 -> :sswitch_5
        0x1fa -> :sswitch_5
        0x1fb -> :sswitch_5
        0x1fc -> :sswitch_a
    .end sparse-switch
.end method
