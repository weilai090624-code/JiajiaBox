.class Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Lorg/yaml/snakeyaml/emitter/EmitterState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/emitter/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpectFlowSequenceItem"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/emitter/Emitter;


# direct methods
.method private constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitter;)V
    .registers 2

    .line 528
    iput-object p1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/Emitter$1;)V
    .registers 3
    .param p1, "x0"    # Lorg/yaml/snakeyaml/emitter/Emitter;
    .param p2, "x1"    # Lorg/yaml/snakeyaml/emitter/Emitter$1;

    .line 528
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;)V

    return-void
.end method


# virtual methods
.method public expect()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;
    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/SequenceEndEvent;

    const-string v1, ","

    const/4 v2, 0x0

    if-eqz v0, :cond_84

    .line 531
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;
    invoke-static {v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v3

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    # setter for: Lorg/yaml/snakeyaml/emitter/Emitter;->indent:Ljava/lang/Integer;
    invoke-static {v0, v3}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2002(Lorg/yaml/snakeyaml/emitter/Emitter;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 532
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # operator-- for: Lorg/yaml/snakeyaml/emitter/Emitter;->flowLevel:I
    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2210(Lorg/yaml/snakeyaml/emitter/Emitter;)I

    .line 533
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;
    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1000(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 534
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0, v1, v2, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 535
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    goto :goto_4b

    .line 536
    :cond_3a
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;
    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2800(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 537
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 539
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    const-string v1, "]"

    invoke-virtual {v0, v1, v2, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 540
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->inlineCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;
    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2300(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->collectEvents()Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    .line 541
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # invokes: Lorg/yaml/snakeyaml/emitter/Emitter;->writeInlineComments()Z
    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2400(Lorg/yaml/snakeyaml/emitter/Emitter;)Z

    .line 542
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;
    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2800(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 543
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 545
    :cond_71
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;
    invoke-static {v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1700(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/emitter/EmitterState;

    # setter for: Lorg/yaml/snakeyaml/emitter/Emitter;->state:Lorg/yaml/snakeyaml/emitter/EmitterState;
    invoke-static {v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$202(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/emitter/EmitterState;)Lorg/yaml/snakeyaml/emitter/EmitterState;

    goto/16 :goto_110

    .line 546
    :cond_84
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;
    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    instance-of v0, v0, Lorg/yaml/snakeyaml/events/CommentEvent;

    if-eqz v0, :cond_a4

    .line 547
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->blockCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;
    invoke-static {v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1400(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    move-result-object v1

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;
    invoke-static {v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->collectEvents(Lorg/yaml/snakeyaml/events/Event;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v1

    # setter for: Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;
    invoke-static {v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$102(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/events/Event;)Lorg/yaml/snakeyaml/events/Event;

    goto :goto_110

    .line 549
    :cond_a4
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0, v1, v2, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndicator(Ljava/lang/String;ZZZ)V

    .line 550
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # invokes: Lorg/yaml/snakeyaml/emitter/Emitter;->writeBlockComment()V
    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1500(Lorg/yaml/snakeyaml/emitter/Emitter;)V

    .line 551
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->canonical:Ljava/lang/Boolean;
    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1000(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_dc

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->column:I
    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2500(Lorg/yaml/snakeyaml/emitter/Emitter;)I

    move-result v0

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->bestWidth:I
    invoke-static {v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2600(Lorg/yaml/snakeyaml/emitter/Emitter;)I

    move-result v1

    if-le v0, v1, :cond_d0

    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->splitLines:Z
    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2700(Lorg/yaml/snakeyaml/emitter/Emitter;)Z

    move-result v0

    if-nez v0, :cond_dc

    :cond_d0
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->prettyFlow:Ljava/lang/Boolean;
    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2800(Lorg/yaml/snakeyaml/emitter/Emitter;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 552
    :cond_dc
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->writeIndent()V

    .line 554
    :cond_e1
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->states:Lorg/yaml/snakeyaml/util/ArrayStack;
    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1700(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/util/ArrayStack;

    move-result-object v0

    new-instance v1, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;

    iget-object v3, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    invoke-direct {v1, v3}, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;-><init>(Lorg/yaml/snakeyaml/emitter/Emitter;)V

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 555
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # invokes: Lorg/yaml/snakeyaml/emitter/Emitter;->expectNode(ZZZ)V
    invoke-static {v0, v2, v2, v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$1800(Lorg/yaml/snakeyaml/emitter/Emitter;ZZZ)V

    .line 556
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    iget-object v1, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->inlineCommentsCollector:Lorg/yaml/snakeyaml/comments/CommentEventsCollector;
    invoke-static {v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2300(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/comments/CommentEventsCollector;

    move-result-object v1

    iget-object v2, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # getter for: Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;
    invoke-static {v2}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$100(Lorg/yaml/snakeyaml/emitter/Emitter;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/comments/CommentEventsCollector;->collectEvents(Lorg/yaml/snakeyaml/events/Event;)Lorg/yaml/snakeyaml/events/Event;

    move-result-object v1

    # setter for: Lorg/yaml/snakeyaml/emitter/Emitter;->event:Lorg/yaml/snakeyaml/events/Event;
    invoke-static {v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$102(Lorg/yaml/snakeyaml/emitter/Emitter;Lorg/yaml/snakeyaml/events/Event;)Lorg/yaml/snakeyaml/events/Event;

    .line 557
    iget-object v0, p0, Lorg/yaml/snakeyaml/emitter/Emitter$ExpectFlowSequenceItem;->this$0:Lorg/yaml/snakeyaml/emitter/Emitter;

    # invokes: Lorg/yaml/snakeyaml/emitter/Emitter;->writeInlineComments()Z
    invoke-static {v0}, Lorg/yaml/snakeyaml/emitter/Emitter;->access$2400(Lorg/yaml/snakeyaml/emitter/Emitter;)Z

    .line 559
    :goto_110
    return-void
.end method
