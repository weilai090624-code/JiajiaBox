.class public abstract Lorg/yaml/snakeyaml/nodes/CollectionNode;
.super Lorg/yaml/snakeyaml/nodes/Node;
.source "CollectionNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/yaml/snakeyaml/nodes/Node;"
    }
.end annotation


# instance fields
.field private flowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/nodes/Tag;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p4, "flowStyle"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    .local p0, "this":Lorg/yaml/snakeyaml/nodes/CollectionNode;, "Lorg/yaml/snakeyaml/nodes/CollectionNode<TT;>;"
    invoke-static {p4}, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->fromBoolean(Ljava/lang/Boolean;)Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/yaml/snakeyaml/nodes/CollectionNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/nodes/Tag;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V
    .locals 0
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p4, "flowStyle"    # Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 31
    .local p0, "this":Lorg/yaml/snakeyaml/nodes/CollectionNode;, "Lorg/yaml/snakeyaml/nodes/CollectionNode<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/yaml/snakeyaml/nodes/Node;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 32
    invoke-virtual {p0, p4}, Lorg/yaml/snakeyaml/nodes/CollectionNode;->setFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    .locals 1

    .line 59
    .local p0, "this":Lorg/yaml/snakeyaml/nodes/CollectionNode;, "Lorg/yaml/snakeyaml/nodes/CollectionNode<TT;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/CollectionNode;->flowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    return-object v0
.end method

.method public abstract getValue()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public setEndMark(Lorg/yaml/snakeyaml/error/Mark;)V
    .locals 0
    .param p1, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 78
    .local p0, "this":Lorg/yaml/snakeyaml/nodes/CollectionNode;, "Lorg/yaml/snakeyaml/nodes/CollectionNode<TT;>;"
    iput-object p1, p0, Lorg/yaml/snakeyaml/nodes/CollectionNode;->endMark:Lorg/yaml/snakeyaml/error/Mark;

    .line 79
    return-void
.end method

.method public setFlowStyle(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "flowStyle"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    .local p0, "this":Lorg/yaml/snakeyaml/nodes/CollectionNode;, "Lorg/yaml/snakeyaml/nodes/CollectionNode<TT;>;"
    invoke-static {p1}, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->fromBoolean(Ljava/lang/Boolean;)Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/nodes/CollectionNode;->setFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 75
    return-void
.end method

.method public setFlowStyle(Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V
    .locals 2
    .param p1, "flowStyle"    # Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 63
    .local p0, "this":Lorg/yaml/snakeyaml/nodes/CollectionNode;, "Lorg/yaml/snakeyaml/nodes/CollectionNode<TT;>;"
    if-eqz p1, :cond_0

    .line 64
    iput-object p1, p0, Lorg/yaml/snakeyaml/nodes/CollectionNode;->flowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 65
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Flow style must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
