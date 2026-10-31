.class public abstract Landroidx/constraintlayout/core/motion/key/MotionKey;
.super Ljava/lang/Object;
.source "MotionKey.java"

# interfaces
.implements Landroidx/constraintlayout/core/motion/utils/TypedValues;


# static fields
.field public static final ALPHA:Ljava/lang/String; = "alpha"

.field public static final CUSTOM:Ljava/lang/String; = "CUSTOM"

.field public static final ELEVATION:Ljava/lang/String; = "elevation"

.field public static final ROTATION:Ljava/lang/String; = "rotationZ"

.field public static final ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final TRANSITION_PATH_ROTATE:Ljava/lang/String; = "transitionPathRotate"

.field public static final TRANSLATION_X:Ljava/lang/String; = "translationX"

.field public static final TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field public static UNSET:I = 0x0

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"


# instance fields
.field public mCustom:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomVariable;",
            ">;"
        }
    .end annotation
.end field

.field public mFramePosition:I

.field mTargetId:I

.field mTargetString:Ljava/lang/String;

.field public mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const/4 v0, -0x1

    sput v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->UNSET:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 35
    sget v0, Landroidx/constraintlayout/core/motion/key/MotionKey;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetId:I

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract addValues(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    move-result-object v0

    return-object v0
.end method

.method public copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 3
    .param p1, "src"    # Landroidx/constraintlayout/core/motion/key/MotionKey;

    .line 116
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 117
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetId:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetId:I

    .line 118
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    .line 119
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mType:I

    .line 120
    return-object p0
.end method

.method public abstract getAttributeNames(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public getFramePosition()I
    .registers 2

    .line 145
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    return v0
.end method

.method matches(Ljava/lang/String;)Z
    .registers 3
    .param p1, "constraintTag"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    if-eqz v0, :cond_e

    if-nez p1, :cond_7

    goto :goto_e

    .line 61
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 60
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public setCustomAttribute(Ljava/lang/String;IF)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # F

    .line 176
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    new-instance v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-direct {v1, p1, p2, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;IF)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;II)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # I

    .line 180
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    new-instance v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-direct {v1, p1, p2, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # Ljava/lang/String;

    .line 188
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    new-instance v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-direct {v1, p1, p2, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public setCustomAttribute(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # Z

    .line 184
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mCustom:Ljava/util/HashMap;

    new-instance v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    invoke-direct {v1, p1, p2, p3}, Landroidx/constraintlayout/core/motion/CustomVariable;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method public setFramePosition(I)V
    .registers 2
    .param p1, "pos"    # I

    .line 136
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 137
    return-void
.end method

.method public setInterpolation(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p1, "interpolation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    return-void
.end method

.method public setValue(IF)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "value"    # F

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public setValue(II)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "value"    # I

    .line 150
    packed-switch p1, :pswitch_data_a

    .line 155
    const/4 v0, 0x0

    return v0

    .line 152
    :pswitch_5
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mFramePosition:I

    .line 153
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x64
        :pswitch_5
    .end packed-switch
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 163
    packed-switch p1, :pswitch_data_a

    .line 168
    const/4 v0, 0x0

    return v0

    .line 165
    :pswitch_5
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetString:Ljava/lang/String;

    .line 166
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x65
        :pswitch_5
    .end packed-switch
.end method

.method public setValue(IZ)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "value"    # Z

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public setViewId(I)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 2
    .param p1, "id"    # I

    .line 126
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKey;->mTargetId:I

    .line 127
    return-object p0
.end method

.method toBoolean(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 103
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_14

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    return v0
.end method

.method toFloat(Ljava/lang/Object;)F
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 81
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_14

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    :goto_14
    return v0
.end method

.method toInt(Ljava/lang/Object;)I
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 92
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_14

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_14
    return v0
.end method
