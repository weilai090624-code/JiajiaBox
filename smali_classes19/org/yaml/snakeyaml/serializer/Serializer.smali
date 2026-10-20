.class public final Lorg/yaml/snakeyaml/serializer/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# instance fields
.field private anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

.field private anchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private closed:Ljava/lang/Boolean;

.field private final emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

.field private explicitEnd:Z

.field private explicitRoot:Lorg/yaml/snakeyaml/nodes/Tag;

.field private explicitStart:Z

.field private final resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

.field private serializedNodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field private useTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useVersion:Lorg/yaml/snakeyaml/DumperOptions$Version;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitable;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/nodes/Tag;)V
    .locals 1
    .param p1, "emitter"    # Lorg/yaml/snakeyaml/emitter/Emitable;
    .param p2, "resolver"    # Lorg/yaml/snakeyaml/resolver/Resolver;
    .param p3, "opts"    # Lorg/yaml/snakeyaml/DumperOptions;
    .param p4, "rootTag"    # Lorg/yaml/snakeyaml/nodes/Tag;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    .line 66
    iput-object p2, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 67
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->isExplicitStart()Z

    move-result v0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitStart:Z

    .line 68
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->isExplicitEnd()Z

    move-result v0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitEnd:Z

    .line 69
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getVersion()Lorg/yaml/snakeyaml/DumperOptions$Version;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getVersion()Lorg/yaml/snakeyaml/DumperOptions$Version;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->useVersion:Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 72
    :cond_0
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getTags()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->useTags:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->serializedNodes:Ljava/util/Set;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    .line 75
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getAnchorGenerator()Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    .line 77
    iput-object p4, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitRoot:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 78
    return-void
.end method

