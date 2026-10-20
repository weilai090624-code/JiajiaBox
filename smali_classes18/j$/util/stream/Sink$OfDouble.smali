.class public interface abstract Lj$/util/stream/Sink$OfDouble;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Lj$/util/stream/Sink;
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/stream/Sink<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/util/function/DoubleConsumer;"
    }
.end annotation


# virtual methods
.method public abstract accept(D)V
.end method

.method public abstract accept(Ljava/lang/Double;)V
.end method
