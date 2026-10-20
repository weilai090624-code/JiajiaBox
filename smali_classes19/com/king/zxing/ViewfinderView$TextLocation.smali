.class public final enum Lcom/king/zxing/ViewfinderView$TextLocation;
.super Ljava/lang/Enum;
.source "ViewfinderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/king/zxing/ViewfinderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/king/zxing/ViewfinderView$TextLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/king/zxing/ViewfinderView$TextLocation;

.field public static final enum BOTTOM:Lcom/king/zxing/ViewfinderView$TextLocation;

.field public static final enum TOP:Lcom/king/zxing/ViewfinderView$TextLocation;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 214
    new-instance v0, Lcom/king/zxing/ViewfinderView$TextLocation;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/king/zxing/ViewfinderView$TextLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/king/zxing/ViewfinderView$TextLocation;->TOP:Lcom/king/zxing/ViewfinderView$TextLocation;

    new-instance v0, Lcom/king/zxing/ViewfinderView$TextLocation;

    const-string v1, "BOTTOM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/king/zxing/ViewfinderView$TextLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/king/zxing/ViewfinderView$TextLocation;->BOTTOM:Lcom/king/zxing/ViewfinderView$TextLocation;

    .line 213
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/king/zxing/ViewfinderView$TextLocation;

    sget-object v1, Lcom/king/zxing/ViewfinderView$TextLocation;->TOP:Lcom/king/zxing/ViewfinderView$TextLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/king/zxing/ViewfinderView$TextLocation;->BOTTOM:Lcom/king/zxing/ViewfinderView$TextLocation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/king/zxing/ViewfinderView$TextLocation;->$VALUES:[Lcom/king/zxing/ViewfinderView$TextLocation;

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

    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 219
    iput p3, p0, Lcom/king/zxing/ViewfinderView$TextLocation;->mValue:I

    .line 220
    return-void
.end method

.method static synthetic access$000(I)Lcom/king/zxing/ViewfinderView$TextLocation;
    .locals 1
    .param p0, "x0"    # I

    .line 213
    invoke-static {p0}, Lcom/king/zxing/ViewfinderView$TextLocation;->getFromInt(I)Lcom/king/zxing/ViewfinderView$TextLocation;

    move-result-object v0

    return-object v0
.end method

.method private static getFromInt(I)Lcom/king/zxing/ViewfinderView$TextLocation;
    .locals 5
    .param p0, "value"    # I

    .line 223
    invoke-static {}, Lcom/king/zxing/ViewfinderView$TextLocation;->values()[Lcom/king/zxing/ViewfinderView$TextLocation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 224
    .local v3, "location":Lcom/king/zxing/ViewfinderView$TextLocation;
    iget v4, v3, Lcom/king/zxing/ViewfinderView$TextLocation;->mValue:I

    if-ne v4, p0, :cond_0

    .line 225
    return-object v3

    .line 223
    .end local v3    # "location":Lcom/king/zxing/ViewfinderView$TextLocation;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_1
    sget-object v0, Lcom/king/zxing/ViewfinderView$TextLocation;->TOP:Lcom/king/zxing/ViewfinderView$TextLocation;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/king/zxing/ViewfinderView$TextLocation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 213
    const-class v0, Lcom/king/zxing/ViewfinderView$TextLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/king/zxing/ViewfinderView$TextLocation;

    return-object v0
.end method

.method public static values()[Lcom/king/zxing/ViewfinderView$TextLocation;
    .locals 1

    .line 213
    sget-object v0, Lcom/king/zxing/ViewfinderView$TextLocation;->$VALUES:[Lcom/king/zxing/ViewfinderView$TextLocation;

    invoke-virtual {v0}, [Lcom/king/zxing/ViewfinderView$TextLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/king/zxing/ViewfinderView$TextLocation;

    return-object v0
.end method
