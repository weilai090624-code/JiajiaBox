.class Lorg/yaml/snakeyaml/comments/CommentEventsCollector$1;
.super Ljava/util/AbstractQueue;
.source "CommentEventsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/yaml/snakeyaml/comments/CommentEventsCollector;-><init>(Lorg/yaml/snakeyaml/parser/Parser;[Lorg/yaml/snakeyaml/comments/CommentType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractQueue<",
        "Lorg/yaml/snakeyaml/events/Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

.field final synthetic val$parser:Lorg/yaml/snakeyaml/parser/Parser;


# direct methods
.method constructor <init>(Lorg/yaml/snakeyaml/comments/CommentEventsCollector;Lorg/yaml/snakeyaml/parser/Parser;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector$1;->this$0:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    iput-object p2, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector$1;->val$parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/yaml/snakeyaml/events/Event;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 45
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/events/Event;

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector$1;->offer(Lorg/yaml/snakeyaml/events/Event;)Z

    move-result v0

    return v0
.end method

.method public offer(Lorg/yaml/snakeyaml/events/Event;)Z
    .locals 1
    .param p1, "e"    # Lorg/yaml/snakeyaml/events/Event;

    .line 49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector$1;->peek()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method public peek()Lorg/yaml/snakeyaml/events/Event;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector$1;->val$parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->peekEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector$1;->poll()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lorg/yaml/snakeyaml/events/Event;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector$1;->val$parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
