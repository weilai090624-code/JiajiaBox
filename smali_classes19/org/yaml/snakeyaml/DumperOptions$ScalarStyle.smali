.class public final enum Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
.super Ljava/lang/Enum;
.source "DumperOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/DumperOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScalarStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

.field public static final enum DOUBLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

.field public static final enum FOLDED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

.field public static final enum LITERAL:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

.field public static final enum PLAIN:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

.field public static final enum SINGLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;


# instance fields
.field private styleChar:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 39
    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "DOUBLE_QUOTED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;-><init>(Ljava/lang/String;ILjava/lang/Character;)V

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->DOUBLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "SINGLE_QUOTED"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;-><init>(Ljava/lang/String;ILjava/lang/Character;)V

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->SINGLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    const/16 v1, 0x7c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "LITERAL"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;-><init>(Ljava/lang/String;ILjava/lang/Character;)V

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->LITERAL:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 40
    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "FOLDED"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v1}, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;-><init>(Ljava/lang/String;ILjava/lang/Character;)V

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->FOLDED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    const/4 v1, 0x0

    const-string v2, "PLAIN"

    const/4 v7, 0x4

    invoke-direct {v0, v2, v7, v1}, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;-><init>(Ljava/lang/String;ILjava/lang/Character;)V

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->PLAIN:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->DOUBLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    aput-object v1, v0, v3

    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->SINGLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    aput-object v1, v0, v4

    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->LITERAL:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    aput-object v1, v0, v5

    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->FOLDED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    aput-object v1, v0, v6

    sget-object v1, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->PLAIN:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    aput-object v1, v0, v7

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->$VALUES:[Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Character;)V
    .locals 0
    .param p3, "style"    # Ljava/lang/Character;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Character;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->styleChar:Ljava/lang/Character;

    .line 45
    return-void
.end method

.method public static createStyle(Ljava/lang/Character;)Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    .locals 3
    .param p0, "style"    # Ljava/lang/Character;

    .line 57
    if-nez p0, :cond_0

    .line 58
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->PLAIN:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 70
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown scalar style character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :sswitch_0
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->LITERAL:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v0

    .line 68
    :sswitch_1
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->FOLDED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v0

    .line 64
    :sswitch_2
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->SINGLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v0

    .line 62
    :sswitch_3
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->DOUBLE_QUOTED:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x3e -> :sswitch_1
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v0
.end method

.method public static values()[Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    .locals 1

    .line 38
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->$VALUES:[Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    invoke-virtual {v0}, [Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v0
.end method


# virtual methods
.method public getChar()Ljava/lang/Character;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->styleChar:Ljava/lang/Character;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scalar style: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->styleChar:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
