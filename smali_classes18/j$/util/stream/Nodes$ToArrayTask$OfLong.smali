.class final Lj$/util/stream/Nodes$ToArrayTask$OfLong;
.super Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive<",
        "Ljava/lang/Long;",
        "Ljava/util/function/LongConsumer;",
        "[J",
        "Lj$/util/Spliterator$OfLong;",
        "Lj$/util/stream/Node$OfLong;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lj$/util/stream/Node$OfLong;[JI)V
    .locals 1
    .param p1, "node"    # Lj$/util/stream/Node$OfLong;
    .param p2, "array"    # [J
    .param p3, "offset"    # I

    .line 2144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lj$/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Lj$/util/stream/Node$OfPrimitive;Ljava/lang/Object;ILj$/util/stream/Nodes-IA;)V

    .line 2145
    return-void
.end method

.method synthetic constructor <init>(Lj$/util/stream/Node$OfLong;[JILj$/util/stream/Nodes-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/Nodes$ToArrayTask$OfLong;-><init>(Lj$/util/stream/Node$OfLong;[JI)V

    return-void
.end method
