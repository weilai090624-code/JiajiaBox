.class public final enum Lj$/time/format/FormatStyle;
.super Ljava/lang/Enum;
.source "FormatStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/time/format/FormatStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/time/format/FormatStyle;

.field public static final enum FULL:Lj$/time/format/FormatStyle;

.field public static final enum LONG:Lj$/time/format/FormatStyle;

.field public static final enum MEDIUM:Lj$/time/format/FormatStyle;

.field public static final enum SHORT:Lj$/time/format/FormatStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 82
    new-instance v0, Lj$/time/format/FormatStyle;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/format/FormatStyle;->FULL:Lj$/time/format/FormatStyle;

    .line 87
    new-instance v0, Lj$/time/format/FormatStyle;

    const-string v1, "LONG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lj$/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/format/FormatStyle;->LONG:Lj$/time/format/FormatStyle;

    .line 92
    new-instance v0, Lj$/time/format/FormatStyle;

    const-string v1, "MEDIUM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lj$/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/format/FormatStyle;->MEDIUM:Lj$/time/format/FormatStyle;

    .line 97
    new-instance v0, Lj$/time/format/FormatStyle;

    const-string v1, "SHORT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lj$/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/format/FormatStyle;->SHORT:Lj$/time/format/FormatStyle;

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Lj$/time/format/FormatStyle;

    sget-object v1, Lj$/time/format/FormatStyle;->FULL:Lj$/time/format/FormatStyle;

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/format/FormatStyle;->LONG:Lj$/time/format/FormatStyle;

    aput-object v1, v0, v3

    sget-object v1, Lj$/time/format/FormatStyle;->MEDIUM:Lj$/time/format/FormatStyle;

    aput-object v1, v0, v4

    sget-object v1, Lj$/time/format/FormatStyle;->SHORT:Lj$/time/format/FormatStyle;

    aput-object v1, v0, v5

    sput-object v0, Lj$/time/format/FormatStyle;->$VALUES:[Lj$/time/format/FormatStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/format/FormatStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 75
    const-class v0, Lj$/time/format/FormatStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/time/format/FormatStyle;

    return-object v0
.end method

.method public static values()[Lj$/time/format/FormatStyle;
    .locals 1

    .line 75
    sget-object v0, Lj$/time/format/FormatStyle;->$VALUES:[Lj$/time/format/FormatStyle;

    invoke-virtual {v0}, [Lj$/time/format/FormatStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/format/FormatStyle;

    return-object v0
.end method