.method private anchorNode(Lorg/yaml/snakeyaml/nodes/Node;)V
    .locals 2

    .line 122
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v0

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->anchor:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-ne v0, v1, :cond_0

    .line 123
    check-cast p1, Lorg/yaml/snakeyaml/nodes/AnchorNode;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/AnchorNode;->getRealNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object p1

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    invoke-interface {v0, p1}, Lorg/yaml/snakeyaml/serializer/AnchorGenerator;->nextAnchor(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_1
    goto :goto_3

    .line 132
    :cond_2
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getAnchor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    invoke-interface {v1, p1}, Lorg/yaml/snakeyaml/serializer/AnchorGenerator;->nextAnchor(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lorg/yaml/snakeyaml/serializer/Serializer$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/NodeId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 142
    :pswitch_0
    check-cast p1, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 143
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object p1

    .line 144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 145
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    .line 146
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 147
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorNode(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 148
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorNode(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 149
    goto :goto_1

    .line 135
    :pswitch_1
    check-cast p1, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 136
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object p1

    .line 137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/nodes/Node;

    .line 138
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorNode(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 139
    goto :goto_2

    .line 140
    :cond_4
    nop

    .line 153
    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private serializeComments(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/comments/CommentLine;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    .local p1, "comments":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/comments/CommentLine;>;"
    if-nez p1, :cond_0

    .line 219
    return-void

    .line 221
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/comments/CommentLine;

    .line 222
    .local v1, "line":Lorg/yaml/snakeyaml/comments/CommentLine;
    new-instance v2, Lorg/yaml/snakeyaml/events/CommentEvent;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/comments/CommentLine;->getCommentType()Lorg/yaml/snakeyaml/comments/CommentType;

    move-result-object v3

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/comments/CommentLine;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/comments/CommentLine;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/comments/CommentLine;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/yaml/snakeyaml/events/CommentEvent;-><init>(Lorg/yaml/snakeyaml/comments/CommentType;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 224
    .local v2, "commentEvent":Lorg/yaml/snakeyaml/events/CommentEvent;
    iget-object v3, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    invoke-interface {v3, v2}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 225
    .end local v1    # "line":Lorg/yaml/snakeyaml/comments/CommentLine;
    .end local v2    # "commentEvent":Lorg/yaml/snakeyaml/events/CommentEvent;
    goto :goto_0

    .line 226
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private serializeNode(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V
    .locals 26
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .param p2, "parent"    # Lorg/yaml/snakeyaml/nodes/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v1

    sget-object v2, Lorg/yaml/snakeyaml/nodes/NodeId;->anchor:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-ne v1, v2, :cond_0

    .line 158
    move-object/from16 v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/AnchorNode;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/AnchorNode;->getRealNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    .end local p1    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    .local v1, "node":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_0

    .line 157
    .end local v1    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    .restart local p1    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_0
    move-object/from16 v1, p1

    .line 160
    .end local p1    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    .restart local v1    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :goto_0
    iget-object v2, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 161
    .local v2, "tAlias":Ljava/lang/String;
    iget-object v3, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->serializedNodes:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v10, 0x0

    if-eqz v3, :cond_1

    .line 162
    iget-object v3, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v4, Lorg/yaml/snakeyaml/events/AliasEvent;

    invoke-direct {v4, v2, v10, v10}, Lorg/yaml/snakeyaml/events/AliasEvent;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v3, v4}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    move-object/from16 v24, v2

    goto/16 :goto_3

    .line 164
    :cond_1
    iget-object v3, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->serializedNodes:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v3, Lorg/yaml/snakeyaml/serializer/Serializer$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v4

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/nodes/NodeId;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move-object v10, v5

    .local v10, "defaultTag":Lorg/yaml/snakeyaml/nodes/Tag;
    move-object v11, v5

    .local v11, "scalarNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    move-object v12, v5

    .local v12, "event":Lorg/yaml/snakeyaml/events/ScalarEvent;
    move-object v13, v5

    .local v13, "seqNode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    move-object v14, v5

    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    const/4 v3, 0x0

    move v15, v3

    .local v15, "implicitS":Z
    move-object/from16 v16, v5

    .local v16, "tuple":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    move-object/from16 v17, v5

    .line 195
    .local v17, "detectedTag":Lorg/yaml/snakeyaml/nodes/Tag;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getBlockComments()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeComments(Ljava/util/List;)V

    .line 196
    iget-object v3, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v5, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v9

    .line 197
    .local v9, "implicitTag":Lorg/yaml/snakeyaml/nodes/Tag;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 198
    .local v18, "implicitM":Z
    move-object v8, v1

    check-cast v8, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 199
    .local v8, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v19

    .line 200
    .local v19, "map":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    sget-object v4, Lorg/yaml/snakeyaml/nodes/Tag;->COMMENT:Lorg/yaml/snakeyaml/nodes/Tag;

    if-eq v3, v4, :cond_4

    .line 201
    iget-object v7, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v6, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/Tag;->getValue()Ljava/lang/String;

    move-result-object v5

    const/16 v20, 0x0

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v21

    const/16 v22, 0x0

    move-object v3, v6

    move-object v4, v2

    move-object/from16 v23, v6

    move/from16 v6, v18

    move-object/from16 v24, v2

    move-object v2, v7

    .end local v2    # "tAlias":Ljava/lang/String;
    .local v24, "tAlias":Ljava/lang/String;
    move-object/from16 v7, v22

    move-object/from16 v25, v8

    .end local v8    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .local v25, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    move-object/from16 v8, v20

    move-object/from16 v20, v9

    .end local v9    # "implicitTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .local v20, "implicitTag":Lorg/yaml/snakeyaml/nodes/Tag;
    move-object/from16 v9, v21

    invoke-direct/range {v3 .. v9}, Lorg/yaml/snakeyaml/events/MappingStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    move-object/from16 v3, v23

    invoke-interface {v2, v3}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 203
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    goto/16 :goto_2

    .line 167
    .end local v10    # "defaultTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v11    # "scalarNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v12    # "event":Lorg/yaml/snakeyaml/events/ScalarEvent;
    .end local v13    # "seqNode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    .end local v15    # "implicitS":Z
    .end local v16    # "tuple":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    .end local v17    # "detectedTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v18    # "implicitM":Z
    .end local v19    # "map":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v20    # "implicitTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v24    # "tAlias":Ljava/lang/String;
    .end local v25    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .local v2, "tAlias":Ljava/lang/String;
    :pswitch_1
    move-object v11, v1

    check-cast v11, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 168
    .restart local v11    # "scalarNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getBlockComments()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeComments(Ljava/util/List;)V

    .line 169
    iget-object v3, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v5, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v11}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6, v4}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v12

    .line 170
    .local v12, "detectedTag":Lorg/yaml/snakeyaml/nodes/Tag;
    iget-object v3, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v11}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v13

    .line 171
    .local v13, "defaultTag":Lorg/yaml/snakeyaml/nodes/Tag;
    new-instance v6, Lorg/yaml/snakeyaml/events/ImplicitTuple;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    invoke-virtual {v3, v12}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v4

    invoke-virtual {v4, v13}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {v6, v3, v4}, Lorg/yaml/snakeyaml/events/ImplicitTuple;-><init>(ZZ)V

    .line 173
    .local v6, "tuple":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    new-instance v14, Lorg/yaml/snakeyaml/events/ScalarEvent;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/Tag;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v11}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v10

    const/4 v8, 0x0

    move-object v3, v14

    move-object v4, v2

    invoke-direct/range {v3 .. v10}, Lorg/yaml/snakeyaml/events/ScalarEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/yaml/snakeyaml/events/ImplicitTuple;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V

    .line 175
    .local v3, "event":Lorg/yaml/snakeyaml/events/ScalarEvent;
    iget-object v4, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    invoke-interface {v4, v3}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 176
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getInLineComments()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeComments(Ljava/util/List;)V

    .line 177
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getEndComments()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeComments(Ljava/util/List;)V

    .line 178
    move-object/from16 v24, v2

    goto/16 :goto_3

    .line 165
    .end local v3    # "event":Lorg/yaml/snakeyaml/events/ScalarEvent;
    .end local v6    # "tuple":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    .end local v11    # "scalarNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v12    # "detectedTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v13    # "defaultTag":Lorg/yaml/snakeyaml/nodes/Tag;
    :pswitch_2
    move-object v11, v5

    .local v11, "defaultTag":Lorg/yaml/snakeyaml/nodes/Tag;
    move-object v12, v5

    .local v12, "scalarNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    move-object v13, v5

    .local v13, "event":Lorg/yaml/snakeyaml/events/ScalarEvent;
    move-object v14, v5

    .local v14, "tuple":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    move-object v15, v5

    .line 180
    .local v15, "detectedTag":Lorg/yaml/snakeyaml/nodes/Tag;
    move-object/from16 v16, v1

    check-cast v16, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 181
    .local v16, "seqNode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getBlockComments()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeComments(Ljava/util/List;)V

    .line 182
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    iget-object v5, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v6, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v5, v6, v10, v4}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 184
    .local v17, "implicitS":Z
    iget-object v9, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v8, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/Tag;->getValue()Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v16}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v19

    const/4 v7, 0x0

    move-object v3, v8

    move-object v4, v2

    move/from16 v6, v17

    move-object v10, v8

    move-object/from16 v8, v18

    move-object/from16 v18, v11

    move-object v11, v9

    .end local v11    # "defaultTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .local v18, "defaultTag":Lorg/yaml/snakeyaml/nodes/Tag;
    move-object/from16 v9, v19

    invoke-direct/range {v3 .. v9}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    invoke-interface {v11, v10}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 186
    invoke-virtual/range {v16 .. v16}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v3

    .line 187
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/yaml/snakeyaml/nodes/Node;

    .line 188
    .local v5, "item":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-direct {v0, v5, v1}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeNode(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 189
    .end local v5    # "item":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_1

    .line 190
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v4, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v5, Lorg/yaml/snakeyaml/events/SequenceEndEvent;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6}, Lorg/yaml/snakeyaml/events/SequenceEndEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v4, v5}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 191
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getInLineComments()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeComments(Ljava/util/List;)V

    .line 192
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getEndComments()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeComments(Ljava/util/List;)V

    .line 193
    move-object/from16 v24, v2

    goto :goto_3

    .line 203
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    .local v2, "i$":Ljava/util/Iterator;
    .restart local v10    # "defaultTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .local v11, "scalarNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .local v12, "event":Lorg/yaml/snakeyaml/events/ScalarEvent;
    .local v13, "seqNode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    .local v15, "implicitS":Z
    .local v16, "tuple":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    .local v17, "detectedTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .local v18, "implicitM":Z
    .restart local v19    # "map":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v20    # "implicitTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .restart local v24    # "tAlias":Ljava/lang/String;
    .restart local v25    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 204
    .local v3, "row":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v4

    .line 205
    .local v4, "key":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v5

    .line 206
    .local v5, "value":Lorg/yaml/snakeyaml/nodes/Node;
    move-object/from16 v6, v25

    .end local v25    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .local v6, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-direct {v0, v4, v6}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeNode(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 207
    invoke-direct {v0, v5, v6}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeNode(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 208
    .end local v3    # "row":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v4    # "key":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v5    # "value":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_2

    .line 203
    .end local v6    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .restart local v25    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    :cond_3
    move-object/from16 v6, v25

    .line 209
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v25    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .restart local v6    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    iget-object v2, v0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v3, Lorg/yaml/snakeyaml/events/MappingEndEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Lorg/yaml/snakeyaml/events/MappingEndEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v2, v3}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 210
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getInLineComments()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeComments(Ljava/util/List;)V

    .line 211
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Node;->getEndComments()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeComments(Ljava/util/List;)V

    goto :goto_3

    .line 200
    .end local v6    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v20    # "implicitTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v24    # "tAlias":Ljava/lang/String;
    .local v2, "tAlias":Ljava/lang/String;
    .restart local v8    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .restart local v9    # "implicitTag":Lorg/yaml/snakeyaml/nodes/Tag;
    :cond_4
    move-object/from16 v24, v2

    move-object v6, v8

    move-object/from16 v20, v9

    .line 215
    .end local v2    # "tAlias":Ljava/lang/String;
    .end local v8    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v9    # "implicitTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v10    # "defaultTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v11    # "scalarNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v12    # "event":Lorg/yaml/snakeyaml/events/ScalarEvent;
    .end local v13    # "seqNode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    .end local v15    # "implicitS":Z
    .end local v16    # "tuple":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    .end local v17    # "detectedTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v18    # "implicitM":Z
    .end local v19    # "map":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v24    # "tAlias":Ljava/lang/String;
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 94
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v1, Lorg/yaml/snakeyaml/events/StreamEndEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/yaml/snakeyaml/events/StreamEndEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 96
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    .line 98
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->serializedNodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 99
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 101
    :cond_0
    return-void

    .line 93
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/serializer/SerializerException;

    const-string v1, "serializer is not opened"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/serializer/SerializerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v1, Lorg/yaml/snakeyaml/events/StreamStartEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/yaml/snakeyaml/events/StreamStartEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 83
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    .line 89
    return-void

    .line 84
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Lorg/yaml/snakeyaml/serializer/SerializerException;

    const-string v1, "serializer is closed"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/serializer/SerializerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/serializer/SerializerException;

    const-string v1, "serializer is already opened"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/serializer/SerializerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serialize(Lorg/yaml/snakeyaml/nodes/Node;)V
    .locals 8
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v7, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    iget-boolean v4, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitStart:Z

    iget-object v5, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->useVersion:Lorg/yaml/snakeyaml/DumperOptions$Version;

    iget-object v6, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->useTags:Ljava/util/Map;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;ZLorg/yaml/snakeyaml/DumperOptions$Version;Ljava/util/Map;)V

    invoke-interface {v0, v7}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 111
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorNode(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 112
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitRoot:Lorg/yaml/snakeyaml/nodes/Tag;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitRoot:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {p1, v0}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 115
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeNode(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 116
    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v2, Lorg/yaml/snakeyaml/events/DocumentEndEvent;

    iget-boolean v3, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitEnd:Z

    invoke-direct {v2, v0, v0, v3}, Lorg/yaml/snakeyaml/events/DocumentEndEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Z)V

    invoke-interface {v1, v2}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 117
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->serializedNodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 118
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 119
    return-void

    .line 107
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/serializer/SerializerException;

    const-string v1, "serializer is closed"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/serializer/SerializerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    new-instance v0, Lorg/yaml/snakeyaml/serializer/SerializerException;

    const-string v1, "serializer is not opened"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/serializer/SerializerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
