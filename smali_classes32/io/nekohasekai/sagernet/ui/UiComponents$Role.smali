.class final enum Lio/nekohasekai/sagernet/ui/UiComponents$Role;
.super Ljava/lang/Enum;
.source "UiComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/UiComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/nekohasekai/sagernet/ui/UiComponents$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/nekohasekai/sagernet/ui/UiComponents$Role;

.field public static final enum ACTION:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

.field public static final enum CHOICE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

.field public static final enum FIELD:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

.field public static final enum ROUTING:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

.field public static final enum SECONDARY:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

.field public static final enum SURFACE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

.field public static final enum TEXT:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

.field public static final enum TITLE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;


# direct methods
.method private static synthetic $values()[Lio/nekohasekai/sagernet/ui/UiComponents$Role;
    .registers 3

    const/16 v0, 0x8

    .line 31
    new-array v0, v0, [Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    sget-object v1, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->SURFACE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->TITLE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->TEXT:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->SECONDARY:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->FIELD:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ACTION:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->CHOICE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ROUTING:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 31
    new-instance v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const-string v1, "SURFACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->SURFACE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    new-instance v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const-string v1, "TITLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->TITLE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    new-instance v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const-string v1, "TEXT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->TEXT:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    new-instance v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const-string v1, "SECONDARY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->SECONDARY:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    new-instance v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const-string v1, "FIELD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->FIELD:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    new-instance v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const-string v1, "ACTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ACTION:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    new-instance v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const-string v1, "CHOICE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->CHOICE:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    new-instance v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    const-string v1, "ROUTING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/UiComponents$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->ROUTING:Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    invoke-static {}, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->$values()[Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->$VALUES:[Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/nekohasekai/sagernet/ui/UiComponents$Role;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    const-class v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    return-object p0
.end method

.method public static values()[Lio/nekohasekai/sagernet/ui/UiComponents$Role;
    .registers 1

    .line 31
    sget-object v0, Lio/nekohasekai/sagernet/ui/UiComponents$Role;->$VALUES:[Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    invoke-virtual {v0}, [Lio/nekohasekai/sagernet/ui/UiComponents$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/nekohasekai/sagernet/ui/UiComponents$Role;

    return-object v0
.end method
