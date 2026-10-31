.class Landroidx/core/graphics/BlendModeUtils;
.super Ljava/lang/Object;
.source "BlendModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/BlendModeUtils$Api29Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static obtainPorterDuffFromCompat(Landroidx/core/graphics/BlendModeCompat;)Landroid/graphics/PorterDuff$Mode;
    .registers 4
    .param p0, "blendModeCompat"    # Landroidx/core/graphics/BlendModeCompat;

    .line 112
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 113
    return-object v0

    .line 116
    :cond_4
    sget-object v1, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    invoke-virtual {p0}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_46

    .line 155
    return-object v0

    .line 153
    :pswitch_10
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 151
    :pswitch_13
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 149
    :pswitch_16
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 147
    :pswitch_19
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 145
    :pswitch_1c
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 142
    :pswitch_1f
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 140
    :pswitch_22
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 138
    :pswitch_25
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 136
    :pswitch_28
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 134
    :pswitch_2b
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 132
    :pswitch_2e
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 130
    :pswitch_31
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 128
    :pswitch_34
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 126
    :pswitch_37
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 124
    :pswitch_3a
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 122
    :pswitch_3d
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 120
    :pswitch_40
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 118
    :pswitch_43
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method
