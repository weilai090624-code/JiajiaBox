.class public final Lokhttp3/internal/http2/Http2Reader;
.super Ljava/lang/Object;
.source "Http2Reader.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Reader$ContinuationSource;,
        Lokhttp3/internal/http2/Http2Reader$Handler;,
        Lokhttp3/internal/http2/Http2Reader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u0000 #2\u00020\u0001:\u0003#$%B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0016\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010J(\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J.\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J\u0018\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\u001f\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010 \u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010!\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002J(\u0010\"\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lokhttp3/internal/http2/Http2Reader;",
        "Ljava/io/Closeable;",
        "source",
        "Lokio/BufferedSource;",
        "client",
        "",
        "(Lokio/BufferedSource;Z)V",
        "continuation",
        "Lokhttp3/internal/http2/Http2Reader$ContinuationSource;",
        "hpackReader",
        "Lokhttp3/internal/http2/Hpack$Reader;",
        "close",
        "",
        "nextFrame",
        "requireSettings",
        "handler",
        "Lokhttp3/internal/http2/Http2Reader$Handler;",
        "readConnectionPreface",
        "readData",
        "length",
        "",
        "flags",
        "streamId",
        "readGoAway",
        "readHeaderBlock",
        "",
        "Lokhttp3/internal/http2/Header;",
        "padding",
        "readHeaders",
        "readPing",
        "readPriority",
        "readPushPromise",
        "readRstStream",
        "readSettings",
        "readWindowUpdate",
        "Companion",
        "ContinuationSource",
        "Handler",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lokhttp3/internal/http2/Http2Reader$Companion;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final client:Z

.field private final continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

