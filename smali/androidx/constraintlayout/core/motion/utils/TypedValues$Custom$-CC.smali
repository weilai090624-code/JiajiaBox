.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom$-CC;
.super Ljava/lang/Object;
.source "TypedValues.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 652
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_6a

    :cond_8
    goto :goto_50

    :sswitch_9
    const-string v0, "integer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_51

    :sswitch_13
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_51

    :sswitch_1d
    const-string v0, "color"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_51

    :sswitch_27
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_51

    :sswitch_31
    const-string v0, "refrence"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_51

    :sswitch_3b
    const-string/jumbo v0, "string"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_51

    :sswitch_46
    const-string v0, "dimension"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_51

    :goto_50
    const/4 v0, -0x1

    :goto_51
    packed-switch v0, :pswitch_data_88

    .line 668
    return v1

    .line 666
    :pswitch_55
    const/16 v0, 0x38a

    return v0

    .line 664
    :pswitch_58
    const/16 v0, 0x389

    return v0

    .line 662
    :pswitch_5b
    const/16 v0, 0x388

    return v0

    .line 660
    :pswitch_5e
    const/16 v0, 0x387

    return v0

    .line 658
    :pswitch_61
    const/16 v0, 0x386

    return v0

    .line 656
    :pswitch_64
    const/16 v0, 0x385

    return v0

    .line 654
    :pswitch_67
    const/16 v0, 0x384

    return v0

    :sswitch_data_6a
    .sparse-switch
        -0x4144929a -> :sswitch_46
        -0x352a9fef -> :sswitch_3b
        -0x2a604a76 -> :sswitch_31
        0x3db6c28 -> :sswitch_27
        0x5a72f63 -> :sswitch_1d
        0x5d0225c -> :sswitch_13
        0x74b5813e -> :sswitch_9
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
    .end packed-switch
.end method
