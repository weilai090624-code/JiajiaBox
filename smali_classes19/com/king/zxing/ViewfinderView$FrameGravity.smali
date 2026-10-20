.class public final enum Lcom/king/zxing/ViewfinderView$FrameGravity;
.super Ljava/lang/Enum;
.source "ViewfinderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/king/zxing/ViewfinderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrameGravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/king/zxing/ViewfinderView$FrameGravity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/king/zxing/ViewfinderView$FrameGravity;

.field public static final enum BOTTOM:Lcom/king/zxing/ViewfinderView$FrameGravity;

.field public static final enum CENTER:Lcom/king/zxing/ViewfinderView$FrameGravity;

.field public static final enum LEFT:Lcom/king/zxing/ViewfinderView$FrameGravity;

.field public static final enum RIGHT:Lcom/king/zxing/ViewfinderView$FrameGravity;

.field public static final enum TOP:Lcom/king/zxing/ViewfinderView$FrameGravity;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 234
    new-instance v0, Lcom/king/zxing/ViewfinderView$FrameGravity;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/king/zxing/ViewfinderView$FrameGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/king/zxing/ViewfinderView$FrameGravity;->CENTER:Lcom/king/zxing/ViewfinderView$FrameGravity;

    new-instance v0, Lcom/king/zxing/ViewfinderView$FrameGravity;

    const-string v1, "LEFT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/king/zxing/ViewfinderView$FrameGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/king/zxing/ViewfinderView$FrameGravity;->LEFT:Lcom/king/zxing/ViewfinderView$FrameGravity;

    new-instance v0, Lcom/king/zxing/ViewfinderView$FrameGravity;

    const-string v1, "TOP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/king/zxing/ViewfinderView$FrameGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/king/zxing/ViewfinderView$FrameGravity;->TOP:Lcom/king/zxing/ViewfinderView$FrameGravity;

    new-instance v0, Lcom/king/zxing/ViewfinderView$FrameGravity;

    const-string v1, "RIGHT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/king/zxing/ViewfinderView$FrameGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/king/zxing/ViewfinderView$FrameGravity;->RIGHT:Lcom/king/zxing/ViewfinderView$FrameGravity;

    new-instance v0, Lcom/king/zxing/ViewfinderView$FrameGravity;

    const-string v1, "BOTTOM"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/king/zxing/ViewfinderView$FrameGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/king/zxing/ViewfinderView$FrameGravity;->BOTTOM:Lcom/king/zxing/ViewfinderView$FrameGravity;

    .line 233
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/king/zxing/ViewfinderView$FrameGravity;

    sget-object v1, Lcom/king/zxing/ViewfinderView$FrameGravity;->CENTER:Lcom/king/zxing/ViewfinderView$FrameGravity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/king/zxing/ViewfinderView$FrameGravity;->LEFT:Lcom/king/zxing/ViewfinderView$FrameGravity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/king/zxing/ViewfinderView$FrameGravity;->TOP:Lcom/king/zxing/ViewfinderView$FrameGravity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/king/zxing/ViewfinderView$FrameGravity;->RIGHT:Lcom/king/zxing/ViewfinderView$FrameGravity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/king/zxing/ViewfinderView$FrameGravity;->BOTTOM:Lcom/king/zxing/ViewfinderView$FrameGravity;

    aput-object v1, v0, v6

    sput-object v0, Lcom/king/zxing/ViewfinderView$FrameGravity;->$VALUES:[Lcom/king/zxing/ViewfinderView$FrameGravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 238
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 239
    iput p3, p0, Lcom/king/zxing/ViewfinderView$FrameGravity;->mValue:I

    .line 240
    return-void
.end method

.method static synthetic access$300(Lcom/king/zxing/ViewfinderView$FrameGravity;)I
    .locals 1
    .param p0, "x0"    # Lcom/king/zxing/ViewfinderView$FrameGravity;

    .line 233
    iget v0, p0, Lcom/king/zxing/ViewfinderView$FrameGravity;->mValue:I

    return v0
.end method

.method static synthetic access$400(I)Lcom/king/zxing/ViewfinderView$FrameGravity;
    .locals 1
    .param p0, "x0"    # I

    .line 233
    invoke-static {p0}, Lcom/king/zxing/ViewfinderView$FrameGravity;->getFromInt(I)Lcom/king/zxing/ViewfinderView$FrameGravity;

    move-result-object v0

    return-object v0
.end method

.method private static getFromInt(I)Lcom/king/zxing/ViewfinderView$FrameGravity;
    .locals 5
    .param p0, "value"    # I

    .line 243
    invoke-static {}, Lcom/king/zxing/ViewfinderView$FrameGravity;->values()[Lcom/king/zxing/ViewfinderView$FrameGravity;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 244
    .local v3, "gravity":Lcom/king/zxing/ViewfinderView$FrameGravity;
    iget v4, v3, Lcom/king/zxing/ViewfinderView$FrameGravity;->mValue:I

    if-ne v4, p0, :cond_0

    .line 245
    return-object v3

    .line 243
    .end local v3    # "gravity":Lcom/king/zxing/ViewfinderView$FrameGravity;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    :cond_1
    sget-object v0, Lcom/king/zxing/ViewfinderView$FrameGravity;->CENTER:Lcom/king/zxing/ViewfinderView$FrameGravity;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/king/zxing/ViewfinderView$FrameGravity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 233
    const-class v0, Lcom/king/zxing/ViewfinderView$FrameGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/king/zxing/ViewfinderView$FrameGravity;

    return-object v0
.end method

.method public static values()[Lcom/king/zxing/ViewfinderView$FrameGravity;
    .locals 1

    .line 233
    sget-object v0, Lcom/king/zxing/ViewfinderView$FrameGravity;->$VALUES:[Lcom/king/zxing/ViewfinderView$FrameGravity;

    invoke-virtual {v0}, [Lcom/king/zxing/ViewfinderView$FrameGravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/king/zxing/ViewfinderView$FrameGravity;

    return-object v0
.end method
