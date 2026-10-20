.class public final Lorg/yaml/snakeyaml/nodes/NodeTuple;
.super Ljava/lang/Object;
.source "NodeTuple.java"


# instance fields
.field private keyNode:Lorg/yaml/snakeyaml/nodes/Node;

.field private valueNode:Lorg/yaml/snakeyaml/nodes/Node;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V
    .locals 2
    .param p1, "keyNode"    # Lorg/yaml/snakeyaml/nodes/Node;
    .param p2, "valueNode"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 30
    iput-object p1, p0, Lorg/yaml/snakeyaml/nodes/NodeTuple;->keyNode:Lorg/yaml/snakeyaml/nodes/Node;

    .line 31
    iput-object p2, p0, Lorg/yaml/snakeyaml/nodes/NodeTuple;->valueNode:Lorg/yaml/snakeyaml/nodes/Node;

    .line 32
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Nodes must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/NodeTuple;->keyNode:Lorg/yaml/snakeyaml/nodes/Node;

    return-object v0
.end method

.method public getValueNode()Lorg/yaml/snakeyaml/nodes/Node;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/NodeTuple;->valueNode:Lorg/yaml/snakeyaml/nodes/Node;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<NodeTuple keyNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/nodes/NodeTuple;->keyNode:Lorg/yaml/snakeyaml/nodes/Node;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; valueNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/nodes/NodeTuple;->valueNode:Lorg/yaml/snakeyaml/nodes/Node;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
