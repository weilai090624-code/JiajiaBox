.class final Llibcore/Libcore$proxyHTTPRequest;
.super Ljava/lang/Object;
.source "Libcore.java"

# interfaces
.implements Lgo/Seq$Proxy;
.implements Llibcore/HTTPRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/Libcore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "proxyHTTPRequest"
.end annotation


# instance fields
.field private final refnum:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llibcore/Libcore$proxyHTTPRequest;->refnum:I

    invoke-static {p1, p0}, Lgo/Seq;->trackGoRef(ILgo/Seq$GoObject;)V

    return-void
.end method


# virtual methods
.method public native allowInsecure()V
.end method

.method public native execute()Llibcore/HTTPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final incRefnum()I
    .locals 1

    .line 77
    iget v0, p0, Llibcore/Libcore$proxyHTTPRequest;->refnum:I

    invoke-static {v0, p0}, Lgo/Seq;->incGoRef(ILgo/Seq$GoObject;)V

    .line 78
    iget v0, p0, Llibcore/Libcore$proxyHTTPRequest;->refnum:I

    return v0
.end method

.method public native setContent([B)V
.end method

.method public native setContentString(Ljava/lang/String;)V
.end method

.method public native setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native setMethod(Ljava/lang/String;)V
.end method

.method public native setURL(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public native setUserAgent(Ljava/lang/String;)V
.end method
