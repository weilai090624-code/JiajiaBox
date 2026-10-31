.class public final enum Lorg/yaml/snakeyaml/nodes/NodeId;
.super Ljava/lang/Enum;
.source "NodeId.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/yaml/snakeyaml/nodes/NodeId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/yaml/snakeyaml/nodes/NodeId;

.field public static final enum anchor:Lorg/yaml/snakeyaml/nodes/NodeId;

.field public static final enum mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

.field public static final enum scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

.field public static final enum sequence:Lorg/yaml/snakeyaml/nodes/NodeId;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 22
    new-instance v0, Lorg/yaml/snakeyaml/nodes/NodeId;

    const-string v1, "scalar"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/yaml/snakeyaml/nodes/NodeId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    new-instance v0, Lorg/yaml/snakeyaml/nodes/NodeId;

    const-string v1, "sequence"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/yaml/snakeyaml/nodes/NodeId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    new-instance v0, Lorg/yaml/snakeyaml/nodes/NodeId;

    const-string v1, "mapping"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/yaml/snakeyaml/nodes/NodeId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    new-instance v0, Lorg/yaml/snakeyaml/nodes/NodeId;

    const-string v1, "anchor"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/yaml/snakeyaml/nodes/NodeId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/yaml/snakeyaml/nodes/NodeId;->anchor:Lorg/yaml/snakeyaml/nodes/NodeId;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/yaml/snakeyaml/nodes/NodeId;

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    aput-object v1, v0, v2

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    aput-object v1, v0, v3

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    aput-object v1, v0, v4

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->anchor:Lorg/yaml/snakeyaml/nodes/NodeId;

    aput-object v1, v0, v5

    sput-object v0, Lorg/yaml/snakeyaml/nodes/NodeId;->$VALUES:[Lorg/yaml/snakeyaml/nodes/NodeId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/NodeId;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/nodes/NodeId;

    return-object v0
.end method

.method public static values()[Lorg/yaml/snakeyaml/nodes/NodeId;
    .registers 1

    .line 21
    sget-object v0, Lorg/yaml/snakeyaml/nodes/NodeId;->$VALUES:[Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v0}, [Lorg/yaml/snakeyaml/nodes/NodeId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/yaml/snakeyaml/nodes/NodeId;

    return-object v0
.end method
