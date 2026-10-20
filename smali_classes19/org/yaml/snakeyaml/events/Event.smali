.class public abstract Lorg/yaml/snakeyaml/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/events/Event$ID;
    }
.end annotation


# instance fields
.field private final endMark:Lorg/yaml/snakeyaml/error/Mark;

.field private final startMark:Lorg/yaml/snakeyaml/error/Mark;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V
    .locals 0
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p2, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/yaml/snakeyaml/events/Event;->startMark:Lorg/yaml/snakeyaml/error/Mark;

    .line 44
    iput-object p2, p0, Lorg/yaml/snakeyaml/events/Event;->endMark:Lorg/yaml/snakeyaml/error/Mark;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 88
    instance-of v0, p1, Lorg/yaml/snakeyaml/events/Event;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/events/Event;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 91
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getArguments()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, ""

    return-object v0
.end method

.method public getEndMark()Lorg/yaml/snakeyaml/error/Mark;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/yaml/snakeyaml/events/Event;->endMark:Lorg/yaml/snakeyaml/error/Mark;

    return-object v0
.end method

.method public abstract getEventId()Lorg/yaml/snakeyaml/events/Event$ID;
.end method

.method public getStartMark()Lorg/yaml/snakeyaml/error/Mark;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/yaml/snakeyaml/events/Event;->startMark:Lorg/yaml/snakeyaml/error/Mark;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 100
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/events/Event;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public is(Lorg/yaml/snakeyaml/events/Event$ID;)Z
    .locals 1
    .param p1, "id"    # Lorg/yaml/snakeyaml/events/Event$ID;

    .line 74
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/events/Event;->getEventId()Lorg/yaml/snakeyaml/events/Event$ID;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/events/Event;->getArguments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
