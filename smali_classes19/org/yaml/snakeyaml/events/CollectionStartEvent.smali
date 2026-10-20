.class public abstract Lorg/yaml/snakeyaml/events/CollectionStartEvent;
.super Lorg/yaml/snakeyaml/events/NodeEvent;
.source "CollectionStartEvent.java"


# instance fields
.field private final flowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

.field private final implicit:Z

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "anchor"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "implicit"    # Z
    .param p4, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p5, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p6, "flowStyle"    # Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-static {p6}, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->fromBoolean(Ljava/lang/Boolean;)Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/yaml/snakeyaml/events/CollectionStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V
    .locals 2
    .param p1, "anchor"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "implicit"    # Z
    .param p4, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p5, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p6, "flowStyle"    # Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 34
    invoke-direct {p0, p1, p4, p5}, Lorg/yaml/snakeyaml/events/NodeEvent;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 35
    iput-object p2, p0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->tag:Ljava/lang/String;

    .line 36
    iput-boolean p3, p0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->implicit:Z

    .line 37
    if-eqz p6, :cond_0

    .line 38
    iput-object p6, p0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->flowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 39
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Flow style must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected getArguments()Ljava/lang/String;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getArguments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", implicit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->implicit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->flowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    return-object v0
.end method

.method public getImplicit()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->implicit:Z

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public isFlow()Z
    .locals 2

    .line 88
    sget-object v0, Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;->FLOW:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    iget-object v1, p0, Lorg/yaml/snakeyaml/events/CollectionStartEvent;->flowStyle:Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
