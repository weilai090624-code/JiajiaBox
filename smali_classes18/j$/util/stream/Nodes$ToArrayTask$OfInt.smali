.class final Lj$/util/stream/Nodes$ToArrayTask$OfInt;
.super Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive<",
        "Ljava/lang/Integer;",
        "Ljava/util/function/IntConsumer;",
        "[I",
        "Lj$/util/Spliterator$OfInt;",
        "Lj$/util/stream/Node$OfInt;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lj$/util/stream/Node$OfInt;[II)V
    .locals 1
    .param p1, "node"    # Lj$/util/stream/Node$OfInt;
    .param p2, "array"    # [I
    .param p3, "offset"    # I

    .line 2136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Lj$/util/stream/Node$OfPrimitive;Ljava/lang/Object;ILj$/util/stream/Nodes-IA;)V

    .line 2137
    return-void
.end method

.method synthetic constructor <init>(Lj$/util/stream/Node$OfInt;[IILj$/util/stream/Nodes-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/Nodes$ToArrayTask$OfInt;-><init>(Lj$/util/stream/Node$OfInt;[II)V

    return-void
.end method
