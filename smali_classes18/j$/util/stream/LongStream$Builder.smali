.class public interface abstract Lj$/util/stream/LongStream$Builder;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract accept(J)V
.end method

.method public abstract add(J)Lj$/util/stream/LongStream$Builder;
.end method

.method public abstract build()Lj$/util/stream/LongStream;
.end method
