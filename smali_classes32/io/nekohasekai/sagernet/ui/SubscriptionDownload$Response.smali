.class final Lio/nekohasekai/sagernet/ui/SubscriptionDownload$Response;
.super Ljava/lang/Object;
.source "SubscriptionDownload.java"

# interfaces
.implements Llibcore/HTTPResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/SubscriptionDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Response"
.end annotation


# instance fields
.field private final content:[B

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([BLjava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/SubscriptionDownload$Response;->content:[B

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/SubscriptionDownload$Response;->headers:Ljava/util/Map;

    return-void
.end method

.method private static box(Ljava/lang/String;)Llibcore/StringBox;
    .registers 2

    .line 109
    new-instance v0, Llibcore/StringBox;

    invoke-direct {v0}, Llibcore/StringBox;-><init>()V

    if-nez p0, :cond_9

    const-string p0, ""

    :cond_9
    invoke-virtual {v0, p0}, Llibcore/StringBox;->setValue(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getContent()[B
    .registers 2

    .line 110
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SubscriptionDownload$Response;->content:[B

    return-object v0
.end method

.method public getContentString()Llibcore/StringBox;
    .registers 4

    .line 111
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/SubscriptionDownload$Response;->content:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload$Response;->box(Ljava/lang/String;)Llibcore/StringBox;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Llibcore/StringBox;
    .registers 3

    .line 112
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/SubscriptionDownload$Response;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload$Response;->box(Ljava/lang/String;)Llibcore/StringBox;

    move-result-object p1

    return-object p1
.end method

.method public writeTo(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :try_start_5
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/SubscriptionDownload$Response;->content:[B

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_e

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_e
    move-exception p1

    :try_start_f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_17

    :catchall_13
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    throw p1
.end method
