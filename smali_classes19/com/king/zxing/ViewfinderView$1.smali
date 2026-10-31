.class synthetic Lcom/king/zxing/ViewfinderView$1;
.super Ljava/lang/Object;
.source "ViewfinderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/king/zxing/ViewfinderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$king$zxing$ViewfinderView$FrameGravity:[I

.field static final synthetic $SwitchMap$com$king$zxing$ViewfinderView$LaserStyle:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 453
    invoke-static {}, Lcom/king/zxing/ViewfinderView$LaserStyle;->values()[Lcom/king/zxing/ViewfinderView$LaserStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$LaserStyle:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$LaserStyle:[I

    sget-object v2, Lcom/king/zxing/ViewfinderView$LaserStyle;->LINE:Lcom/king/zxing/ViewfinderView$LaserStyle;

    invoke-virtual {v2}, Lcom/king/zxing/ViewfinderView$LaserStyle;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$LaserStyle:[I

    sget-object v3, Lcom/king/zxing/ViewfinderView$LaserStyle;->GRID:Lcom/king/zxing/ViewfinderView$LaserStyle;

    invoke-virtual {v3}, Lcom/king/zxing/ViewfinderView$LaserStyle;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    .line 356
    :goto_23
    invoke-static {}, Lcom/king/zxing/ViewfinderView$FrameGravity;->values()[Lcom/king/zxing/ViewfinderView$FrameGravity;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$FrameGravity:[I

    :try_start_2c
    sget-object v2, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$FrameGravity:[I

    sget-object v3, Lcom/king/zxing/ViewfinderView$FrameGravity;->LEFT:Lcom/king/zxing/ViewfinderView$FrameGravity;

    invoke-virtual {v3}, Lcom/king/zxing/ViewfinderView$FrameGravity;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_36} :catch_37

    goto :goto_38

    :catch_37
    move-exception v0

    :goto_38
    :try_start_38
    sget-object v0, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$FrameGravity:[I

    sget-object v2, Lcom/king/zxing/ViewfinderView$FrameGravity;->TOP:Lcom/king/zxing/ViewfinderView$FrameGravity;

    invoke-virtual {v2}, Lcom/king/zxing/ViewfinderView$FrameGravity;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_42} :catch_43

    goto :goto_44

    :catch_43
    move-exception v0

    :goto_44
    :try_start_44
    sget-object v0, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$FrameGravity:[I

    sget-object v1, Lcom/king/zxing/ViewfinderView$FrameGravity;->RIGHT:Lcom/king/zxing/ViewfinderView$FrameGravity;

    invoke-virtual {v1}, Lcom/king/zxing/ViewfinderView$FrameGravity;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4f} :catch_50

    goto :goto_51

    :catch_50
    move-exception v0

    :goto_51
    :try_start_51
    sget-object v0, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$FrameGravity:[I

    sget-object v1, Lcom/king/zxing/ViewfinderView$FrameGravity;->BOTTOM:Lcom/king/zxing/ViewfinderView$FrameGravity;

    invoke-virtual {v1}, Lcom/king/zxing/ViewfinderView$FrameGravity;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5c} :catch_5d

    goto :goto_5e

    :catch_5d
    move-exception v0

    :goto_5e
    return-void
.end method
