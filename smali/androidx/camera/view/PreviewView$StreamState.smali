.class public final enum Landroidx/camera/view/PreviewView$StreamState;
.super Ljava/lang/Enum;
.source "PreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/view/PreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StreamState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/view/PreviewView$StreamState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/view/PreviewView$StreamState;

.field public static final enum IDLE:Landroidx/camera/view/PreviewView$StreamState;

.field public static final enum STREAMING:Landroidx/camera/view/PreviewView$StreamState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 771
    new-instance v0, Landroidx/camera/view/PreviewView$StreamState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/view/PreviewView$StreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/view/PreviewView$StreamState;->IDLE:Landroidx/camera/view/PreviewView$StreamState;

    .line 781
    new-instance v0, Landroidx/camera/view/PreviewView$StreamState;

    const-string v1, "STREAMING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/camera/view/PreviewView$StreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/view/PreviewView$StreamState;->STREAMING:Landroidx/camera/view/PreviewView$StreamState;

    .line 769
    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/camera/view/PreviewView$StreamState;

    sget-object v1, Landroidx/camera/view/PreviewView$StreamState;->IDLE:Landroidx/camera/view/PreviewView$StreamState;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/view/PreviewView$StreamState;->STREAMING:Landroidx/camera/view/PreviewView$StreamState;

    aput-object v1, v0, v3

    sput-object v0, Landroidx/camera/view/PreviewView$StreamState;->$VALUES:[Landroidx/camera/view/PreviewView$StreamState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 769
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/view/PreviewView$StreamState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 769
    const-class v0, Landroidx/camera/view/PreviewView$StreamState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/camera/view/PreviewView$StreamState;

    return-object v0
.end method

.method public static values()[Landroidx/camera/view/PreviewView$StreamState;
    .locals 1

    .line 769
    sget-object v0, Landroidx/camera/view/PreviewView$StreamState;->$VALUES:[Landroidx/camera/view/PreviewView$StreamState;

    invoke-virtual {v0}, [Landroidx/camera/view/PreviewView$StreamState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/view/PreviewView$StreamState;

    return-object v0
.end method
