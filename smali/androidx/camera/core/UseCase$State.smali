.class final enum Landroidx/camera/core/UseCase$State;
.super Ljava/lang/Enum;
.source "UseCase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/UseCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/camera/core/UseCase$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/camera/core/UseCase$State;

.field public static final enum ACTIVE:Landroidx/camera/core/UseCase$State;

.field public static final enum INACTIVE:Landroidx/camera/core/UseCase$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 684
    new-instance v0, Landroidx/camera/core/UseCase$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/core/UseCase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/UseCase$State;->ACTIVE:Landroidx/camera/core/UseCase$State;

    .line 686
    new-instance v0, Landroidx/camera/core/UseCase$State;

    const-string v1, "INACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/camera/core/UseCase$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/core/UseCase$State;->INACTIVE:Landroidx/camera/core/UseCase$State;

    .line 682
    const/4 v0, 0x2

    new-array v0, v0, [Landroidx/camera/core/UseCase$State;

    sget-object v1, Landroidx/camera/core/UseCase$State;->ACTIVE:Landroidx/camera/core/UseCase$State;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/UseCase$State;->INACTIVE:Landroidx/camera/core/UseCase$State;

    aput-object v1, v0, v3

    sput-object v0, Landroidx/camera/core/UseCase$State;->$VALUES:[Landroidx/camera/core/UseCase$State;

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

    .line 682
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/UseCase$State;
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

    .line 682
    const-class v0, Landroidx/camera/core/UseCase$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/UseCase$State;

    return-object v0
.end method

.method public static values()[Landroidx/camera/core/UseCase$State;
    .locals 1

    .line 682
    sget-object v0, Landroidx/camera/core/UseCase$State;->$VALUES:[Landroidx/camera/core/UseCase$State;

    invoke-virtual {v0}, [Landroidx/camera/core/UseCase$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/UseCase$State;

    return-object v0
.end method
