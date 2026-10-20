.class public interface abstract Llibcore/HTTPResponse;
.super Ljava/lang/Object;
.source "HTTPResponse.java"


# virtual methods
.method public abstract getContent()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getContentString()Llibcore/StringBox;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getHeader(Ljava/lang/String;)Llibcore/StringBox;
.end method

.method public abstract writeTo(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
