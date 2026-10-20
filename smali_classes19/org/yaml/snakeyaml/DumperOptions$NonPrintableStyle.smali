.class public final enum Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;
.super Ljava/lang/Enum;
.source "DumperOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/DumperOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NonPrintableStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

.field public static final enum BINARY:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

.field public static final enum ESCAPE:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 176
    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    const-string v1, "BINARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;->BINARY:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    .line 180
    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    const-string v1, "ESCAPE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;->ESCAPE:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    .line 172
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;->BINARY:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    aput-object v1, v0, v2

    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;->ESCAPE:Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    aput-object v1, v0, v3

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;->$VALUES:[Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 172
    const-class v0, Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    return-object v0
.end method

.method public static values()[Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;
    .locals 1

    .line 172
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;->$VALUES:[Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    invoke-virtual {v0}, [Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/yaml/snakeyaml/DumperOptions$NonPrintableStyle;

    return-object v0
.end method
