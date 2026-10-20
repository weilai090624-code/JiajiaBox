.class public final Lorg/yaml/snakeyaml/events/CommentEvent;
.super Lorg/yaml/snakeyaml/events/Event;
.source "CommentEvent.java"


# instance fields
.field private final type:Lorg/yaml/snakeyaml/comments/CommentType;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/comments/CommentType;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V
    .locals 2
    .param p1, "type"    # Lorg/yaml/snakeyaml/comments/CommentType;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p4, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 29
    invoke-direct {p0, p3, p4}, Lorg/yaml/snakeyaml/events/Event;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 30
    if-eqz p1, :cond_1

    .line 31
    iput-object p1, p0, Lorg/yaml/snakeyaml/events/CommentEvent;->type:Lorg/yaml/snakeyaml/comments/CommentType;

    .line 32
    if-eqz p2, :cond_0

    .line 33
    iput-object p2, p0, Lorg/yaml/snakeyaml/events/CommentEvent;->value:Ljava/lang/String;

    .line 34
    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Value must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Event Type must be provided."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected getArguments()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/yaml/snakeyaml/events/Event;->getArguments()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/events/CommentEvent;->type:Lorg/yaml/snakeyaml/comments/CommentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/events/CommentEvent;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentType()Lorg/yaml/snakeyaml/comments/CommentType;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/yaml/snakeyaml/events/CommentEvent;->type:Lorg/yaml/snakeyaml/comments/CommentType;

    return-object v0
.end method

.method public getEventId()Lorg/yaml/snakeyaml/events/Event$ID;
    .locals 1

    .line 64
    sget-object v0, Lorg/yaml/snakeyaml/events/Event$ID;->Comment:Lorg/yaml/snakeyaml/events/Event$ID;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/yaml/snakeyaml/events/CommentEvent;->value:Ljava/lang/String;

    return-object v0
.end method
