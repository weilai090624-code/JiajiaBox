.class public interface abstract Llibcore/LocalDNSTransport;
.super Ljava/lang/Object;
.source "LocalDNSTransport.java"


# virtual methods
.method public abstract exchange(Llibcore/ExchangeContext;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract lookup(Llibcore/ExchangeContext;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract networkHandle()J
.end method

.method public abstract raw()Z
.end method
