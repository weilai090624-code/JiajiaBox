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
    .locals 4

    .line 453
    invoke-static {}, Lcom/king/zxing/ViewfinderView$LaserStyle;->values()[Lcom/king/zxing/ViewfinderView$LaserStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$LaserStyle:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$LaserStyle:[I

    sget-object v2, Lcom/king/zxing/ViewfinderView$LaserStyle;->LINE:Lcom/king/zxing/ViewfinderView$LaserStyle;

    invoke-virtual {v2}, Lcom/king/zxing/ViewfinderView$LaserStyle;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$LaserStyle:[I

    sget-object v3, Lcom/king/zxing/ViewfinderView$LaserStyle;->GRID:Lcom/king/zxing/ViewfinderView$LaserStyle;

    invoke-virtual {v3}, Lcom/king/zxing/ViewfinderView$LaserStyle;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 356
    :goto_1
    invoke-static {}, Lcom/king/zxing/ViewfinderView$FrameGravity;->values()[Lcom/king/zxing/ViewfinderView$FrameGravity;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$FrameGravity:[I

    :try_start_2
    sget-object v2, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$FrameGravity:[I

    sget-object v3, Lcom/king/zxing/ViewfinderView$FrameGravity;->LEFT:Lcom/king/zxing/ViewfinderView$FrameGravity;

    invoke-virtual {v3}, Lcom/king/zxing/ViewfinderView$FrameGravity;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$FrameGravity:[I

    sget-object v2, Lcom/king/zxing/ViewfinderView$FrameGravity;->TOP:Lcom/king/zxing/ViewfinderView$FrameGravity;

    invoke-virtual {v2}, Lcom/king/zxing/ViewfinderView$FrameGravity;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$FrameGravity:[I

    sget-object v1, Lcom/king/zxing/ViewfinderView$FrameGravity;->RIGHT:Lcom/king/zxing/ViewfinderView$FrameGravity;

    invoke-virtual {v1}, Lcom/king/zxing/ViewfinderView$FrameGravity;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lcom/king/zxing/ViewfinderView$1;->$SwitchMap$com$king$zxing$ViewfinderView$FrameGravity:[I

    sget-object v1, Lcom/king/zxing/ViewfinderView$FrameGravity;->BOTTOM:Lcom/king/zxing/ViewfinderView$FrameGravity;

    invoke-virtual {v1}, Lcom/king/zxing/ViewfinderView$FrameGravity;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    return-void
.end method
