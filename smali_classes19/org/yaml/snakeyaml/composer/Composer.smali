.class public Lorg/yaml/snakeyaml/composer/Composer;
.super Ljava/lang/Object;
.source "Composer.java"


# instance fields
.field private final anchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

.field private final inlineCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

.field private final loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

.field private nonScalarAliasesCount:I

.field protected final parser:Lorg/yaml/snakeyaml/parser/Parser;

.field private final recursiveNodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final resolver:Lorg/yaml/snakeyaml/resolver/Resolver;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;)V
    .locals 1
    .param p1, "parser"    # Lorg/yaml/snakeyaml/parser/Parser;
    .param p2, "resolver"    # Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 67
    new-instance v0, Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/LoaderOptions;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/composer/Composer;-><init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/LoaderOptions;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/LoaderOptions;)V
    .locals 5
    .param p1, "parser"    # Lorg/yaml/snakeyaml/parser/Parser;
    .param p2, "resolver"    # Lorg/yaml/snakeyaml/resolver/Resolver;
    .param p3, "loadingConfig"    # Lorg/yaml/snakeyaml/LoaderOptions;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->nonScalarAliasesCount:I

    .line 71
    iput-object p1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    .line 72
    iput-object p2, p0, Lorg/yaml/snakeyaml/composer/Composer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    .line 74
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    .line 75
    iput-object p3, p0, Lorg/yaml/snakeyaml/composer/Composer;->loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

    .line 76
    new-instance v1, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/yaml/snakeyaml/comments/CommentType;

    sget-object v3, Lorg/yaml/snakeyaml/comments/CommentType;->BLANK_LINE:Lorg/yaml/snakeyaml/comments/CommentType;

    aput-object v3, v2, v0

    sget-object v3, Lorg/yaml/snakeyaml/comments/CommentType;->BLOCK:Lorg/yaml/snakeyaml/comments/CommentType;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v1, p1, v2}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;-><init>(Lorg/yaml/snakeyaml/parser/Parser;[Lorg/yaml/snakeyaml/comments/CommentType;)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    .line 78
    new-instance v1, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    new-array v2, v4, [Lorg/yaml/snakeyaml/comments/CommentType;

    sget-object v3, Lorg/yaml/snakeyaml/comments/CommentType;->IN_LINE:Lorg/yaml/snakeyaml/comments/CommentType;

    aput-object v3, v2, v0

    invoke-direct {v1, p1, v2}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;-><init>(Lorg/yaml/snakeyaml/parser/Parser;[Lorg/yaml/snakeyaml/comments/CommentType;)V

    iput-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->inlineCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    .line 80
    return-void
.end method

.method private composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 6
    .param p1, "parent"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 157
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->collectEvents()Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    .line 158
    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->Alias:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/AliasEvent;

    .line 163
    .local v0, "event":Lorg/yaml/snakeyaml/events/AliasEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/AliasEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "anchor":Ljava/lang/String;
    iget-object v2, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 168
    iget-object v2, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/nodes/Node;

    .line 169
    .local v2, "node":Lorg/yaml/snakeyaml/nodes/Node;
    instance-of v3, v2, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 170
    iget v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->nonScalarAliasesCount:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->nonScalarAliasesCount:I

    .line 171
    iget v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->nonScalarAliasesCount:I

    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/LoaderOptions;->getMaxAliasesForCollections()I

    move-result v5

    if-gt v3, v5, :cond_1

    goto :goto_0

    .line 172
    :cond_1
    new-instance v3, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of aliases for non-scalar nodes exceeds the specified max="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/LoaderOptions;->getMaxAliasesForCollections()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    :cond_2
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    invoke-virtual {v2, v4}, Lorg/yaml/snakeyaml/nodes/Node;->setTwoStepsConstruction(Z)V

    .line 178
    :cond_3
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->consume()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/nodes/Node;->setBlockComments(Ljava/util/List;)V

    .line 179
    .end local v0    # "event":Lorg/yaml/snakeyaml/events/AliasEvent;
    .end local v1    # "anchor":Ljava/lang/String;
    goto :goto_1

    .line 165
    .end local v2    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    .restart local v0    # "event":Lorg/yaml/snakeyaml/events/AliasEvent;
    .restart local v1    # "anchor":Ljava/lang/String;
    :cond_4
    new-instance v2, Lorg/yaml/snakeyaml/composer/ComposerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found undefined alias "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/AliasEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Lorg/yaml/snakeyaml/composer/ComposerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2

    .line 180
    .end local v0    # "event":Lorg/yaml/snakeyaml/events/AliasEvent;
    .end local v1    # "anchor":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->peekEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/NodeEvent;

    .line 181
    .local v0, "event":Lorg/yaml/snakeyaml/events/NodeEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    .line 183
    .restart local v1    # "anchor":Ljava/lang/String;
    iget-object v2, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v3, Lorg/yaml/snakeyaml/events/Event$ID;->Scalar:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v2, v3}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 184
    iget-object v2, p0, Lorg/yaml/snakeyaml/composer/Composer;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->consume()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/yaml/snakeyaml/composer/Composer;->composeScalarNode(Ljava/lang/String;Ljava/util/List;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    .restart local v2    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_1

    .line 185
    .end local v2    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_6
    iget-object v2, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v3, Lorg/yaml/snakeyaml/events/Event$ID;->SequenceStart:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v2, v3}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 186
    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/composer/Composer;->composeSequenceNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    .restart local v2    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_1

    .line 188
    .end local v2    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_7
    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/composer/Composer;->composeMappingNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    .line 191
    .end local v0    # "event":Lorg/yaml/snakeyaml/events/NodeEvent;
    .end local v1    # "anchor":Ljava/lang/String;
    .restart local v2    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :goto_1
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 192
    return-object v2
.end method


# virtual methods
.method public checkNode()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->StreamStart:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected composeKeyNode(Lorg/yaml/snakeyaml/nodes/MappingNode;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 1
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 310
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/composer/Composer;->composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method protected composeMappingChildren(Ljava/util/List;Lorg/yaml/snakeyaml/nodes/MappingNode;)V
    .locals 3
    .param p2, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/nodes/NodeTuple;",
            ">;",
            "Lorg/yaml/snakeyaml/nodes/MappingNode;",
            ")V"
        }
    .end annotation

    .line 301
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-virtual {p0, p2}, Lorg/yaml/snakeyaml/composer/Composer;->composeKeyNode(Lorg/yaml/snakeyaml/nodes/MappingNode;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 302
    .local v0, "itemKey":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    sget-object v2, Lorg/yaml/snakeyaml/nodes/Tag;->MERGE:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setMerged(Z)V

    .line 305
    :cond_0
    invoke-virtual {p0, p2}, Lorg/yaml/snakeyaml/composer/Composer;->composeValueNode(Lorg/yaml/snakeyaml/nodes/MappingNode;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    .line 306
    .local v1, "itemValue":Lorg/yaml/snakeyaml/nodes/Node;
    new-instance v2, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/nodes/NodeTuple;-><init>(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    return-void
.end method

.method protected composeMappingNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 13
    .param p1, "anchor"    # Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    .line 261
    .local v0, "startEvent":Lorg/yaml/snakeyaml/events/MappingStartEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 264
    .local v2, "resolved":Z
    if-eqz v1, :cond_1

    const-string v3, "!"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    new-instance v3, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v3, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    .local v3, "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    goto :goto_1

    .line 265
    .end local v3    # "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getImplicit()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    .line 266
    .restart local v3    # "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    const/4 v2, 0x1

    .line 271
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v4

    .line 272
    .local v11, "children":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    new-instance v12, Lorg/yaml/snakeyaml/nodes/MappingNode;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v10

    move-object v4, v12

    move-object v5, v3

    move v6, v2

    move-object v7, v11

    invoke-direct/range {v4 .. v10}, Lorg/yaml/snakeyaml/nodes/MappingNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;ZLjava/util/List;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 274
    .local v4, "node":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->isFlow()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 275
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->consume()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setBlockComments(Ljava/util/List;)V

    .line 277
    :cond_2
    if-eqz p1, :cond_3

    .line 278
    invoke-virtual {v4, p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setAnchor(Ljava/lang/String;)V

    .line 279
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_3
    :goto_2
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v6, Lorg/yaml/snakeyaml/events/Event$ID;->MappingEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v5, v6}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 282
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->collectEvents()Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    .line 283
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v6, Lorg/yaml/snakeyaml/events/Event$ID;->MappingEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v5, v6}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 284
    goto :goto_3

    .line 286
    :cond_4
    invoke-virtual {p0, v11, v4}, Lorg/yaml/snakeyaml/composer/Composer;->composeMappingChildren(Ljava/util/List;Lorg/yaml/snakeyaml/nodes/MappingNode;)V

    goto :goto_2

    .line 288
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->isFlow()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 289
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->inlineCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->collectEvents()Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->consume()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setInLineComments(Ljava/util/List;)V

    .line 291
    :cond_6
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v5

    .line 292
    .local v5, "endEvent":Lorg/yaml/snakeyaml/events/Event;
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/events/Event;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setEndMark(Lorg/yaml/snakeyaml/error/Mark;)V

    .line 293
    iget-object v6, p0, Lorg/yaml/snakeyaml/composer/Composer;->inlineCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->collectEvents()Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    .line 294
    iget-object v6, p0, Lorg/yaml/snakeyaml/composer/Composer;->inlineCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 295
    iget-object v6, p0, Lorg/yaml/snakeyaml/composer/Composer;->inlineCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->consume()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setInLineComments(Ljava/util/List;)V

    .line 297
    :cond_7
    return-object v4
.end method

.method protected composeScalarNode(Ljava/lang/String;Ljava/util/List;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 12
    .param p1, "anchor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/comments/CommentLine;",
            ">;)",
            "Lorg/yaml/snakeyaml/nodes/Node;"
        }
    .end annotation

    .line 196
    .local p2, "blockComments":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/comments/CommentLine;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 197
    .local v0, "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 200
    .local v2, "resolved":Z
    if-eqz v1, :cond_1

    const-string v3, "!"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    new-instance v3, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v3, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    .local v3, "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    goto :goto_1

    .line 201
    .end local v3    # "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v6

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInPlainScalar()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    .line 203
    .restart local v3    # "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    const/4 v2, 0x1

    .line 207
    :goto_1
    new-instance v11, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v9

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v10

    move-object v4, v11

    move-object v5, v3

    move v6, v2

    invoke-direct/range {v4 .. v10}, Lorg/yaml/snakeyaml/nodes/ScalarNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;ZLjava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V

    .line 209
    .local v4, "node":Lorg/yaml/snakeyaml/nodes/Node;
    if-eqz p1, :cond_2

    .line 210
    invoke-virtual {v4, p1}, Lorg/yaml/snakeyaml/nodes/Node;->setAnchor(Ljava/lang/String;)V

    .line 211
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_2
    invoke-virtual {v4, p2}, Lorg/yaml/snakeyaml/nodes/Node;->setBlockComments(Ljava/util/List;)V

    .line 214
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->inlineCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->collectEvents()Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->consume()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/nodes/Node;->setInLineComments(Ljava/util/List;)V

    .line 215
    return-object v4
.end method

.method protected composeSequenceNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 13
    .param p1, "anchor"    # Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    .line 220
    .local v0, "startEvent":Lorg/yaml/snakeyaml/events/SequenceStartEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 224
    .local v2, "resolved":Z
    if-eqz v1, :cond_1

    const-string v3, "!"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    new-instance v3, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v3, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    .local v3, "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    goto :goto_1

    .line 225
    .end local v3    # "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getImplicit()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    .line 226
    .restart local v3    # "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    const/4 v2, 0x1

    .line 230
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v4

    .line 231
    .local v11, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/yaml/snakeyaml/nodes/Node;>;"
    new-instance v12, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v10

    move-object v4, v12

    move-object v5, v3

    move v6, v2

    move-object v7, v11

    invoke-direct/range {v4 .. v10}, Lorg/yaml/snakeyaml/nodes/SequenceNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;ZLjava/util/List;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 233
    .local v4, "node":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->isFlow()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 234
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->consume()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setBlockComments(Ljava/util/List;)V

    .line 236
    :cond_2
    if-eqz p1, :cond_3

    .line 237
    invoke-virtual {v4, p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setAnchor(Ljava/lang/String;)V

    .line 238
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_3
    :goto_2
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v6, Lorg/yaml/snakeyaml/events/Event$ID;->SequenceEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v5, v6}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 241
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->collectEvents()Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    .line 242
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v6, Lorg/yaml/snakeyaml/events/Event$ID;->SequenceEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v5, v6}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 243
    goto :goto_3

    .line 245
    :cond_4
    invoke-direct {p0, v4}, Lorg/yaml/snakeyaml/composer/Composer;->composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 247
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->isFlow()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 248
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->inlineCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->collectEvents()Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->consume()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setInLineComments(Ljava/util/List;)V

    .line 250
    :cond_6
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v5

    .line 251
    .local v5, "endEvent":Lorg/yaml/snakeyaml/events/Event;
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/events/Event;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setEndMark(Lorg/yaml/snakeyaml/error/Mark;)V

    .line 252
    iget-object v6, p0, Lorg/yaml/snakeyaml/composer/Composer;->inlineCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->collectEvents()Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    .line 253
    iget-object v6, p0, Lorg/yaml/snakeyaml/composer/Composer;->inlineCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 254
    iget-object v6, p0, Lorg/yaml/snakeyaml/composer/Composer;->inlineCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->consume()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setInLineComments(Ljava/util/List;)V

    .line 256
    :cond_7
    return-object v4
.end method

.method protected composeValueNode(Lorg/yaml/snakeyaml/nodes/MappingNode;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 1
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 314
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/composer/Composer;->composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Lorg/yaml/snakeyaml/nodes/Node;
    .locals 11

    .line 103
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->collectEvents()Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    .line 104
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->consume()Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, "commentLines":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/comments/CommentLine;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/comments/CommentLine;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/comments/CommentLine;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 107
    .local v1, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 108
    .local v9, "children":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    new-instance v10, Lorg/yaml/snakeyaml/nodes/MappingNode;

    sget-object v3, Lorg/yaml/snakeyaml/nodes/Tag;->COMMENT:Lorg/yaml/snakeyaml/nodes/Tag;

    const/4 v7, 0x0

    sget-object v8, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->BLOCK:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    const/4 v4, 0x0

    move-object v2, v10

    move-object v5, v9

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Lorg/yaml/snakeyaml/nodes/MappingNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;ZLjava/util/List;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 109
    .local v2, "node":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/nodes/Node;->setBlockComments(Ljava/util/List;)V

    .line 110
    return-object v2

    .line 113
    .end local v0    # "commentLines":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/comments/CommentLine;>;"
    .end local v1    # "startMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v2    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v9    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/composer/Composer;->composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 117
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->collectEvents()Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    .line 118
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->consume()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/nodes/Node;->setEndComments(Ljava/util/List;)V

    .line 121
    :cond_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v1}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 122
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 123
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 124
    return-object v0
.end method

.method public getSingleNode()Lorg/yaml/snakeyaml/nodes/Node;
    .locals 7

    .line 138
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "document":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v2, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v1, v2}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/composer/Composer;->getNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 145
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v2, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v1, v2}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v1}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v1

    .line 147
    .local v1, "event":Lorg/yaml/snakeyaml/events/Event;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 148
    .local v2, "contextMark":Lorg/yaml/snakeyaml/error/Mark;
    :goto_0
    new-instance v3, Lorg/yaml/snakeyaml/composer/ComposerException;

    const-string v4, "but found another document"

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/Event;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "expected a single document in the stream"

    invoke-direct {v3, v6, v2, v4, v5}, Lorg/yaml/snakeyaml/composer/ComposerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 152
    .end local v1    # "event":Lorg/yaml/snakeyaml/events/Event;
    .end local v2    # "contextMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_2
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v1}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 153
    return-object v0
.end method
