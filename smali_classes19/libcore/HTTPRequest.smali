.class public interface abstract Llibcore/HTTPRequest;
.super Ljava/lang/Object;
.source "HTTPRequest.java"


# virtual methods
.method public abstract allowInsecure()V
.end method

.method public abstract execute()Llibcore/HTTPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setContent([B)V
.end method

.method public abstract setContentString(Ljava/lang/String;)V
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setMethod(Ljava/lang/String;)V
.end method

.method public abstract setURL(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setUserAgent(Ljava/lang/String;)V
.end method
