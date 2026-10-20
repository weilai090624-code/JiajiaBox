.class public Lorg/yaml/snakeyaml/comments/CommentLine;
.super Ljava/lang/Object;
.source "CommentLine.java"


# instance fields
.field private commentType:Lorg/yaml/snakeyaml/comments/CommentType;

.field private endMark:Lorg/yaml/snakeyaml/error/Mark;

.field private startMark:Lorg/yaml/snakeyaml/error/Mark;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/comments/CommentType;)V
    .locals 0
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p2, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "commentType"    # Lorg/yaml/snakeyaml/comments/CommentType;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/yaml/snakeyaml/comments/CommentLine;->startMark:Lorg/yaml/snakeyaml/error/Mark;

    .line 36
    iput-object p2, p0, Lorg/yaml/snakeyaml/comments/CommentLine;->endMark:Lorg/yaml/snakeyaml/error/Mark;

    .line 37
    iput-object p3, p0, Lorg/yaml/snakeyaml/comments/CommentLine;->value:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lorg/yaml/snakeyaml/comments/CommentLine;->commentType:Lorg/yaml/snakeyaml/comments/CommentType;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/events/CommentEvent;)V
    .locals 4
    .param p1, "event"    # Lorg/yaml/snakeyaml/events/CommentEvent;

    .line 31
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/events/CommentEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/events/CommentEvent;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/events/CommentEvent;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/events/CommentEvent;->getCommentType()Lorg/yaml/snakeyaml/comments/CommentType;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/yaml/snakeyaml/comments/CommentLine;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/comments/CommentType;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getCommentType()Lorg/yaml/snakeyaml/comments/CommentType;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/yaml/snakeyaml/comments/CommentLine;->commentType:Lorg/yaml/snakeyaml/comments/CommentType;

    return-object v0
.end method

.method public getEndMark()Lorg/yaml/snakeyaml/error/Mark;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/yaml/snakeyaml/comments/CommentLine;->endMark:Lorg/yaml/snakeyaml/error/Mark;

    return-object v0
.end method

.method public getStartMark()Lorg/yaml/snakeyaml/error/Mark;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/yaml/snakeyaml/comments/CommentLine;->startMark:Lorg/yaml/snakeyaml/error/Mark;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/yaml/snakeyaml/comments/CommentLine;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
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

    const-string v1, " (type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/comments/CommentLine;->getCommentType()Lorg/yaml/snakeyaml/comments/CommentType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/comments/CommentLine;->getValue()Ljava/lang/String;

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
