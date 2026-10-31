.class public Landroidx/constraintlayout/core/motion/CustomVariable;
.super Ljava/lang/Object;
.source "CustomVariable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransitionLayout"


# instance fields
.field mBooleanValue:Z

.field private mFloatValue:F

.field private mIntegerValue:I

.field mName:Ljava/lang/String;

.field private mStringValue:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/motion/CustomVariable;)V
    .registers 3
    .param p1, "c"    # Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    .line 28
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    .line 38
    iget v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    .line 39
    iget v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    .line 40
    iget v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    .line 41
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    .line 42
    iget-boolean v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/motion/CustomVariable;Ljava/lang/Object;)V
    .registers 4
    .param p1, "source"    # Landroidx/constraintlayout/core/motion/CustomVariable;
    .param p2, "value"    # Ljava/lang/Object;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    .line 28
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    .line 317
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    .line 318
    iget v0, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    .line 319
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/CustomVariable;->setValue(Ljava/lang/Object;)V

    .line 321
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributeType"    # I

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    .line 28
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    .line 306
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    .line 307
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    .line 308
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IF)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # F

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    .line 28
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    .line 63
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    .line 64
    iput p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    .line 28
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    .line 53
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    .line 54
    const/16 v0, 0x385

    if-ne p2, v0, :cond_1a

    .line 55
    int-to-float v0, p3

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    goto :goto_1c

    .line 57
    :cond_1a
    iput p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    .line 59
    :goto_1c
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributeType"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    .line 28
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    .line 311
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    .line 312
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    .line 313
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;->setValue(Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    .line 28
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    .line 47
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    .line 48
    iput-object p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # Z

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    .line 28
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    .line 69
    iput p2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    .line 70
    iput-boolean p3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    .line 71
    return-void
.end method

.method private static clamp(I)I
    .registers 3
    .param p0, "c"    # I

    .line 348
    const/16 v0, 0xff

    .line 349
    .local v0, "N":I
    shr-int/lit8 v1, p0, 0x1f

    not-int v1, v1

    and-int/2addr p0, v1

    .line 350
    sub-int/2addr p0, v0

    .line 351
    shr-int/lit8 v1, p0, 0x1f

    and-int/2addr p0, v1

    .line 352
    add-int/2addr p0, v0

    .line 353
    return p0
.end method

.method public static colorString(I)Ljava/lang/String;
    .registers 4
    .param p0, "v"    # I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "00000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hsvToRgb(FFF)I
    .registers 12
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "value"    # F

    .line 253
    const/high16 v0, 0x40c00000    # 6.0f

    mul-float v1, p0, v0

    float-to-int v1, v1

    .line 254
    .local v1, "h":I
    mul-float v0, v0, p0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    .line 255
    .local v0, "f":F
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v3, p2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p1

    mul-float v3, v3, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 256
    .local v3, "p":I
    mul-float v6, p2, v2

    mul-float v7, v0, p1

    sub-float v7, v4, v7

    mul-float v6, v6, v7

    add-float/2addr v6, v5

    float-to-int v6, v6

    .line 257
    .local v6, "q":I
    mul-float v7, p2, v2

    sub-float v8, v4, v0

    mul-float v8, v8, p1

    sub-float/2addr v4, v8

    mul-float v7, v7, v4

    add-float/2addr v7, v5

    float-to-int v4, v7

    .line 258
    .local v4, "t":I
    mul-float v2, v2, p2

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 259
    .local v2, "v":I
    const/high16 v5, -0x1000000

    packed-switch v1, :pswitch_data_68

    .line 274
    const/4 v5, 0x0

    return v5

    .line 271
    :pswitch_37
    shl-int/lit8 v7, v2, 0x10

    shl-int/lit8 v8, v3, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v6

    or-int/2addr v5, v7

    return v5

    .line 269
    :pswitch_3f
    shl-int/lit8 v7, v4, 0x10

    shl-int/lit8 v8, v3, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    or-int/2addr v5, v7

    return v5

    .line 267
    :pswitch_47
    shl-int/lit8 v7, v3, 0x10

    shl-int/lit8 v8, v6, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    or-int/2addr v5, v7

    return v5

    .line 265
    :pswitch_4f
    shl-int/lit8 v7, v3, 0x10

    shl-int/lit8 v8, v2, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v4

    or-int/2addr v5, v7

    return v5

    .line 263
    :pswitch_57
    shl-int/lit8 v7, v6, 0x10

    shl-int/lit8 v8, v2, 0x8

    add-int/2addr v7, v8

    add-int/2addr v7, v3

    or-int/2addr v5, v7

    return v5

    .line 261
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

.method public static rgbaTocColor(FFFF)I
    .registers 10
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .line 393
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p0, v0

    float-to-int v1, v1

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v1

    .line 394
    .local v1, "ir":I
    mul-float v2, p1, v0

    float-to-int v2, v2

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v2

    .line 395
    .local v2, "ig":I
    mul-float v3, p2, v0

    float-to-int v3, v3

    invoke-static {v3}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v3

    .line 396
    .local v3, "ib":I
    mul-float v0, v0, p3

    float-to-int v0, v0

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v0

    .line 397
    .local v0, "ia":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    .line 398
    .local v4, "color":I
    return v4
.end method


# virtual methods
.method public applyToWidget(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 5
    .param p1, "view"    # Landroidx/constraintlayout/core/motion/MotionWidget;

    .line 402
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v0, :pswitch_data_30

    goto :goto_2e

    .line 412
    :pswitch_6
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    invoke-virtual {p1, v0, v1, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;IZ)V

    .line 413
    goto :goto_2e

    .line 409
    :pswitch_10
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V

    .line 410
    goto :goto_2e

    .line 416
    :pswitch_1a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    invoke-virtual {p1, v0, v1, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;IF)V

    goto :goto_2e

    .line 406
    :pswitch_24
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    invoke-virtual {p1, v0, v1, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;II)V

    .line 407
    nop

    .line 419
    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x384
        :pswitch_24
        :pswitch_1a
        :pswitch_24
        :pswitch_10
        :pswitch_6
        :pswitch_1a
        :pswitch_24
    .end packed-switch
.end method

.method public copy()Landroidx/constraintlayout/core/motion/CustomVariable;
    .registers 2

    .line 33
    new-instance v0, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Landroidx/constraintlayout/core/motion/CustomVariable;)V

    return-object v0
.end method

.method public diff(Landroidx/constraintlayout/core/motion/CustomVariable;)Z
    .registers 6
    .param p1, "CustomAttribute"    # Landroidx/constraintlayout/core/motion/CustomVariable;

    .line 284
    const/4 v0, 0x0

    if-eqz p1, :cond_45

    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    iget v2, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    if-eq v1, v2, :cond_a

    goto :goto_45

    .line 287
    :cond_a
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_46

    .line 302
    return v0

    .line 300
    :pswitch_11
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0

    .line 298
    :pswitch_1b
    iget-boolean v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    iget-boolean v3, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    if-ne v1, v3, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0

    .line 296
    :pswitch_23
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    if-ne v1, v3, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    return v0

    .line 294
    :pswitch_2b
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    if-ne v1, v3, :cond_32

    const/4 v0, 0x1

    :cond_32
    return v0

    .line 292
    :pswitch_33
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_3c

    const/4 v0, 0x1

    :cond_3c
    return v0

    .line 290
    :pswitch_3d
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    if-ne v1, v3, :cond_44

    const/4 v0, 0x1

    :cond_44
    return v0

    .line 285
    :cond_45
    :goto_45
    return v0

    :pswitch_data_46
    .packed-switch 0x384
        :pswitch_3d
        :pswitch_33
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_11
        :pswitch_3d
    .end packed-switch
.end method

.method public getBooleanValue()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    return v0
.end method

.method public getColorValue()I
    .registers 2

    .line 111
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    return v0
.end method

.method public getFloatValue()F
    .registers 2

    .line 107
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    return v0
.end method

.method public getIntegerValue()I
    .registers 2

    .line 115
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    return v0
.end method

.method public getInterpolatedColor([F)I
    .registers 9
    .param p1, "value"    # [F

    .line 357
    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-double v0, v0

    const-wide v2, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v0

    .line 358
    .local v0, "r":I
    const/4 v4, 0x1

    aget v4, p1, v4

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v4, v4

    invoke-static {v4}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v4

    .line 359
    .local v4, "g":I
    const/4 v5, 0x2

    aget v5, p1, v5

    float-to-double v5, v5

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v2

    .line 360
    .local v2, "b":I
    const/4 v3, 0x3

    aget v3, p1, v3

    mul-float v3, v3, v1

    float-to-int v1, v3

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v1

    .line 361
    .local v1, "a":I
    shl-int/lit8 v3, v1, 0x18

    shl-int/lit8 v5, v0, 0x10

    or-int/2addr v3, v5

    shl-int/lit8 v5, v4, 0x8

    or-int/2addr v3, v5

    or-int/2addr v3, v2

    .line 362
    .local v3, "color":I
    return v3
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 422
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 99
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    return v0
.end method

.method public getValueToInterpolate()F
    .registers 3

    .line 175
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v0, :pswitch_data_2c

    .line 189
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 187
    :pswitch_8
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    return v0

    .line 185
    :pswitch_b
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    if-eqz v0, :cond_12

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    .line 183
    :pswitch_14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot interpolate String"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :pswitch_1c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Color does not have a single color to interpolate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :pswitch_24
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    return v0

    .line 177
    :pswitch_27
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    int-to-float v0, v0

    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x384
        :pswitch_27
        :pswitch_24
        :pswitch_1c
        :pswitch_14
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public getValuesToInterpolate([F)V
    .registers 15
    .param p1, "ret"    # [F

    .line 193
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_6e

    goto :goto_6d

    .line 219
    :pswitch_7
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    aput v0, p1, v1

    goto :goto_6d

    .line 216
    :pswitch_c
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    if-eqz v0, :cond_13

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    aput v0, p1, v1

    .line 217
    goto :goto_6d

    .line 214
    :pswitch_17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot interpolate String"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :pswitch_1f
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 202
    .local v0, "a":I
    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 203
    .local v2, "r":I
    iget v3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 204
    .local v3, "g":I
    iget v4, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    and-int/lit16 v4, v4, 0xff

    .line 205
    .local v4, "b":I
    int-to-float v5, v2

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    float-to-double v7, v5

    const-wide v9, 0x400199999999999aL    # 2.2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v5, v7

    .line 206
    .local v5, "f_r":F
    int-to-float v7, v3

    div-float/2addr v7, v6

    float-to-double v7, v7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 207
    .local v7, "f_g":F
    int-to-float v8, v4

    div-float/2addr v8, v6

    float-to-double v11, v8

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    .line 208
    .local v8, "f_b":F
    aput v5, p1, v1

    .line 209
    const/4 v1, 0x1

    aput v7, p1, v1

    .line 210
    const/4 v1, 0x2

    aput v8, p1, v1

    .line 211
    int-to-float v1, v0

    div-float/2addr v1, v6

    const/4 v6, 0x3

    aput v1, p1, v6

    .line 212
    goto :goto_6d

    .line 198
    .end local v0    # "a":I
    .end local v2    # "r":I
    .end local v3    # "g":I
    .end local v4    # "b":I
    .end local v5    # "f_r":F
    .end local v7    # "f_g":F
    .end local v8    # "f_b":F
    :pswitch_62
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    aput v0, p1, v1

    .line 199
    goto :goto_6d

    .line 195
    :pswitch_67
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    int-to-float v0, v0

    aput v0, p1, v1

    .line 196
    nop

    .line 222
    :goto_6d
    return-void

    :pswitch_data_6e
    .packed-switch 0x384
        :pswitch_67
        :pswitch_62
        :pswitch_1f
        :pswitch_17
        :pswitch_c
        :pswitch_7
    .end packed-switch
.end method

.method public isContinuous()Z
    .registers 2

    .line 128
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v0, :pswitch_data_a

    .line 134
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 132
    :pswitch_7
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x387
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public numberOfInterpolatedValues()I
    .registers 2

    .line 161
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v0, :pswitch_data_a

    .line 165
    const/4 v0, 0x1

    return v0

    .line 163
    :pswitch_7
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x386
        :pswitch_7
    .end packed-switch
.end method

.method public setBooleanValue(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 143
    iput-boolean p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    .line 144
    return-void
.end method

.method public setFloatValue(F)V
    .registers 2
    .param p1, "value"    # F

    .line 139
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    .line 140
    return-void
.end method

.method public setIntValue(I)V
    .registers 2
    .param p1, "value"    # I

    .line 147
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    .line 148
    return-void
.end method

.method public setInterpolatedValue(Landroidx/constraintlayout/core/motion/MotionWidget;[F)V
    .registers 11
    .param p1, "view"    # Landroidx/constraintlayout/core/motion/MotionWidget;
    .param p2, "value"    # [F

    .line 367
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_9e

    goto/16 :goto_9d

    .line 383
    :pswitch_9
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget v3, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    aget v4, p2, v2

    const/high16 v5, 0x3f000000    # 0.5f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {p1, v0, v3, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;IZ)V

    .line 384
    goto/16 :goto_9d

    .line 381
    :pswitch_1c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to interpolate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :pswitch_38
    aget v0, p2, v2

    float-to-double v2, v0

    const-wide v4, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-static {v0}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v0

    .line 373
    .local v0, "r":I
    aget v1, p2, v1

    float-to-double v6, v1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v1

    .line 374
    .local v1, "g":I
    const/4 v3, 0x2

    aget v3, p2, v3

    float-to-double v6, v3

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v2

    float-to-int v3, v3

    invoke-static {v3}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v3

    .line 375
    .local v3, "b":I
    const/4 v4, 0x3

    aget v4, p2, v4

    mul-float v4, v4, v2

    float-to-int v2, v4

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->clamp(I)I

    move-result v2

    .line 376
    .local v2, "a":I
    shl-int/lit8 v4, v2, 0x18

    shl-int/lit8 v5, v0, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    .line 377
    .local v4, "color":I
    iget-object v5, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget v6, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    invoke-virtual {p1, v5, v6, v4}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;II)V

    .line 378
    goto :goto_9d

    .line 387
    .end local v0    # "r":I
    .end local v1    # "g":I
    .end local v2    # "a":I
    .end local v3    # "b":I
    .end local v4    # "color":I
    :pswitch_88
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    aget v2, p2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;IF)V

    goto :goto_9d

    .line 369
    :pswitch_92
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    aget v2, p2, v2

    float-to-int v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/constraintlayout/core/motion/MotionWidget;->setCustomAttribute(Ljava/lang/String;II)V

    .line 370
    nop

    .line 390
    :goto_9d
    return-void

    :pswitch_data_9e
    .packed-switch 0x384
        :pswitch_92
        :pswitch_88
        :pswitch_38
        :pswitch_1c
        :pswitch_9
        :pswitch_88
        :pswitch_1c
    .end packed-switch
.end method

.method public setStringValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 151
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 324
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v0, :pswitch_data_40

    goto :goto_3e

    .line 342
    :pswitch_6
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    goto :goto_3e

    .line 339
    :pswitch_10
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    .line 340
    goto :goto_3e

    .line 336
    :pswitch_1a
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    .line 337
    goto :goto_3e

    .line 333
    :pswitch_20
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    .line 334
    goto :goto_3e

    .line 330
    :pswitch_2a
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    .line 331
    goto :goto_3e

    .line 327
    :pswitch_34
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    .line 328
    nop

    .line 345
    :goto_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x384
        :pswitch_34
        :pswitch_2a
        :pswitch_20
        :pswitch_1a
        :pswitch_10
        :pswitch_6
        :pswitch_34
    .end packed-switch
.end method

.method public setValue([F)V
    .registers 12
    .param p1, "value"    # [F

    .line 225
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    const/4 v1, 0x1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_74

    goto :goto_73

    .line 247
    :pswitch_a
    aget v0, p1, v4

    float-to-double v5, v0

    cmpl-double v0, v5, v2

    if-lez v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    goto :goto_73

    .line 245
    :pswitch_16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot interpolate String"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :pswitch_1e
    aget v0, p1, v4

    .line 236
    .local v0, "f_r":F
    aget v1, p1, v1

    .line 237
    .local v1, "f_g":F
    const/4 v4, 0x2

    aget v4, p1, v4

    .line 238
    .local v4, "f_b":F
    float-to-double v5, v0

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 239
    .local v5, "r":I
    float-to-double v7, v1

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v7, v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    .line 240
    .local v7, "g":I
    float-to-double v8, v4

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 241
    .local v2, "b":I
    const/4 v3, 0x3

    aget v3, p1, v3

    mul-float v3, v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 242
    .local v3, "a":I
    shl-int/lit8 v6, v3, 0x18

    shl-int/lit8 v8, v5, 0x10

    or-int/2addr v6, v8

    shl-int/lit8 v8, v7, 0x8

    or-int/2addr v6, v8

    or-int/2addr v6, v2

    iput v6, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    .line 243
    goto :goto_73

    .line 232
    .end local v0    # "f_r":F
    .end local v1    # "f_g":F
    .end local v2    # "b":I
    .end local v3    # "a":I
    .end local v4    # "f_b":F
    .end local v5    # "r":I
    .end local v7    # "g":I
    :pswitch_68
    aget v0, p1, v4

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    .line 233
    goto :goto_73

    .line 228
    :pswitch_6d
    aget v0, p1, v4

    float-to-int v0, v0

    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    .line 229
    nop

    .line 250
    :goto_73
    return-void

    :pswitch_data_74
    .packed-switch 0x384
        :pswitch_6d
        :pswitch_68
        :pswitch_1e
        :pswitch_16
        :pswitch_a
        :pswitch_68
        :pswitch_6d
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mType:I

    packed-switch v1, :pswitch_data_ae

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "????"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 93
    :pswitch_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 91
    :pswitch_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mBooleanValue:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 89
    :pswitch_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mStringValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 87
    :pswitch_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    invoke-static {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->colorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 85
    :pswitch_86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mFloatValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 83
    :pswitch_9a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/core/motion/CustomVariable;->mIntegerValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_ae
    .packed-switch 0x384
        :pswitch_9a
        :pswitch_86
        :pswitch_6e
        :pswitch_5a
        :pswitch_42
        :pswitch_2e
    .end packed-switch
.end method
