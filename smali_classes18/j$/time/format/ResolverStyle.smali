.class public final enum Lj$/time/format/ResolverStyle;
.super Ljava/lang/Enum;
.source "ResolverStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/time/format/ResolverStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lj$/time/format/ResolverStyle;

.field public static final enum LENIENT:Lj$/time/format/ResolverStyle;

.field public static final enum SMART:Lj$/time/format/ResolverStyle;

.field public static final enum STRICT:Lj$/time/format/ResolverStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 90
    new-instance v0, Lj$/time/format/ResolverStyle;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    .line 103
    new-instance v0, Lj$/time/format/ResolverStyle;

    const-string v1, "SMART"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lj$/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/format/ResolverStyle;->SMART:Lj$/time/format/ResolverStyle;

    .line 114
    new-instance v0, Lj$/time/format/ResolverStyle;

    const-string v1, "LENIENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lj$/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Lj$/time/format/ResolverStyle;

    sget-object v1, Lj$/time/format/ResolverStyle;->STRICT:Lj$/time/format/ResolverStyle;

    aput-object v1, v0, v2

    sget-object v1, Lj$/time/format/ResolverStyle;->SMART:Lj$/time/format/ResolverStyle;

    aput-object v1, v0, v3

    sget-object v1, Lj$/time/format/ResolverStyle;->LENIENT:Lj$/time/format/ResolverStyle;

    aput-object v1, v0, v4

    sput-object v0, Lj$/time/format/ResolverStyle;->$VALUES:[Lj$/time/format/ResolverStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/format/ResolverStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 77
    const-class v0, Lj$/time/format/ResolverStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lj$/time/format/ResolverStyle;

    return-object v0
.end method

.method public static values()[Lj$/time/format/ResolverStyle;
    .locals 1

    .line 77
    sget-object v0, Lj$/time/format/ResolverStyle;->$VALUES:[Lj$/time/format/ResolverStyle;

    invoke-virtual {v0}, [Lj$/time/format/ResolverStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/format/ResolverStyle;

    return-object v0
.end method
