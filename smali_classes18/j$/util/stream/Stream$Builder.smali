.class public interface abstract Lj$/util/stream/Stream$Builder;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract accept(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract add(Ljava/lang/Object;)Lj$/util/stream/Stream$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lj$/util/stream/Stream$Builder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract build()Lj$/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method
