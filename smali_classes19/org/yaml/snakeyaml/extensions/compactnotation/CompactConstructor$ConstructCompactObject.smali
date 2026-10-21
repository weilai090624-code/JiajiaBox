.class public Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor$ConstructCompactObject;
.super Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;
.source "CompactConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConstructCompactObject"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor$ConstructCompactObject;->this$0:Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;

    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;-><init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V

    return-void
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .registers 5
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 182
    instance-of v0, p1, Lorg/yaml/snakeyaml/nodes/MappingNode;

    if-eqz v0, :cond_21

    .line 184
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 185
    .local v0, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 186
    .local v1, "nodeTuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/yaml/snakeyaml/nodes/Node;->setTwoStepsConstruction(Z)V

    .line 187
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 189
    .end local v1    # "nodeTuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .local v0, "tmpNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    goto :goto_24

    .line 190
    .end local v0    # "tmpNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    :cond_21
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 193
    .restart local v0    # "tmpNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    :goto_24
    iget-object v1, p0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor$ConstructCompactObject;->this$0:Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->getCompactData(Ljava/lang/String;)Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;

    move-result-object v1

    .line 194
    .local v1, "data":Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;
    if-nez v1, :cond_37

    .line 195
    iget-object v2, p0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor$ConstructCompactObject;->this$0:Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;

    # invokes: Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->constructScalar(Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/String;
    invoke-static {v2, v0}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->access$100(Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;Lorg/yaml/snakeyaml/nodes/ScalarNode;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 197
    :cond_37
    iget-object v2, p0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor$ConstructCompactObject;->this$0:Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;

    invoke-virtual {v2, v0, v1}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->constructCompactFormat(Lorg/yaml/snakeyaml/nodes/ScalarNode;Lorg/yaml/snakeyaml/extensions/compactnotation/CompactData;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public construct2ndStep(Lorg/yaml/snakeyaml/nodes/Node;Ljava/lang/Object;)V
    .registers 9
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .param p2, "object"    # Ljava/lang/Object;

    .line 162
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 163
    .local v0, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 165
    .local v1, "nodeTuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    .line 167
    .local v2, "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    instance-of v3, v2, Lorg/yaml/snakeyaml/nodes/MappingNode;

    if-eqz v3, :cond_27

    .line 168
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/nodes/Node;->setType(Ljava/lang/Class;)V

    .line 169
    move-object v3, v2

    check-cast v3, Lorg/yaml/snakeyaml/nodes/MappingNode;

    invoke-virtual {p0, v3, p2}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor$ConstructCompactObject;->constructJavaBean2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 172
    :cond_27
    iget-object v3, p0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor$ConstructCompactObject;->this$0:Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;

    iget-object v4, p0, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor$ConstructCompactObject;->this$0:Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;

    move-object v5, v2

    check-cast v5, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    # invokes: Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->constructSequence(Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/util/List;
    invoke-static {v4, v5}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->access$000(Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;Lorg/yaml/snakeyaml/nodes/SequenceNode;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lorg/yaml/snakeyaml/extensions/compactnotation/CompactConstructor;->applySequence(Ljava/lang/Object;Ljava/util/List;)V

    .line 174
    :goto_35
    return-void
.end method
