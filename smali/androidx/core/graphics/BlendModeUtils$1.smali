.class synthetic Landroidx/core/graphics/BlendModeUtils$1;
.super Ljava/lang/Object;
.source "BlendModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/BlendModeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$core$graphics$BlendModeCompat:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 45
    invoke-static {}, Landroidx/core/graphics/BlendModeCompat;->values()[Landroidx/core/graphics/BlendModeCompat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    :try_start_9
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->CLEAR:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SRC:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->DST:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SRC_OVER:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    :try_start_3d
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->DST_OVER:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    :try_start_4a
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SRC_IN:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v0

    :goto_57
    :try_start_57
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->DST_IN:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_62} :catch_63

    goto :goto_64

    :catch_63
    move-exception v0

    :goto_64
    :try_start_64
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SRC_OUT:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    move-exception v0

    :goto_72
    :try_start_72
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->DST_OUT:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7e} :catch_7f

    goto :goto_80

    :catch_7f
    move-exception v0

    :goto_80
    :try_start_80
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8c} :catch_8d

    goto :goto_8e

    :catch_8d
    move-exception v0

    :goto_8e
    :try_start_8e
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->DST_ATOP:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_9a} :catch_9b

    goto :goto_9c

    :catch_9b
    move-exception v0

    :goto_9c
    :try_start_9c
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->XOR:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a9

    goto :goto_aa

    :catch_a9
    move-exception v0

    :goto_aa
    :try_start_aa
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->PLUS:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_b7

    goto :goto_b8

    :catch_b7
    move-exception v0

    :goto_b8
    :try_start_b8
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->MODULATE:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_c4} :catch_c5

    goto :goto_c6

    :catch_c5
    move-exception v0

    :goto_c6
    :try_start_c6
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SCREEN:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_d2} :catch_d3

    goto :goto_d4

    :catch_d3
    move-exception v0

    :goto_d4
    :try_start_d4
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->OVERLAY:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_e0} :catch_e1

    goto :goto_e2

    :catch_e1
    move-exception v0

    :goto_e2
    :try_start_e2
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->DARKEN:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e2 .. :try_end_ee} :catch_ef

    goto :goto_f0

    :catch_ef
    move-exception v0

    :goto_f0
    :try_start_f0
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fc} :catch_fd

    goto :goto_fe

    :catch_fd
    move-exception v0

    :goto_fe
    :try_start_fe
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->COLOR_DODGE:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_10a} :catch_10b

    goto :goto_10c

    :catch_10b
    move-exception v0

    :goto_10c
    :try_start_10c
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->COLOR_BURN:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_118
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10c .. :try_end_118} :catch_119

    goto :goto_11a

    :catch_119
    move-exception v0

    :goto_11a
    :try_start_11a
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->HARD_LIGHT:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_126
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11a .. :try_end_126} :catch_127

    goto :goto_128

    :catch_127
    move-exception v0

    :goto_128
    :try_start_128
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SOFT_LIGHT:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_134
    .catch Ljava/lang/NoSuchFieldError; {:try_start_128 .. :try_end_134} :catch_135

    goto :goto_136

    :catch_135
    move-exception v0

    :goto_136
    :try_start_136
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->DIFFERENCE:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_142
    .catch Ljava/lang/NoSuchFieldError; {:try_start_136 .. :try_end_142} :catch_143

    goto :goto_144

    :catch_143
    move-exception v0

    :goto_144
    :try_start_144
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->EXCLUSION:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_144 .. :try_end_150} :catch_151

    goto :goto_152

    :catch_151
    move-exception v0

    :goto_152
    :try_start_152
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->MULTIPLY:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_15e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_152 .. :try_end_15e} :catch_15f

    goto :goto_160

    :catch_15f
    move-exception v0

    :goto_160
    :try_start_160
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->HUE:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_16c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_160 .. :try_end_16c} :catch_16d

    goto :goto_16e

    :catch_16d
    move-exception v0

    :goto_16e
    :try_start_16e
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SATURATION:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_17a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16e .. :try_end_17a} :catch_17b

    goto :goto_17c

    :catch_17b
    move-exception v0

    :goto_17c
    :try_start_17c
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->COLOR:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_188
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17c .. :try_end_188} :catch_189

    goto :goto_18a

    :catch_189
    move-exception v0

    :goto_18a
    :try_start_18a
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->LUMINOSITY:Landroidx/core/graphics/BlendModeCompat;

    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_196
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18a .. :try_end_196} :catch_197

    goto :goto_198

    :catch_197
    move-exception v0

    :goto_198
    return-void
.end method
