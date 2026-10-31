.class synthetic Lorg/yaml/snakeyaml/constructor/SafeConstructor$1;
.super Ljava/lang/Object;
.source "SafeConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/SafeConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 143
    invoke-static {}, Lorg/yaml/snakeyaml/nodes/NodeId;->values()[Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    :try_start_9
    sget-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/NodeId;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Lorg/yaml/snakeyaml/constructor/SafeConstructor$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/NodeId;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    return-void
.end method