.field private final hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokhttp3/internal/http2/Http2Reader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Http2Reader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/internal/http2/Http2Reader;->Companion:Lokhttp3/internal/http2/Http2Reader$Companion;

    .line 496
    const-class v0, Lokhttp3/internal/http2/Http2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "getLogger(Http2::class.java.name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lokio/BufferedSource;Z)V
    .registers 11
    .param p1, "source"    # Lokio/BufferedSource;
    .param p2, "client"    # Z

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    .line 61
    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Reader;->client:Z

    .line 63
    new-instance v0, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;-><init>(Lokio/BufferedSource;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    .line 64
    new-instance v0, Lokhttp3/internal/http2/Hpack$Reader;

    .line 65
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    move-object v3, v1

    check-cast v3, Lokio/Source;

    .line 66
    nop

    .line 64
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v4, 0x1000

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/http2/Hpack$Reader;-><init>(Lokio/Source;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    .line 58
    return-void
.end method

.method public static final synthetic access$getLogger$cp()Ljava/util/logging/Logger;
    .registers 1

    .line 58
    sget-object v0, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private final readData(Lokhttp3/internal/http2/Http2Reader$Handler;III)V
    .registers 12
    .param p1, "handler"    # Lokhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # I
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    if-eqz p4, :cond_3d

    .line 171
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 172
    .local v0, "inFinished":Z
    :goto_b
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 173
    .local v2, "gzipped":Z
    :goto_11
    if-nez v2, :cond_35

    .line 177
    and-int/lit8 v3, p3, 0x8

    if-eqz v3, :cond_23

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    const/16 v3, 0xff

    invoke-static {v1, v3}, Lokhttp3/internal/Util;->and(BI)I

    move-result v1

    .line 178
    .local v1, "padding":I
    :cond_23
    sget-object v3, Lokhttp3/internal/http2/Http2Reader;->Companion:Lokhttp3/internal/http2/Http2Reader$Companion;

    invoke-virtual {v3, p2, p3, v1}, Lokhttp3/internal/http2/Http2Reader$Companion;->lengthWithoutPadding(III)I

    move-result v3

    .line 180
    .local v3, "dataLength":I
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {p1, v0, p4, v4, v3}, Lokhttp3/internal/http2/Http2Reader$Handler;->data(ZILokio/BufferedSource;I)V

    .line 181
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    int-to-long v5, v1

    invoke-interface {v4, v5, v6}, Lokio/BufferedSource;->skip(J)V

    .line 182
    return-void

    .line 174
    .end local v1    # "padding":I
    .end local v3    # "dataLength":I
    :cond_35
    new-instance v1, Ljava/io/IOException;

    const-string v3, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    .end local v0    # "inFinished":Z
    .end local v2    # "gzipped":Z
    :cond_3d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final readGoAway(Lokhttp3/internal/http2/Http2Reader$Handler;III)V
    .registers 13
    .param p1, "handler"    # Lokhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # I
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    const/16 v0, 0x8

    if-lt p2, v0, :cond_43

    .line 293
    if-nez p4, :cond_3b

    .line 294
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 295
    .local v0, "lastStreamId":I
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 296
    .local v1, "errorCodeInt":I
    add-int/lit8 v2, p2, -0x8

    .line 297
    .local v2, "opaqueDataLength":I
    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->Companion:Lokhttp3/internal/http2/ErrorCode$Companion;

    invoke-virtual {v3, v1}, Lokhttp3/internal/http2/ErrorCode$Companion;->fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 299
    .local v3, "errorCode":Lokhttp3/internal/http2/ErrorCode;
    sget-object v4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 300
    .local v4, "debugData":Lokio/ByteString;
    if-lez v2, :cond_27

    .line 301
    iget-object v5, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    int-to-long v6, v2

    invoke-interface {v5, v6, v7}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v4

    .line 303
    :cond_27
    invoke-interface {p1, v0, v3, v4}, Lokhttp3/internal/http2/Http2Reader$Handler;->goAway(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V

    .line 304
    return-void

    .line 297
    .end local v3    # "errorCode":Lokhttp3/internal/http2/ErrorCode;
    .end local v4    # "debugData":Lokio/ByteString;
    :cond_2b
    new-instance v3, Ljava/io/IOException;

    .line 298
    const-string v4, "TYPE_GOAWAY unexpected error code: "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 293
    .end local v0    # "lastStreamId":I
    .end local v1    # "errorCodeInt":I
    .end local v2    # "opaqueDataLength":I
    :cond_3b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_GOAWAY streamId != 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_43
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_GOAWAY length < 8: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final readHeaderBlock(IIII)Ljava/util/List;
    .registers 7
    .param p1, "length"    # I
    .param p2, "padding"    # I
    .param p3, "flags"    # I
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->setLeft(I)V

    .line 155
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->setLength(I)V

    .line 156
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->setPadding(I)V

    .line 157
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    invoke-virtual {v0, p3}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->setFlags(I)V

    .line 158
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->continuation:Lokhttp3/internal/http2/Http2Reader$ContinuationSource;

    invoke-virtual {v0, p4}, Lokhttp3/internal/http2/Http2Reader$ContinuationSource;->setStreamId(I)V

    .line 162
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Hpack$Reader;->readHeaders()V

    .line 163
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->hpackReader:Lokhttp3/internal/http2/Hpack$Reader;

    invoke-virtual {v0}, Lokhttp3/internal/http2/Hpack$Reader;->getAndResetHeaderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final readHeaders(Lokhttp3/internal/http2/Http2Reader$Handler;III)V
    .registers 10
    .param p1, "handler"    # Lokhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # I
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    if-eqz p4, :cond_33

    .line 138
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 139
    .local v0, "endStream":Z
    :goto_a
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1a

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->and(BI)I

    move-result v1

    .line 141
    .local v1, "padding":I
    :cond_1a
    move v2, p2

    .line 142
    .local v2, "headerBlockLength":I
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_24

    .line 143
    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http2/Http2Reader;->readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V

    .line 144
    add-int/lit8 v2, v2, -0x5

    .line 146
    :cond_24
    sget-object v3, Lokhttp3/internal/http2/Http2Reader;->Companion:Lokhttp3/internal/http2/Http2Reader$Companion;

    invoke-virtual {v3, v2, p3, v1}, Lokhttp3/internal/http2/Http2Reader$Companion;->lengthWithoutPadding(III)I

    move-result v2

    .line 147
    invoke-direct {p0, v2, v1, p3, p4}, Lokhttp3/internal/http2/Http2Reader;->readHeaderBlock(IIII)Ljava/util/List;

    move-result-object v3

    .line 149
    .local v3, "headerBlock":Ljava/util/List;
    const/4 v4, -0x1

    invoke-interface {p1, v0, p4, v4, v3}, Lokhttp3/internal/http2/Http2Reader$Handler;->headers(ZIILjava/util/List;)V

    .line 150
    return-void

    .line 136
    .end local v0    # "endStream":Z
    .end local v1    # "padding":I
    .end local v2    # "headerBlockLength":I
    .end local v3    # "headerBlock":Ljava/util/List;
    :cond_33
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final readPing(Lokhttp3/internal/http2/Http2Reader$Handler;III)V
    .registers 8
    .param p1, "handler"    # Lokhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # I
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    const/16 v0, 0x8

    if-ne p2, v0, :cond_25

    .line 283
    if-nez p4, :cond_1d

    .line 284
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 285
    .local v0, "payload1":I
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    .line 286
    .local v1, "payload2":I
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 287
    .local v2, "ack":Z
    :goto_19
    invoke-interface {p1, v2, v0, v1}, Lokhttp3/internal/http2/Http2Reader$Handler;->ping(ZII)V

    .line 288
    return-void

    .line 283
    .end local v0    # "payload1":I
    .end local v1    # "payload2":I
    .end local v2    # "ack":Z
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_PING streamId != 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_PING length != 8: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V
    .registers 9
    .param p1, "handler"    # Lokhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 194
    .local v0, "w1":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 195
    .local v1, "exclusive":Z
    :goto_f
    const v3, 0x7fffffff

    and-int/2addr v3, v0

    .line 196
    .local v3, "streamDependency":I
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    const/16 v5, 0xff

    invoke-static {v4, v5}, Lokhttp3/internal/Util;->and(BI)I

    move-result v4

    add-int/2addr v4, v2

    .line 197
    .local v4, "weight":I
    invoke-interface {p1, p2, v3, v4, v1}, Lokhttp3/internal/http2/Http2Reader$Handler;->priority(IIIZ)V

    .line 198
    return-void
.end method

.method private final readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;III)V
    .registers 8
    .param p1, "handler"    # Lokhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # I
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    const/4 v0, 0x5

    if-ne p2, v0, :cond_11

    .line 187
    if-eqz p4, :cond_9

    .line 188
    invoke-direct {p0, p1, p4}, Lokhttp3/internal/http2/Http2Reader;->readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;I)V

    .line 189
    return-void

    .line 187
    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_PRIORITY streamId == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_11
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE_PRIORITY length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != 5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final readPushPromise(Lokhttp3/internal/http2/Http2Reader$Handler;III)V
    .registers 9
    .param p1, "handler"    # Lokhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # I
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    if-eqz p4, :cond_2e

    .line 273
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_13

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->and(BI)I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 274
    .local v0, "padding":I
    :goto_14
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    .line 275
    .local v1, "promisedStreamId":I
    sget-object v2, Lokhttp3/internal/http2/Http2Reader;->Companion:Lokhttp3/internal/http2/Http2Reader$Companion;

    add-int/lit8 v3, p2, -0x4

    invoke-virtual {v2, v3, p3, v0}, Lokhttp3/internal/http2/Http2Reader$Companion;->lengthWithoutPadding(III)I

    move-result v2

    .line 276
    .local v2, "headerBlockLength":I
    invoke-direct {p0, v2, v0, p3, p4}, Lokhttp3/internal/http2/Http2Reader;->readHeaderBlock(IIII)Ljava/util/List;

    move-result-object v3

    .line 277
    .local v3, "headerBlock":Ljava/util/List;
    invoke-interface {p1, p4, v1, v3}, Lokhttp3/internal/http2/Http2Reader$Handler;->pushPromise(IILjava/util/List;)V

    .line 278
    return-void

    .line 271
    .end local v0    # "padding":I
    .end local v1    # "promisedStreamId":I
    .end local v2    # "headerBlockLength":I
    .end local v3    # "headerBlock":Ljava/util/List;
    :cond_2e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final readRstStream(Lokhttp3/internal/http2/Http2Reader$Handler;III)V
    .registers 9
    .param p1, "handler"    # Lokhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # I
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2f

    .line 203
    if-eqz p4, :cond_27

    .line 204
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    .line 205
    .local v0, "errorCodeInt":I
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->Companion:Lokhttp3/internal/http2/ErrorCode$Companion;

    invoke-virtual {v1, v0}, Lokhttp3/internal/http2/ErrorCode$Companion;->fromHttp2(I)Lokhttp3/internal/http2/ErrorCode;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 207
    .local v1, "errorCode":Lokhttp3/internal/http2/ErrorCode;
    invoke-interface {p1, p4, v1}, Lokhttp3/internal/http2/Http2Reader$Handler;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    .line 208
    return-void

    .line 205
    .end local v1    # "errorCode":Lokhttp3/internal/http2/ErrorCode;
    :cond_17
    new-instance v1, Ljava/io/IOException;

    .line 206
    const-string v2, "TYPE_RST_STREAM unexpected error code: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    .end local v0    # "errorCodeInt":I
    :cond_27
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_RST_STREAM streamId == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_2f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE_RST_STREAM length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != 4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final readSettings(Lokhttp3/internal/http2/Http2Reader$Handler;III)V
    .registers 14
    .param p1, "handler"    # Lokhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # I
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    if-nez p4, :cond_a5

    .line 213
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_14

    .line 214
    if-nez p2, :cond_c

    .line 215
    invoke-interface {p1}, Lokhttp3/internal/http2/Http2Reader$Handler;->ackSettings()V

    .line 216
    return-void

    .line 214
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "FRAME_SIZE_ERROR ack frame should be empty!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_14
    rem-int/lit8 v0, p2, 0x6

    if-nez v0, :cond_95

    .line 220
    new-instance v0, Lokhttp3/internal/http2/Settings;

    invoke-direct {v0}, Lokhttp3/internal/http2/Settings;-><init>()V

    .line 221
    .local v0, "settings":Lokhttp3/internal/http2/Settings;
    const/4 v1, 0x0

    invoke-static {v1, p2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    check-cast v2, Lkotlin/ranges/IntProgression;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v3

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v4

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v2

    if-lez v2, :cond_39

    if-le v3, v4, :cond_3d

    :cond_39
    if-gez v2, :cond_91

    if-gt v4, v3, :cond_91

    :cond_3d
    move v5, v3

    .local v5, "i":I
    add-int/2addr v3, v2

    .line 222
    iget-object v6, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v6}, Lokio/BufferedSource;->readShort()S

    move-result v6

    const v7, 0xffff

    invoke-static {v6, v7}, Lokhttp3/internal/Util;->and(SI)I

    move-result v6

    .line 223
    .local v6, "id":I
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->readInt()I

    move-result v7

    .line 225
    .local v7, "value":I
    packed-switch v6, :pswitch_data_ae

    :pswitch_55
    goto :goto_8c

    .line 250
    :pswitch_56
    const/16 v8, 0x4000

    if-lt v7, v8, :cond_60

    const v8, 0xffffff

    if-gt v7, v8, :cond_60

    goto :goto_8c

    .line 251
    :cond_60
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: "

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :pswitch_70
    const/4 v6, 0x7

    .line 243
    if-ltz v7, :cond_74

    goto :goto_8c

    .line 244
    :cond_74
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :pswitch_7c
    const/4 v6, 0x4

    goto :goto_8c

    .line 232
    :pswitch_7e
    if-eqz v7, :cond_8c

    const/4 v8, 0x1

    if-ne v7, v8, :cond_84

    goto :goto_8c

    .line 233
    :cond_84
    new-instance v1, Ljava/io/IOException;

    const-string v2, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :cond_8c
    :goto_8c
    invoke-virtual {v0, v6, v7}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    .line 221
    .end local v6    # "id":I
    .end local v7    # "value":I
    if-ne v5, v4, :cond_3d

    .line 265
    .end local v5    # "i":I
    :cond_91
    invoke-interface {p1, v1, v0}, Lokhttp3/internal/http2/Http2Reader$Handler;->settings(ZLokhttp3/internal/http2/Settings;)V

    .line 266
    return-void

    .line 219
    .end local v0    # "settings":Lokhttp3/internal/http2/Settings;
    :cond_95
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_SETTINGS length % 6 != 0: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_a5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_SETTINGS streamId != 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_55
        :pswitch_7e
        :pswitch_7c
        :pswitch_70
        :pswitch_56
    .end packed-switch
.end method

.method private final readWindowUpdate(Lokhttp3/internal/http2/Http2Reader$Handler;III)V
    .registers 10
    .param p1, "handler"    # Lokhttp3/internal/http2/Http2Reader$Handler;
    .param p2, "length"    # I
    .param p3, "flags"    # I
    .param p4, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    const/4 v0, 0x4

    if-ne p2, v0, :cond_22

    .line 309
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v0

    const-wide/32 v1, 0x7fffffff

    invoke-static {v0, v1, v2}, Lokhttp3/internal/Util;->and(IJ)J

    move-result-wide v0

    .line 310
    .local v0, "increment":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1a

    .line 311
    invoke-interface {p1, p4, v0, v1}, Lokhttp3/internal/http2/Http2Reader$Handler;->windowUpdate(IJ)V

    .line 312
    return-void

    .line 310
    :cond_1a
    new-instance v2, Ljava/io/IOException;

    const-string v3, "windowSizeIncrement was 0"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    .end local v0    # "increment":J
    :cond_22
    new-instance v0, Ljava/io/IOException;

    const-string v1, "TYPE_WINDOW_UPDATE length !=4: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    .line 317
    return-void
.end method

.method public final nextFrame(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z
    .registers 14
    .param p1, "requireSettings"    # Z
    .param p2, "handler"    # Lokhttp3/internal/http2/Http2Reader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    nop

    .line 89
    :try_start_6
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    const-wide/16 v1, 0x9

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->require(J)V
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_d} :catch_a9

    .line 105
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-static {v0}, Lokhttp3/internal/Util;->readMedium(Lokio/BufferedSource;)I

    move-result v0

    .line 106
    .local v0, "length":I
    const/16 v1, 0x4000

    if-gt v0, v1, :cond_99

    .line 109
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    const/16 v2, 0xff

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->and(BI)I

    move-result v7

    .line 110
    .local v7, "type":I
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    invoke-static {v1, v2}, Lokhttp3/internal/Util;->and(BI)I

    move-result v8

    .line 111
    .local v8, "flags":I
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int v9, v1, v2

    .line 112
    .local v9, "streamId":I
    sget-object v1, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_52

    sget-object v10, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Lokhttp3/internal/http2/Http2;->INSTANCE:Lokhttp3/internal/http2/Http2;

    const/4 v2, 0x1

    move v3, v9

    move v4, v0

    move v5, v7

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/http2/Http2;->frameLog(ZIIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 114
    :cond_52
    if-eqz p1, :cond_6a

    const/4 v1, 0x4

    if-ne v7, v1, :cond_58

    goto :goto_6a

    .line 115
    :cond_58
    new-instance v1, Ljava/io/IOException;

    sget-object v2, Lokhttp3/internal/http2/Http2;->INSTANCE:Lokhttp3/internal/http2/Http2;

    invoke-virtual {v2, v7}, Lokhttp3/internal/http2/Http2;->formattedType$okhttp(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Expected a SETTINGS frame but was "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_6a
    :goto_6a
    packed-switch v7, :pswitch_data_ac

    .line 128
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/BufferedSource;->skip(J)V

    goto :goto_97

    .line 127
    :pswitch_74
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->readWindowUpdate(Lokhttp3/internal/http2/Http2Reader$Handler;III)V

    goto :goto_97

    .line 126
    :pswitch_78
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->readGoAway(Lokhttp3/internal/http2/Http2Reader$Handler;III)V

    goto :goto_97

    .line 125
    :pswitch_7c
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->readPing(Lokhttp3/internal/http2/Http2Reader$Handler;III)V

    goto :goto_97

    .line 124
    :pswitch_80
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->readPushPromise(Lokhttp3/internal/http2/Http2Reader$Handler;III)V

    goto :goto_97

    .line 123
    :pswitch_84
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->readSettings(Lokhttp3/internal/http2/Http2Reader$Handler;III)V

    goto :goto_97

    .line 122
    :pswitch_88
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->readRstStream(Lokhttp3/internal/http2/Http2Reader$Handler;III)V

    goto :goto_97

    .line 121
    :pswitch_8c
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->readPriority(Lokhttp3/internal/http2/Http2Reader$Handler;III)V

    goto :goto_97

    .line 120
    :pswitch_90
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->readHeaders(Lokhttp3/internal/http2/Http2Reader$Handler;III)V

    goto :goto_97

    .line 119
    :pswitch_94
    invoke-direct {p0, p2, v0, v8, v9}, Lokhttp3/internal/http2/Http2Reader;->readData(Lokhttp3/internal/http2/Http2Reader$Handler;III)V

    .line 131
    :goto_97
    const/4 v1, 0x1

    return v1

    .line 107
    .end local v7    # "type":I
    .end local v8    # "flags":I
    .end local v9    # "streamId":I
    :cond_99
    new-instance v1, Ljava/io/IOException;

    const-string v2, "FRAME_SIZE_ERROR: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    .end local v0    # "length":I
    :catch_a9
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, 0x0

    return v1

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_94
        :pswitch_90
        :pswitch_8c
        :pswitch_88
        :pswitch_84
        :pswitch_80
        :pswitch_7c
        :pswitch_78
        :pswitch_74
    .end packed-switch
.end method

.method public final readConnectionPreface(Lokhttp3/internal/http2/Http2Reader$Handler;)V
    .registers 6
    .param p1, "handler"    # Lokhttp3/internal/http2/Http2Reader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Reader;->client:Z

    if-eqz v0, :cond_19

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lokhttp3/internal/http2/Http2Reader;->nextFrame(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_4e

    .line 74
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Required SETTINGS preface not received"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_19
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Reader;->source:Lokio/BufferedSource;

    sget-object v1, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    .line 79
    .local v0, "connectionPreface":Lokio/ByteString;
    sget-object v1, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_46

    sget-object v1, Lokhttp3/internal/http2/Http2Reader;->logger:Ljava/util/logging/Logger;

    const-string v2, "<< CONNECTION "

    invoke-virtual {v0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 80
    :cond_46
    sget-object v1, Lokhttp3/internal/http2/Http2;->CONNECTION_PREFACE:Lokio/ByteString;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 84
    .end local v0    # "connectionPreface":Lokio/ByteString;
    :goto_4e
    return-void

    .line 81
    .restart local v0    # "connectionPreface":Lokio/ByteString;
    :cond_4f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Expected a connection header but was "

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
