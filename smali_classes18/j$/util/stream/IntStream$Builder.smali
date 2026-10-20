.class public interface abstract Lj$/util/stream/IntStream$Builder;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract accept(I)V
.end method

.method public abstract add(I)Lj$/util/stream/IntStream$Builder;
.end method

.method public abstract build()Lj$/util/stream/IntStream;
.end method
