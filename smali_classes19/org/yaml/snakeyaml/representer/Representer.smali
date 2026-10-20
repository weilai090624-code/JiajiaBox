.class public Lorg/yaml/snakeyaml/representer/Representer;
.super Lorg/yaml/snakeyaml/representer/SafeRepresenter;
.source "Representer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/representer/Representer$RepresentJavaBean;
    }
.end annotation


# instance fields
.field protected typeDefinitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/TypeDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;-><init>()V

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/Representer;->typeDefinitions:Ljava/util/Map;

    .line 50
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/Representer;->representers:Ljava/util/Map;

    new-instance v1, Lorg/yaml/snakeyaml/representer/Representer$RepresentJavaBean;

    invoke-direct {v1, p0}, Lorg/yaml/snakeyaml/representer/Representer$RepresentJavaBean;-><init>(Lorg/yaml/snakeyaml/representer/Representer;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/DumperOptions;)V
    .locals 3
    .param p1, "options"    # Lorg/yaml/snakeyaml/DumperOptions;

    .line 54
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;-><init>(Lorg/yaml/snakeyaml/DumperOptions;)V

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/Representer;->typeDefinitions:Ljava/util/Map;

    .line 55
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/Representer;->representers:Ljava/util/Map;

    new-instance v1, Lorg/yaml/snakeyaml/representer/Representer$RepresentJavaBean;

    invoke-direct {v1, p0}, Lorg/yaml/snakeyaml/representer/Representer$RepresentJavaBean;-><init>(Lorg/yaml/snakeyaml/representer/Representer;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method private resetTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Node;)V
    .locals 2
    .param p2, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ")V"
        }
    .end annotation

    .line 256
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v0

    .line 257
    .local v0, "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/nodes/Tag;->matches(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {p2, v1}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    goto :goto_0

    .line 261
    :cond_0
    sget-object v1, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {p2, v1}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 264
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic addClassTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/Tag;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Lorg/yaml/snakeyaml/nodes/Tag;

    .line 44
    invoke-super {p0, p1, p2}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->addClassTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v0

    return-object v0
.end method

.method public addTypeDescription(Lorg/yaml/snakeyaml/TypeDescription;)Lorg/yaml/snakeyaml/TypeDescription;
    .locals 2
    .param p1, "td"    # Lorg/yaml/snakeyaml/TypeDescription;

    .line 59
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/Representer;->typeDefinitions:Ljava/util/Map;

    if-ne v0, v1, :cond_0

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/Representer;->typeDefinitions:Ljava/util/Map;

    .line 62
    :cond_0
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/TypeDescription;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/TypeDescription;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/TypeDescription;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/yaml/snakeyaml/representer/Representer;->addClassTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/Tag;

    .line 65
    :cond_1
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/representer/Representer;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/yaml/snakeyaml/TypeDescription;->setPropertyUtils(Lorg/yaml/snakeyaml/introspector/PropertyUtils;)V

    .line 66
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/Representer;->typeDefinitions:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/TypeDescription;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/TypeDescription;

    return-object v0
.end method

