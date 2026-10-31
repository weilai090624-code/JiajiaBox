.class public Landroidx/constraintlayout/core/motion/CustomAttribute;
.super Ljava/lang/Object;
.source "CustomAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransitionLayout"


# instance fields
.field mBooleanValue:Z

.field private mColorValue:I

.field private mFloatValue:F

.field private mIntegerValue:I

.field private mMethod:Z

.field mName:Ljava/lang/String;

.field private mStringValue:Ljava/lang/String;

.field private mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/motion/CustomAttribute;Ljava/lang/Object;)V
    .registers 4
    .param p1, "source"    # Landroidx/constraintlayout/core/motion/CustomAttribute;
    .param p2, "value"    # Ljava/lang/Object;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    .line 267
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    .line 268
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    .line 269
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/CustomAttribute;->setValue(Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributeType"    # Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    .line 255
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    .line 256
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    .line 257
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;Ljava/lang/Object;Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributeType"    # Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "method"    # Z

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    .line 260
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    .line 262
    iput-boolean p4, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    .line 263
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/motion/CustomAttribute;->setValue(Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method private static clamp(I)I
    .registers 3
    .param p0, "c"    # I

    .line 300
    const/16 v0, 0xff

    .line 301
    .local v0, "N":I
    shr-int/lit8 v1, p0, 0x1f

    not-int v1, v1

    and-int/2addr p0, v1

    .line 302
    sub-int/2addr p0, v0

    .line 303
    shr-int/lit8 v1, p0, 0x1f

    and-int/2addr p0, v1

    .line 304
    add-int/2addr p0, v0

    .line 305
    return p0
.end method

.method public static hsvToRgb(FFF)I
    .registers 12
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "value"    # F

    .line 200
    const/high16 v0, 0x40c00000    # 6.0f

    mul-float v1, p0, v0

    float-to-int v1, v1

    .line 201
    .local v1, "h":I
    mul-float v0, v0, p0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    .line 202
    .local v0, "f":F
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v3, p2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p1

    mul-float v3, v3, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 203
    .local v3, "p":I
    mul-float v6, p2, v2

    mul-float v7, v0, p1

    sub-float v7, v4, v7

    mul-float v6, v6, v7

    add-float/2addr v6, v5

    float-to-int v6, v6

    .line 204
    .local v6, "q":I
    mul-float v7, p2, v2

    sub-float v8, v4, v0

    mul-float v8, v8, p1

    sub-float/2addr v4, v8

    mul-float v7, v7, v4

    add-float/2addr v7, v5

    float-to-int v4, v7

    .line 205
    .local v4, "t":I
    mul-float v2, v2, p2

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 206
    .local v2, "v":I
    const/high16 v5, -0x1000000

    packed-switch v1, :pswitch_data_68

    .line 220
    const/4 v5, 0x0

    return v5

    .line 218
    :pswitch_37
    shl-int/lit8 v7, v2, 0x10

    shl-int/lit8 v8, v3, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    or-int/2addr v5, v7

    return v5

    .line 216
    :pswitch_3f
    shl-int/lit8 v7, v4, 0x10

    shl-int/lit8 v8, v3, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    or-int/2addr v5, v7

    return v5

    .line 214
    :pswitch_47
    shl-int/lit8 v7, v3, 0x10

    shl-int/lit8 v8, v6, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    or-int/2addr v5, v7

    return v5

    .line 212
    :pswitch_4f
    shl-int/lit8 v7, v3, 0x10

    shl-int/lit8 v8, v2, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v4

    or-int/2addr v5, v7

    return v5

    .line 210
    :pswitch_57
    shl-int/lit8 v7, v6, 0x10

    shl-int/lit8 v8, v2, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v3

    or-int/2addr v5, v7

    return v5

    .line 208
    :pswitch_5f
    shl-int/lit8 v7, v2, 0x10

    shl-int/lit8 v8, v4, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v3

    or-int/2addr v5, v7

    return v5

    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_57
        :pswitch_4f
        :pswitch_47
        :pswitch_3f
        :pswitch_37
    .end packed-switch
.end method


# virtual methods
.method public diff(Landroidx/constraintlayout/core/motion/CustomAttribute;)Z
    .registers 6
    .param p1, "CustomAttribute"    # Landroidx/constraintlayout/core/motion/CustomAttribute;

    .line 231
    const/4 v0, 0x0

    if-eqz p1, :cond_4d

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    iget-object v2, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    if-eq v1, v2, :cond_a

    goto :goto_4d

    .line 234
    :cond_a
    sget-object v1, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_4e

    .line 250
    return v0

    .line 248
    :pswitch_19
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0

    .line 239
    :pswitch_23
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    return v0

    .line 242
    :pswitch_2d
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    if-ne v1, v3, :cond_34

    const/4 v0, 0x1

    :cond_34
    return v0

    .line 244
    :pswitch_35
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    if-ne v1, v3, :cond_3c

    const/4 v0, 0x1

    :cond_3c
    return v0

    .line 246
    :pswitch_3d
    iget-boolean v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    iget-boolean v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    if-ne v1, v3, :cond_44

    const/4 v0, 0x1

    :cond_44
    return v0

    .line 237
    :pswitch_45
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    if-ne v1, v3, :cond_4c

    const/4 v0, 0x1

    :cond_4c
    return v0

    .line 232
    :cond_4d
    :goto_4d
    return v0

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_45
        :pswitch_3d
        :pswitch_35
        :pswitch_2d
        :pswitch_2d
        :pswitch_45
        :pswitch_23
        :pswitch_19
    .end packed-switch
.end method

.method public getType()Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
    .registers 2

    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    return-object v0
.end method

.method public getValueToInterpolate()F
    .registers 3

    .line 120
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 135
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 133
    :pswitch_10
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    return v0

    .line 124
    :pswitch_13
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    return v0

    .line 122
    :pswitch_16
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    int-to-float v0, v0

    return v0

    .line 127
    :pswitch_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Color does not have a single color to interpolate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :pswitch_22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot interpolate String"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :pswitch_2a
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    if-eqz v0, :cond_31

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return v0

    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_2a
        :pswitch_22
        :pswitch_1a
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public getValuesToInterpolate([F)V
    .registers 15
    .param p1, "ret"    # [F

    .line 140
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_76

    goto :goto_75

    .line 167
    :pswitch_f
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    aput v0, p1, v1

    .line 168
    goto :goto_75

    .line 145
    :pswitch_14
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    aput v0, p1, v1

    .line 146
    goto :goto_75

    .line 142
    :pswitch_19
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    int-to-float v0, v0

    aput v0, p1, v1

    .line 143
    goto :goto_75

    .line 149
    :pswitch_1f
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 150
    .local v0, "a":I
    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 151
    .local v2, "r":I
    iget v3, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 152
    .local v3, "g":I
    iget v4, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    and-int/lit16 v4, v4, 0xff

    .line 153
    .local v4, "b":I
    int-to-float v5, v2

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    float-to-double v7, v5

    const-wide v9, 0x400199999999999aL    # 2.2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v5, v7

    .line 154
    .local v5, "f_r":F
    int-to-float v7, v3

    div-float/2addr v7, v6

    float-to-double v7, v7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 155
    .local v7, "f_g":F
    int-to-float v8, v4

    div-float/2addr v8, v6

    float-to-double v11, v8

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    .line 156
    .local v8, "f_b":F
    aput v5, p1, v1

    .line 157
    const/4 v1, 0x1

    aput v7, p1, v1

    .line 158
    const/4 v1, 0x2

    aput v8, p1, v1

    .line 159
    int-to-float v1, v0

    div-float/2addr v1, v6

    const/4 v6, 0x3

    aput v1, p1, v6

    .line 160
    goto :goto_75

    .line 162
    .end local v0    # "a":I
    .end local v2    # "r":I
    .end local v3    # "g":I
    .end local v4    # "b":I
    .end local v5    # "f_r":F
    .end local v7    # "f_g":F
    .end local v8    # "f_b":F
    :pswitch_62
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Color does not have a single color to interpolate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :pswitch_6a
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    if-eqz v0, :cond_71

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_72

    :cond_71
    const/4 v0, 0x0

    :goto_72
    aput v0, p1, v1

    .line 165
    nop

    .line 171
    :goto_75
    return-void

    :pswitch_data_76
    .packed-switch 0x2
        :pswitch_6a
        :pswitch_62
        :pswitch_1f
        :pswitch_1f
        :pswitch_19
        :pswitch_14
        :pswitch_f
    .end packed-switch
.end method

.method public isContinuous()Z
    .registers 3

    .line 72
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 78
    const/4 v0, 0x1

    return v0

    .line 76
    :pswitch_f
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public numberOfInterpolatedValues()I
    .registers 3

    .line 105
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 110
    const/4 v0, 0x1

    return v0

    .line 108
    :pswitch_f
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x4
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public setColorValue(I)V
    .registers 2
    .param p1, "value"    # I

    .line 87
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    .line 88
    return-void
.end method

.method public setFloatValue(F)V
    .registers 2
    .param p1, "value"    # F

    .line 83
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    .line 84
    return-void
.end method

.method public setIntValue(I)V
    .registers 2
    .param p1, "value"    # I

    .line 91
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    .line 92
    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 95
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mStringValue:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 274
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    goto :goto_46

    .line 293
    :pswitch_e
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    .line 294
    goto :goto_46

    .line 280
    :pswitch_18
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    .line 281
    goto :goto_46

    .line 284
    :pswitch_22
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    .line 285
    goto :goto_46

    .line 287
    :pswitch_2c
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mStringValue:Ljava/lang/String;

    .line 288
    goto :goto_46

    .line 290
    :pswitch_32
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    .line 291
    goto :goto_46

    .line 277
    :pswitch_3c
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    .line 278
    nop

    .line 297
    :goto_46
    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_32
        :pswitch_2c
        :pswitch_22
        :pswitch_22
        :pswitch_3c
        :pswitch_18
        :pswitch_e
    .end packed-switch
.end method

.method public setValue([F)V
    .registers 9
    .param p1, "value"    # [F

    .line 174
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_5c

    goto :goto_5b

    .line 193
    :pswitch_10
    aget v0, p1, v2

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    .line 194
    goto :goto_5b

    .line 180
    :pswitch_15
    aget v0, p1, v2

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    .line 181
    goto :goto_5b

    .line 184
    :pswitch_1a
    aget v0, p1, v2

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/motion/CustomAttribute;->hsvToRgb(FFF)I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    .line 185
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/4 v1, 0x3

    aget v1, p1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute;->clamp(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    .line 186
    goto :goto_5b

    .line 188
    :pswitch_3f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Color does not have a single color to interpolate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_47
    aget v0, p1, v2

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_51

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    :goto_52
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    .line 191
    goto :goto_5b

    .line 177
    :pswitch_55
    aget v0, p1, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    .line 178
    nop

    .line 197
    :goto_5b
    return-void

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_55
        :pswitch_47
        :pswitch_3f
        :pswitch_1a
        :pswitch_1a
        :pswitch_55
        :pswitch_15
        :pswitch_10
    .end packed-switch
.end method
