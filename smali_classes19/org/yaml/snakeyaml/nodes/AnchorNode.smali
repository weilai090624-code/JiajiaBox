.class public Lorg/yaml/snakeyaml/nodes/AnchorNode;
.super Lorg/yaml/snakeyaml/nodes/Node;
.source "AnchorNode.java"


# instance fields
.field private realNode:Lorg/yaml/snakeyaml/nodes/Node;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/nodes/Node;)V
    .locals 3
    .param p1, "realNode"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 26
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v0

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/yaml/snakeyaml/nodes/Node;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 27
    iput-object p1, p0, Lorg/yaml/snakeyaml/nodes/AnchorNode;->realNode:Lorg/yaml/snakeyaml/nodes/Node;

    .line 28
    return-void
.end method


# virtual methods
.method public getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;
    .locals 1

    .line 32
    sget-object v0, Lorg/yaml/snakeyaml/nodes/NodeId;->anchor:Lorg/yaml/snakeyaml/nodes/NodeId;

    return-object v0
.end method

.method public getRealNode()Lorg/yaml/snakeyaml/nodes/Node;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/AnchorNode;->realNode:Lorg/yaml/snakeyaml/nodes/Node;

    return-object v0
.end method