.method protected checkGlobalTag(Lorg/yaml/snakeyaml/introspector/Property;Lorg/yaml/snakeyaml/nodes/Node;Ljava/lang/Object;)V
    .locals 11
    .param p1, "property"    # Lorg/yaml/snakeyaml/introspector/Property;
    .param p2, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .param p3, "object"    # Ljava/lang/Object;

    .line 197
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    return-void

    .line 201
    :cond_0
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/introspector/Property;->getActualTypeArguments()[Ljava/lang/Class;

    move-result-object v0

    .line 202
    .local v0, "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v0, :cond_a

    .line 203
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v1

    sget-object v2, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_5

    .line 205
    aget-object v1, v0, v3

    .line 206
    .local v1, "t":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    move-object v2, p2

    check-cast v2, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 207
    .local v2, "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 208
    .local v3, "memberList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Object;>;"
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    move-object v4, p3

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 210
    :cond_1
    instance-of v4, p3, Ljava/lang/Iterable;

    if-eqz v4, :cond_2

    .line 212
    move-object v3, p3

    check-cast v3, Ljava/lang/Iterable;

    .line 214
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 215
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 216
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/yaml/snakeyaml/nodes/Node;

    .line 217
    .local v6, "childNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 218
    .local v7, "member":Ljava/lang/Object;
    if-eqz v7, :cond_3

    .line 219
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 220
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v8

    sget-object v9, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-ne v8, v9, :cond_3

    .line 221
    sget-object v8, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v6, v8}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 224
    .end local v6    # "childNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v7    # "member":Ljava/lang/Object;
    :cond_3
    goto :goto_1

    .line 226
    .end local v1    # "t":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v2    # "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .end local v3    # "memberList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Object;>;"
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    goto/16 :goto_5

    :cond_5
    instance-of v1, p3, Ljava/util/Set;

    if-eqz v1, :cond_8

    .line 227
    aget-object v1, v0, v3

    .line 228
    .local v1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v2, p2

    check-cast v2, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 229
    .local v2, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 230
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    move-object v4, p3

    check-cast v4, Ljava/util/Set;

    .line 231
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 232
    .local v6, "member":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 233
    .local v7, "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v7}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v8

    .line 234
    .local v8, "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 235
    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v9

    sget-object v10, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-ne v9, v10, :cond_6

    .line 236
    sget-object v9, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v8, v9}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 239
    .end local v6    # "member":Ljava/lang/Object;
    .end local v7    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v8    # "keyNode":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_6
    goto :goto_2

    .line 231
    .end local v1    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_7
    goto :goto_4

    .line 240
    :cond_8
    instance-of v1, p3, Ljava/util/Map;

    if-eqz v1, :cond_9

    .line 241
    aget-object v1, v0, v3

    .line 242
    .local v1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 243
    .local v2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, p2

    check-cast v3, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 244
    .local v3, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 245
    .local v5, "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lorg/yaml/snakeyaml/representer/Representer;->resetTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 246
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lorg/yaml/snakeyaml/representer/Representer;->resetTag(Ljava/lang/Class;Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 247
    .end local v5    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    goto :goto_3

    .line 240
    .end local v1    # "keyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_4
    nop

    .line 253
    :cond_a
    :goto_5
    return-void
.end method

.method protected getProperties(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;"
        }
    .end annotation

    .line 275
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/Representer;->typeDefinitions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/Representer;->typeDefinitions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/TypeDescription;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/TypeDescription;->getProperties()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/representer/Representer;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperties(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .line 44
    invoke-super {p0}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method protected representJavaBean(Ljava/util/Set;Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/MappingNode;
    .locals 12
    .param p2, "javaBean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/introspector/Property;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/yaml/snakeyaml/nodes/MappingNode;"
        }
    .end annotation

    .line 99
    .local p1, "properties":Ljava/util/Set;, "Ljava/util/Set<Lorg/yaml/snakeyaml/introspector/Property;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v0, "value":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/Representer;->classTags:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/Tag;

    .line 102
    .local v1, "customTag":Lorg/yaml/snakeyaml/nodes/Tag;
    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/Class;)V

    .line 104
    .local v2, "tag":Lorg/yaml/snakeyaml/nodes/Tag;
    :goto_0
    new-instance v3, Lorg/yaml/snakeyaml/nodes/MappingNode;

    sget-object v4, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    invoke-direct {v3, v2, v0, v4}, Lorg/yaml/snakeyaml/nodes/MappingNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/List;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 105
    .local v3, "node":Lorg/yaml/snakeyaml/nodes/MappingNode;
    iget-object v4, p0, Lorg/yaml/snakeyaml/representer/Representer;->representedObjects:Ljava/util/Map;

    invoke-interface {v4, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v4, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->FLOW:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 107
    .local v4, "bestStyle":Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/yaml/snakeyaml/introspector/Property;

    .line 108
    .local v6, "property":Lorg/yaml/snakeyaml/introspector/Property;
    invoke-virtual {v6, p2}, Lorg/yaml/snakeyaml/introspector/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 109
    .local v7, "memberValue":Ljava/lang/Object;
    if-nez v7, :cond_1

    const/4 v8, 0x0

    goto :goto_2

    :cond_1
    iget-object v8, p0, Lorg/yaml/snakeyaml/representer/Representer;->classTags:Ljava/util/Map;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/yaml/snakeyaml/nodes/Tag;

    .line 111
    .local v8, "customPropertyTag":Lorg/yaml/snakeyaml/nodes/Tag;
    :goto_2
    invoke-virtual {p0, p2, v6, v7, v8}, Lorg/yaml/snakeyaml/representer/Representer;->representJavaBeanProperty(Ljava/lang/Object;Lorg/yaml/snakeyaml/introspector/Property;Ljava/lang/Object;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/NodeTuple;

    move-result-object v9

    .line 113
    .local v9, "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    if-nez v9, :cond_2

    .line 114
    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v10

    check-cast v10, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v10}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->isPlain()Z

    move-result v10

    if-nez v10, :cond_3

    .line 117
    sget-object v4, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->BLOCK:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 119
    :cond_3
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v10

    .line 120
    .local v10, "nodeValue":Lorg/yaml/snakeyaml/nodes/Node;
    instance-of v11, v10, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    if-eqz v11, :cond_4

    move-object v11, v10

    check-cast v11, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v11}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->isPlain()Z

    move-result v11

    if-nez v11, :cond_5

    .line 121
    :cond_4
    sget-object v4, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->BLOCK:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 123
    :cond_5
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v6    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    .end local v7    # "memberValue":Ljava/lang/Object;
    .end local v8    # "customPropertyTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v9    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v10    # "nodeValue":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_1

    .line 125
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v5, p0, Lorg/yaml/snakeyaml/representer/Representer;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    sget-object v6, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    if-eq v5, v6, :cond_7

    .line 126
    iget-object v5, p0, Lorg/yaml/snakeyaml/representer/Representer;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    invoke-virtual {v3, v5}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    goto :goto_3

    .line 128
    :cond_7
    invoke-virtual {v3, v4}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 130
    :goto_3
    return-object v3
.end method

.method protected representJavaBeanProperty(Ljava/lang/Object;Lorg/yaml/snakeyaml/introspector/Property;Ljava/lang/Object;Lorg/yaml/snakeyaml/nodes/Tag;)Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .locals 6
    .param p1, "javaBean"    # Ljava/lang/Object;
    .param p2, "property"    # Lorg/yaml/snakeyaml/introspector/Property;
    .param p3, "propertyValue"    # Ljava/lang/Object;
    .param p4, "customTag"    # Lorg/yaml/snakeyaml/nodes/Tag;

    .line 149
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/introspector/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/representer/Representer;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 151
    .local v0, "nodeKey":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/Representer;->representedObjects:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 153
    .local v1, "hasAlias":Z
    invoke-virtual {p0, p3}, Lorg/yaml/snakeyaml/representer/Representer;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    .line 155
    .local v2, "nodeValue":Lorg/yaml/snakeyaml/nodes/Node;
    if-eqz p3, :cond_2

    if-nez v1, :cond_2

    .line 156
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v3

    .line 157
    .local v3, "nodeId":Lorg/yaml/snakeyaml/nodes/NodeId;
    if-nez p4, :cond_2

    .line 158
    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-ne v3, v4, :cond_0

    .line 160
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Enum;

    if-eq v4, v5, :cond_2

    .line 161
    instance-of v4, p3, Ljava/lang/Enum;

    if-eqz v4, :cond_2

    .line 162
    sget-object v4, Lorg/yaml/snakeyaml/nodes/Tag;->STR:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v2, v4}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    goto :goto_0

    .line 166
    :cond_0
    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-ne v3, v4, :cond_1

    .line 167
    invoke-virtual {p2}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 168
    instance-of v4, p3, Ljava/util/Map;

    if-nez v4, :cond_1

    .line 169
    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v4

    sget-object v5, Lorg/yaml/snakeyaml/nodes/Tag;->SET:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 170
    sget-object v4, Lorg/yaml/snakeyaml/nodes/Tag;->MAP:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v2, v4}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 175
    :cond_1
    invoke-virtual {p0, p2, v2, p3}, Lorg/yaml/snakeyaml/representer/Representer;->checkGlobalTag(Lorg/yaml/snakeyaml/introspector/Property;Lorg/yaml/snakeyaml/nodes/Node;Ljava/lang/Object;)V

    .line 180
    .end local v3    # "nodeId":Lorg/yaml/snakeyaml/nodes/NodeId;
    :cond_2
    :goto_0
    new-instance v3, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    invoke-direct {v3, v0, v2}, Lorg/yaml/snakeyaml/nodes/NodeTuple;-><init>(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    return-object v3
.end method

.method public setPropertyUtils(Lorg/yaml/snakeyaml/introspector/PropertyUtils;)V
    .locals 3
    .param p1, "propertyUtils"    # Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 71
    invoke-super {p0, p1}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->setPropertyUtils(Lorg/yaml/snakeyaml/introspector/PropertyUtils;)V

    .line 72
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/Representer;->typeDefinitions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 73
    .local v0, "tds":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/yaml/snakeyaml/TypeDescription;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/TypeDescription;

    .line 74
    .local v2, "typeDescription":Lorg/yaml/snakeyaml/TypeDescription;
    invoke-virtual {v2, p1}, Lorg/yaml/snakeyaml/TypeDescription;->setPropertyUtils(Lorg/yaml/snakeyaml/introspector/PropertyUtils;)V

    .line 75
    .end local v2    # "typeDescription":Lorg/yaml/snakeyaml/TypeDescription;
    goto :goto_0

    .line 76
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public bridge synthetic setTimeZone(Ljava/util/TimeZone;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/TimeZone;

    .line 44
    invoke-super {p0, p1}, Lorg/yaml/snakeyaml/representer/SafeRepresenter;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method
