.class public interface abstract Lj$/util/stream/DoubleStream$Builder;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract accept(D)V
.end method

.method public abstract add(D)Lj$/util/stream/DoubleStream$Builder;
.end method

.method public abstract build()Lj$/util/stream/DoubleStream;
.end method
