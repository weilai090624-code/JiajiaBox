.class public Lorg/yaml/snakeyaml/comments/CommentEventsCollector;
.super Ljava/lang/Object;
.source "CommentEventsCollector.java"


# instance fields
.field private commentLineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/comments/CommentLine;",
            ">;"
        }
    .end annotation
.end field

.field private eventSource:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/yaml/snakeyaml/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field private expectedCommentTypes:[Lorg/yaml/snakeyaml/comments/CommentType;


# direct methods
.method public varargs constructor <init>(Ljava/util/Queue;[Lorg/yaml/snakeyaml/comments/CommentType;)V
    .locals 1
    .param p2, "expectedCommentTypes"    # [Lorg/yaml/snakeyaml/comments/CommentType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/yaml/snakeyaml/events/Event;",
            ">;[",
            "Lorg/yaml/snakeyaml/comments/CommentType;",
            ")V"
        }
    .end annotation

    .line 86
    .local p1, "eventSource":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/yaml/snakeyaml/events/Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->eventSource:Ljava/util/Queue;

    .line 88
    iput-object p2, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->expectedCommentTypes:[Lorg/yaml/snakeyaml/comments/CommentType;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->commentLineList:Ljava/util/List;

    .line 90
    return-void
.end method

.method public varargs constructor <init>(Lorg/yaml/snakeyaml/parser/Parser;[Lorg/yaml/snakeyaml/comments/CommentType;)V
    .locals 1
    .param p1, "parser"    # Lorg/yaml/snakeyaml/parser/Parser;
    .param p2, "expectedCommentTypes"    # [Lorg/yaml/snakeyaml/comments/CommentType;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector$1;

    invoke-direct {v0, p0, p1}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector$1;-><init>(Lorg/yaml/snakeyaml/comments/CommentEventsCollector;Lorg/yaml/snakeyaml/parser/Parser;)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->eventSource:Ljava/util/Queue;

    .line 73
    iput-object p2, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->expectedCommentTypes:[Lorg/yaml/snakeyaml/comments/CommentType;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->commentLineList:Ljava/util/List;

    .line 75
    return-void
.end method

.method private isEventExpected(Lorg/yaml/snakeyaml/events/Event;)Z
    .locals 7
    .param p1, "event"    # Lorg/yaml/snakeyaml/events/Event;

    .line 100
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->Comment:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-virtual {p1, v1}, Lorg/yaml/snakeyaml/events/Event;->is(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/events/CommentEvent;

    .line 104
    .local v1, "commentEvent":Lorg/yaml/snakeyaml/events/CommentEvent;
    iget-object v2, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->expectedCommentTypes:[Lorg/yaml/snakeyaml/comments/CommentType;

    .local v2, "arr$":[Lorg/yaml/snakeyaml/comments/CommentType;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 105
    .local v5, "type":Lorg/yaml/snakeyaml/comments/CommentType;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/CommentEvent;->getCommentType()Lorg/yaml/snakeyaml/comments/CommentType;

    move-result-object v6

    if-ne v6, v5, :cond_1

    .line 106
    const/4 v0, 0x1

    return v0

    .line 104
    .end local v5    # "type":Lorg/yaml/snakeyaml/comments/CommentType;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "arr$":[Lorg/yaml/snakeyaml/comments/CommentType;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_2
    return v0

    .line 101
    .end local v1    # "commentEvent":Lorg/yaml/snakeyaml/events/CommentEvent;
    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public collectEvents()Lorg/yaml/snakeyaml/comments/CommentEventsCollector;
    .locals 1

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->collectEvents(Lorg/yaml/snakeyaml/events/Event;)Lorg/yaml/snakeyaml/events/Event;

    .line 120
    return-object p0
.end method

.method public collectEvents(Lorg/yaml/snakeyaml/events/Event;)Lorg/yaml/snakeyaml/events/Event;
    .locals 3
    .param p1, "event"    # Lorg/yaml/snakeyaml/events/Event;

    .line 133
    if-eqz p1, :cond_1

    .line 134
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->isEventExpected(Lorg/yaml/snakeyaml/events/Event;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->commentLineList:Ljava/util/List;

    new-instance v1, Lorg/yaml/snakeyaml/comments/CommentLine;

    move-object v2, p1

    check-cast v2, Lorg/yaml/snakeyaml/events/CommentEvent;

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/comments/CommentLine;-><init>(Lorg/yaml/snakeyaml/events/CommentEvent;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_0
    return-object p1

    .line 140
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->eventSource:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/Event;

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->isEventExpected(Lorg/yaml/snakeyaml/events/Event;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->commentLineList:Ljava/util/List;

    new-instance v1, Lorg/yaml/snakeyaml/comments/CommentLine;

    iget-object v2, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->eventSource:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/events/CommentEvent;

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/comments/CommentLine;-><init>(Lorg/yaml/snakeyaml/events/CommentEvent;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public collectEventsAndPoll(Lorg/yaml/snakeyaml/events/Event;)Lorg/yaml/snakeyaml/events/Event;
    .locals 2
    .param p1, "event"    # Lorg/yaml/snakeyaml/events/Event;

    .line 156
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->collectEvents(Lorg/yaml/snakeyaml/events/Event;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    .line 157
    .local v0, "nextEvent":Lorg/yaml/snakeyaml/events/Event;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->eventSource:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/events/Event;

    :goto_0
    return-object v1
.end method

.method public consume()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/comments/CommentLine;",
            ">;"
        }
    .end annotation

    .line 167
    :try_start_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->commentLineList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->commentLineList:Ljava/util/List;

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->commentLineList:Ljava/util/List;

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->commentLineList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
