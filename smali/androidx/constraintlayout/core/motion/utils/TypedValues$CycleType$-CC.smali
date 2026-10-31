.class public final synthetic Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType$-CC;
.super Ljava/lang/Object;
.source "TypedValues.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;->NAME:Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 305
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_f2

    :cond_8
    goto/16 :goto_bc

    :sswitch_a
    const-string/jumbo v0, "visibility"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_bd

    :sswitch_16
    const-string v0, "pathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    goto/16 :goto_bd

    :sswitch_22
    const-string v0, "curveFit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto/16 :goto_bd

    :sswitch_2d
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto/16 :goto_bd

    :sswitch_38
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    goto/16 :goto_bd

    :sswitch_44
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    goto/16 :goto_bd

    :sswitch_50
    const-string v0, "pivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc

    goto :goto_bd

    :sswitch_5b
    const-string v0, "pivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    goto :goto_bd

    :sswitch_66
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd

    goto :goto_bd

    :sswitch_71
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto :goto_bd

    :sswitch_7c
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_bd

    :sswitch_87
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_bd

    :sswitch_92
    const-string v0, "rotationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_bd

    :sswitch_9d
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto :goto_bd

    :sswitch_a7
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto :goto_bd

    :sswitch_b1
    const-string v0, "easing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xf

    goto :goto_bd

    :goto_bc
    const/4 v0, -0x1

    :goto_bd
    packed-switch v0, :pswitch_data_134

    .line 339
    return v1

    .line 337
    :pswitch_c1
    const/16 v0, 0x1a4

    return v0

    .line 335
    :pswitch_c4
    const/16 v0, 0x1a0

    return v0

    .line 333
    :pswitch_c7
    const/16 v0, 0x13b

    return v0

    .line 331
    :pswitch_ca
    const/16 v0, 0x13a

    return v0

    .line 329
    :pswitch_cd
    const/16 v0, 0x139

    return v0

    .line 327
    :pswitch_d0
    const/16 v0, 0x138

    return v0

    .line 325
    :pswitch_d3
    const/16 v0, 0x137

    return v0

    .line 323
    :pswitch_d6
    const/16 v0, 0x136

    return v0

    .line 321
    :pswitch_d9
    const/16 v0, 0x135

    return v0

    .line 319
    :pswitch_dc
    const/16 v0, 0x134

    return v0

    .line 317
    :pswitch_df
    const/16 v0, 0x132

    return v0

    .line 315
    :pswitch_e2
    const/16 v0, 0x131

    return v0

    .line 313
    :pswitch_e5
    const/16 v0, 0x130

    return v0

    .line 311
    :pswitch_e8
    const/16 v0, 0x193

    return v0

    .line 309
    :pswitch_eb
    const/16 v0, 0x192

    return v0

    .line 307
    :pswitch_ee
    const/16 v0, 0x191

    return v0

    nop

    :sswitch_data_f2
    .sparse-switch
        -0x4e19c2d5 -> :sswitch_b1
        -0x4a771f66 -> :sswitch_a7
        -0x4a771f65 -> :sswitch_9d
        -0x4a771f64 -> :sswitch_92
        -0x490b9c39 -> :sswitch_87
        -0x490b9c38 -> :sswitch_7c
        -0x490b9c37 -> :sswitch_71
        -0x3bab3dd3 -> :sswitch_66
        -0x3ae243aa -> :sswitch_5b
        -0x3ae243a9 -> :sswitch_50
        -0x3621dfb2 -> :sswitch_44
        -0x3621dfb1 -> :sswitch_38
        0x589b15e -> :sswitch_2d
        0x2283b8a2 -> :sswitch_22
        0x2fdfbde0 -> :sswitch_16
        0x73b66312 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_134
    .packed-switch 0x0
        :pswitch_ee
        :pswitch_eb
        :pswitch_e8
        :pswitch_e5
        :pswitch_e2
        :pswitch_df
        :pswitch_dc
        :pswitch_d9
        :pswitch_d6
        :pswitch_d3
        :pswitch_d0
        :pswitch_cd
        :pswitch_ca
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2
    .param p0, "name"    # I

    .line 343
    sparse-switch p0, :sswitch_data_c

    .line 371
    const/4 v0, -0x1

    return v0

    .line 365
    :sswitch_5
    const/4 v0, 0x4

    return v0

    .line 369
    :sswitch_7
    const/16 v0, 0x8

    return v0

    .line 347
    :sswitch_a
    const/4 v0, 0x2

    return v0

    :sswitch_data_c
    .sparse-switch
        0x64 -> :sswitch_a
        0x65 -> :sswitch_7
        0x130 -> :sswitch_5
        0x131 -> :sswitch_5
        0x132 -> :sswitch_5
        0x133 -> :sswitch_5
        0x134 -> :sswitch_5
        0x135 -> :sswitch_5
        0x136 -> :sswitch_5
        0x137 -> :sswitch_5
        0x138 -> :sswitch_5
        0x139 -> :sswitch_5
        0x13a -> :sswitch_5
        0x13b -> :sswitch_5
        0x191 -> :sswitch_a
        0x192 -> :sswitch_a
        0x193 -> :sswitch_5
        0x1a0 -> :sswitch_5
        0x1a4 -> :sswitch_7
        0x1a5 -> :sswitch_7
        0x1a7 -> :sswitch_5
        0x1a8 -> :sswitch_5
        0x1a9 -> :sswitch_5
    .end sparse-switch
.end method
