.class public final enum Lorg/yaml/snakeyaml/DumperOptions$Version;
.super Ljava/lang/Enum;
.source "DumperOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/DumperOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/yaml/snakeyaml/DumperOptions$Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/yaml/snakeyaml/DumperOptions$Version;

.field public static final enum V1_0:Lorg/yaml/snakeyaml/DumperOptions$Version;

.field public static final enum V1_1:Lorg/yaml/snakeyaml/DumperOptions$Version;


# instance fields
.field private version:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 151
    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions$Version;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Integer;

    aput-object v2, v6, v3

    aput-object v4, v6, v1

    const-string v4, "V1_0"

    invoke-direct {v0, v4, v3, v6}, Lorg/yaml/snakeyaml/DumperOptions$Version;-><init>(Ljava/lang/String;I[Ljava/lang/Integer;)V

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$Version;->V1_0:Lorg/yaml/snakeyaml/DumperOptions$Version;

    new-instance v0, Lorg/yaml/snakeyaml/DumperOptions$Version;

    new-array v4, v5, [Ljava/lang/Integer;

    aput-object v2, v4, v3

    aput-object v2, v4, v1

    const-string v2, "V1_1"

    invoke-direct {v0, v2, v1, v4}, Lorg/yaml/snakeyaml/DumperOptions$Version;-><init>(Ljava/lang/String;I[Ljava/lang/Integer;)V

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$Version;->V1_1:Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 150
    new-array v0, v5, [Lorg/yaml/snakeyaml/DumperOptions$Version;

    sget-object v2, Lorg/yaml/snakeyaml/DumperOptions$Version;->V1_0:Lorg/yaml/snakeyaml/DumperOptions$Version;

    aput-object v2, v0, v3

    sget-object v2, Lorg/yaml/snakeyaml/DumperOptions$Version;->V1_1:Lorg/yaml/snakeyaml/DumperOptions$Version;

    aput-object v2, v0, v1

    sput-object v0, Lorg/yaml/snakeyaml/DumperOptions$Version;->$VALUES:[Lorg/yaml/snakeyaml/DumperOptions$Version;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/Integer;)V
    .locals 0
    .param p3, "version"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 156
    iput-object p3, p0, Lorg/yaml/snakeyaml/DumperOptions$Version;->version:[Ljava/lang/Integer;

    .line 157
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/yaml/snakeyaml/DumperOptions$Version;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 150
    const-class v0, Lorg/yaml/snakeyaml/DumperOptions$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/DumperOptions$Version;

    return-object v0
.end method

.method public static values()[Lorg/yaml/snakeyaml/DumperOptions$Version;
    .locals 1

    .line 150
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$Version;->$VALUES:[Lorg/yaml/snakeyaml/DumperOptions$Version;

    invoke-virtual {v0}, [Lorg/yaml/snakeyaml/DumperOptions$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/yaml/snakeyaml/DumperOptions$Version;

    return-object v0
.end method


# virtual methods
.method public getRepresentation()Ljava/lang/String;
    .locals 3

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions$Version;->version:[Ljava/lang/Integer;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/DumperOptions$Version;->version:[Ljava/lang/Integer;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public major()I
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions$Version;->version:[Ljava/lang/Integer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public minor()I
    .locals 2

    .line 160
    iget-object v0, p0, Lorg/yaml/snakeyaml/DumperOptions$Version;->version:[Ljava/lang/Integer;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/DumperOptions$Version;->getRepresentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
