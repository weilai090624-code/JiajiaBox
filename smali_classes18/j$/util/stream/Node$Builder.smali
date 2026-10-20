.class public interface abstract Lj$/util/stream/Node$Builder;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lj$/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/Node$Builder$OfDouble;,
        Lj$/util/stream/Node$Builder$OfLong;,
        Lj$/util/stream/Node$Builder$OfInt;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lj$/util/stream/Sink<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract build()Lj$/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Node<",
            "TT;>;"
        }
    .end annotation
.end method
