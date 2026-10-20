.class public final Lorg/yaml/snakeyaml/events/MappingStartEvent;
.super Lorg/yaml/snakeyaml/events/CollectionStartEvent;
.source "MappingStartEvent.java"


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

    invoke-direct/range {v0 .. v6}, Lorg/yaml/snakeyaml/events/MappingStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V
    .locals 0
    .param p1, "anchor"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "implicit"    # Z
    .param p4, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p5, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p6, "flowStyle"    # Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    .line 38
    invoke-direct/range {p0 .. p6}, Lorg/yaml/snakeyaml/events/CollectionStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getEventId()Lorg/yaml/snakeyaml/events/Event$ID;
    .locals 1

    .line 54
    sget-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->MappingStart:Lorg/yaml/snakeyaml/events/Event$ID;

    return-object v0
.end method
