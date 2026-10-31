.class public abstract Lorg/yaml/snakeyaml/representer/BaseRepresenter;
.super Ljava/lang/Object;
.source "BaseRepresenter.java"


# instance fields
.field protected defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

.field protected defaultScalarStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

.field private explicitPropertyUtils:Z

.field protected final multiRepresenters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/yaml/snakeyaml/representer/Represent;",
            ">;"
        }
    .end annotation
.end field

.field protected nullRepresenter:Lorg/yaml/snakeyaml/representer/Represent;

.field protected objectToRepresent:Ljava/lang/Object;

.field private propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

.field protected final representedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field protected final representers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/yaml/snakeyaml/representer/Represent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representers:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->multiRepresenters:Ljava/util/Map;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultScalarStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 51
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 52
    new-instance v0, Lorg/yaml/snakeyaml/representer/BaseRepresenter$1;

    invoke-direct {v0, p0}, Lorg/yaml/snakeyaml/representer/BaseRepresenter$1;-><init>(Lorg/yaml/snakeyaml/representer/BaseRepresenter;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->explicitPropertyUtils:Z

    return-void
.end method


# virtual methods
.method public getDefaultFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    .registers 2

    .line 192
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    return-object v0
.end method

.method public getDefaultScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;
    .registers 2

    .line 181
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultScalarStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    if-nez v0, :cond_7

    .line 182
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->PLAIN:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v0

    .line 184
    :cond_7
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultScalarStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    return-object v0
.end method

.method public final getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;
    .registers 2

    .line 201
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    if-nez v0, :cond_b

    .line 202
    new-instance v0, Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 204
    :cond_b
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    return-object v0
.end method

.method public final isExplicitPropertyUtils()Z
    .registers 2

    .line 208
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->explicitPropertyUtils:Z

    return v0
.end method

.method public represent(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;

    .line 65
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 66
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    .line 68
    return-object v0
.end method

.method protected final representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 7
    .param p1, "data"    # Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 75
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/nodes/Node;

    .line 76
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    return-object v0

    .line 80
    .end local v0    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_17
    const/4 v0, 0x0

    if-nez p1, :cond_21

    .line 81
    iget-object v1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->nullRepresenter:Lorg/yaml/snakeyaml/representer/Represent;

    invoke-interface {v1, v0}, Lorg/yaml/snakeyaml/representer/Represent;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 82
    .restart local v0    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    return-object v0

    .line 86
    .end local v0    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 87
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 88
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representers:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/representer/Represent;

    .line 89
    .local v0, "representer":Lorg/yaml/snakeyaml/representer/Represent;
    invoke-interface {v0, p1}, Lorg/yaml/snakeyaml/representer/Represent;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 90
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_88

    .line 92
    .end local v0    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_3a
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->multiRepresenters:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 93
    .local v3, "repr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_65

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 94
    iget-object v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->multiRepresenters:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/representer/Represent;

    .line 95
    .local v0, "representer":Lorg/yaml/snakeyaml/representer/Represent;
    invoke-interface {v0, p1}, Lorg/yaml/snakeyaml/representer/Represent;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v4

    .line 96
    .local v4, "node":Lorg/yaml/snakeyaml/nodes/Node;
    return-object v4

    .line 98
    .end local v0    # "representer":Lorg/yaml/snakeyaml/representer/Represent;
    .end local v3    # "repr":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_65
    goto :goto_44

    .line 101
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_66
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->multiRepresenters:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 102
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->multiRepresenters:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/representer/Represent;

    .line 103
    .restart local v0    # "representer":Lorg/yaml/snakeyaml/representer/Represent;
    invoke-interface {v0, p1}, Lorg/yaml/snakeyaml/representer/Represent;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 104
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_88

    .line 105
    .end local v0    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_7b
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/representer/Represent;

    .line 106
    .local v0, "representer":Lorg/yaml/snakeyaml/representer/Represent;
    invoke-interface {v0, p1}, Lorg/yaml/snakeyaml/representer/Represent;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    move-object v0, v2

    .line 109
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    :goto_88
    return-object v0
.end method

.method protected representMapping(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/Map;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 12
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p3, "flowStyle"    # Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            "Ljava/util/Map<",
            "**>;",
            "Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;",
            ")",
            "Lorg/yaml/snakeyaml/nodes/Node;"
        }
    .end annotation

    .line 151
    .local p2, "mapping":Ljava/util/Map;, "Ljava/util/Map<**>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .local v0, "value":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    new-instance v1, Lorg/yaml/snakeyaml/nodes/MappingNode;

    invoke-direct {v1, p1, v0, p3}, Lorg/yaml/snakeyaml/nodes/MappingNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/List;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 153
    .local v1, "node":Lorg/yaml/snakeyaml/nodes/MappingNode;
    iget-object v2, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    iget-object v3, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v2, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->FLOW:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 155
    .local v2, "bestStyle":Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 156
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v5

    .line 157
    .local v5, "nodeKey":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v6

    .line 158
    .local v6, "nodeValue":Lorg/yaml/snakeyaml/nodes/Node;
    instance-of v7, v5, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    if-eqz v7, :cond_48

    move-object v7, v5

    check-cast v7, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->isPlain()Z

    move-result v7

    if-nez v7, :cond_4a

    .line 159
    :cond_48
    sget-object v2, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->BLOCK:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 161
    :cond_4a
    instance-of v7, v6, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    if-eqz v7, :cond_57

    move-object v7, v6

    check-cast v7, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->isPlain()Z

    move-result v7

    if-nez v7, :cond_59

    .line 162
    :cond_57
    sget-object v2, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->BLOCK:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 164
    :cond_59
    new-instance v7, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    invoke-direct {v7, v5, v6}, Lorg/yaml/snakeyaml/nodes/NodeTuple;-><init>(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v5    # "nodeKey":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v6    # "nodeValue":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_1f

    .line 166
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_62
    sget-object v3, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    if-ne p3, v3, :cond_75

    .line 167
    iget-object v3, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    sget-object v4, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    if-eq v3, v4, :cond_72

    .line 168
    iget-object v3, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    invoke-virtual {v1, v3}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    goto :goto_75

    .line 170
    :cond_72
    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 173
    :cond_75
    :goto_75
    return-object v1
.end method

.method protected representScalar(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 4
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "value"    # Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representScalar(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method protected representScalar(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 11
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "style"    # Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 113
    if-nez p3, :cond_4

    .line 114
    iget-object p3, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultScalarStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 116
    :cond_4
    new-instance v6, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/yaml/snakeyaml/nodes/ScalarNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V

    .line 117
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    return-object v0
.end method

.method protected representSequence(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/lang/Iterable;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)Lorg/yaml/snakeyaml/nodes/Node;
    .registers 12
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p3, "flowStyle"    # Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/nodes/Tag;",
            "Ljava/lang/Iterable<",
            "*>;",
            "Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;",
            ")",
            "Lorg/yaml/snakeyaml/nodes/Node;"
        }
    .end annotation

    .line 125
    .local p2, "sequence":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/16 v0, 0xa

    .line 126
    .local v0, "size":I
    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_d

    .line 127
    move-object v1, p2

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 129
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .local v1, "value":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    new-instance v2, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    invoke-direct {v2, p1, v1, p3}, Lorg/yaml/snakeyaml/nodes/SequenceNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Ljava/util/List;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 131
    .local v2, "node":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    iget-object v3, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representedObjects:Ljava/util/Map;

    iget-object v4, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->objectToRepresent:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v3, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->FLOW:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 133
    .local v3, "bestStyle":Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 134
    .local v5, "item":Ljava/lang/Object;
    invoke-virtual {p0, v5}, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->representData(Ljava/lang/Object;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v6

    .line 135
    .local v6, "nodeItem":Lorg/yaml/snakeyaml/nodes/Node;
    instance-of v7, v6, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    if-eqz v7, :cond_3f

    move-object v7, v6

    check-cast v7, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->isPlain()Z

    move-result v7

    if-nez v7, :cond_41

    .line 136
    :cond_3f
    sget-object v3, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->BLOCK:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 138
    :cond_41
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v5    # "item":Ljava/lang/Object;
    .end local v6    # "nodeItem":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_24

    .line 140
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_45
    sget-object v4, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    if-ne p3, v4, :cond_58

    .line 141
    iget-object v4, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    sget-object v5, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->AUTO:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    if-eq v4, v5, :cond_55

    .line 142
    iget-object v4, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    invoke-virtual {v2, v4}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    goto :goto_58

    .line 144
    :cond_55
    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 147
    :cond_58
    :goto_58
    return-object v2
.end method

.method public setDefaultFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V
    .registers 2
    .param p1, "defaultFlowStyle"    # Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 188
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultFlowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 189
    return-void
.end method

.method public setDefaultScalarStyle(Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V
    .registers 2
    .param p1, "defaultStyle"    # Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 177
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->defaultScalarStyle:Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    .line 178
    return-void
.end method

.method public setPropertyUtils(Lorg/yaml/snakeyaml/introspector/PropertyUtils;)V
    .registers 3
    .param p1, "propertyUtils"    # Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 196
    iput-object p1, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->propertyUtils:Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/representer/BaseRepresenter;->explicitPropertyUtils:Z

    .line 198
    return-void
.end method
