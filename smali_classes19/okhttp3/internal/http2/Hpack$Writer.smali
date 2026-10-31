.class public final Lokhttp3/internal/http2/Hpack$Writer;
.super Ljava/lang/Object;
.source "Hpack.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Writer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0003H\u0002J\u0010\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0019\u001a\u00020\u000bH\u0002J\u000e\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0003J\u000e\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u001dJ\u0014\u0010\u001e\u001a\u00020\u00142\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0 J\u001e\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u0003R\u001c\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0012\u0010\r\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lokhttp3/internal/http2/Hpack$Writer;",
        "",
        "headerTableSizeSetting",
        "",
        "useCompression",
        "",
        "out",
        "Lokio/Buffer;",
        "(IZLokio/Buffer;)V",
        "dynamicTable",
        "",
        "Lokhttp3/internal/http2/Header;",
        "[Lokhttp3/internal/http2/Header;",
        "dynamicTableByteCount",
        "emitDynamicTableSizeUpdate",
        "headerCount",
        "maxDynamicTableByteCount",
        "nextHeaderIndex",
        "smallestHeaderTableSizeSetting",
        "adjustDynamicTableByteCount",
        "",
        "clearDynamicTable",
        "evictToRecoverBytes",
        "bytesToRecover",
        "insertIntoDynamicTable",
        "entry",
        "resizeHeaderTable",
        "writeByteString",
        "data",
        "Lokio/ByteString;",
        "writeHeaders",
        "headerBlock",
        "",
        "writeInt",
        "value",
        "prefixMask",
        "bits",
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


# instance fields
.field public dynamicTable:[Lokhttp3/internal/http2/Header;

.field public dynamicTableByteCount:I

.field private emitDynamicTableSizeUpdate:Z

.field public headerCount:I

.field public headerTableSizeSetting:I

.field public maxDynamicTableByteCount:I

.field private nextHeaderIndex:I

.field private final out:Lokio/Buffer;

.field private smallestHeaderTableSizeSetting:I

.field private final useCompression:Z


# direct methods
.method public constructor <init>(ILokio/Buffer;)V
    .registers 10

    const-string v0, "out"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/http2/Hpack$Writer;-><init>(IZLokio/Buffer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZLokio/Buffer;)V
    .registers 5
    .param p1, "headerTableSizeSetting"    # I
    .param p2, "useCompression"    # Z
    .param p3, "out"    # Lokio/Buffer;

    const-string v0, "out"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    .line 394
    iput-boolean p2, p0, Lokhttp3/internal/http2/Hpack$Writer;->useCompression:Z

    .line 395
    iput-object p3, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    .line 401
    const v0, 0x7fffffff

    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 403
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 406
    const/16 v0, 0x8

    new-array v0, v0, [Lokhttp3/internal/http2/Header;

    iput-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 408
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 392
    return-void
.end method

.method public synthetic constructor <init>(IZLokio/Buffer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    .line 392
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    .line 393
    const/16 p1, 0x1000

    .line 392
    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_b

    .line 394
    const/4 p2, 0x1

    .line 392
    :cond_b
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/http2/Hpack$Writer;-><init>(IZLokio/Buffer;)V

    .line 604
    return-void
.end method

.method public constructor <init>(Lokio/Buffer;)V
    .registers 9

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/http2/Hpack$Writer;-><init>(IZLokio/Buffer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final adjustDynamicTableByteCount()V
    .registers 3

    .line 596
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    if-ge v0, v1, :cond_16

    .line 597
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-nez v0, :cond_e

    .line 598
    invoke-direct {p0}, Lokhttp3/internal/http2/Hpack$Writer;->clearDynamicTable()V

    goto :goto_16

    .line 600
    :cond_e
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lokhttp3/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I

    .line 603
    :cond_16
    :goto_16
    return-void
.end method

.method private final clearDynamicTable()V
    .registers 7

    .line 413
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 415
    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 416
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 417
    return-void
.end method

.method private final evictToRecoverBytes(I)I
    .registers 10
    .param p1, "bytesToRecover"    # I

    .line 421
    move v0, p1

    .line 422
    .local v0, "bytesToRecover":I
    const/4 v1, 0x0

    .line 423
    .local v1, "entriesToEvict":I
    if-lez v0, :cond_58

    .line 425
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 426
    .local v2, "j":I
    :goto_9
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    if-lt v2, v3, :cond_32

    if-lez v0, :cond_32

    .line 427
    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aget-object v3, v3, v2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v3, Lokhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v0, v3

    .line 428
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    iget-object v4, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aget-object v4, v4, v2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, v4, Lokhttp3/internal/http2/Header;->hpackSize:I

    sub-int/2addr v3, v4

    iput v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 429
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 430
    add-int/lit8 v1, v1, 0x1

    .line 431
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 433
    :cond_32
    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    iget v4, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 434
    iget v6, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v1

    iget v7, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 433
    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    iget v4, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v1

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 436
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr v3, v1

    iput v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 438
    .end local v2    # "j":I
    :cond_58
    return v1
.end method

.method private final insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V
    .registers 9
    .param p1, "entry"    # Lokhttp3/internal/http2/Header;

    .line 442
    iget v0, p1, Lokhttp3/internal/http2/Header;->hpackSize:I

    .line 445
    .local v0, "delta":I
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-le v0, v1, :cond_a

    .line 446
    invoke-direct {p0}, Lokhttp3/internal/http2/Hpack$Writer;->clearDynamicTable()V

    .line 447
    return-void

    .line 451
    :cond_a
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v1, v0

    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    sub-int/2addr v1, v2

    .line 452
    .local v1, "bytesToRecover":I
    invoke-direct {p0, v1}, Lokhttp3/internal/http2/Hpack$Writer;->evictToRecoverBytes(I)I

    .line 454
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v3, v3

    if-le v2, v3, :cond_38

    .line 455
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lokhttp3/internal/http2/Header;

    .line 456
    .local v2, "doubled":[Lokhttp3/internal/http2/Header;
    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    iget-object v4, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v4, v4

    iget-object v5, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v5, v5

    const/4 v6, 0x0

    invoke-static {v3, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 458
    iput-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    .line 460
    .end local v2    # "doubled":[Lokhttp3/internal/http2/Header;
    :cond_38
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    .line 461
    .local v2, "index":I
    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aput-object p1, v3, v2

    .line 462
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerCount:I

    .line 463
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTableByteCount:I

    .line 464
    return-void
.end method


# virtual methods
.method public final resizeHeaderTable(I)V
    .registers 4
    .param p1, "headerTableSizeSetting"    # I

    .line 581
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->headerTableSizeSetting:I

    .line 582
    const/16 v0, 0x4000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 584
    .local v0, "effectiveHeaderTableSize":I
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ne v1, v0, :cond_d

    return-void

    .line 586
    :cond_d
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    if-ge v0, v1, :cond_1a

    .line 587
    nop

    .line 588
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 587
    iput v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 590
    :cond_1a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    .line 591
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    .line 592
    invoke-direct {p0}, Lokhttp3/internal/http2/Hpack$Writer;->adjustDynamicTableByteCount()V

    .line 593
    return-void
.end method

.method public final writeByteString(Lokio/ByteString;)V
    .registers 7
    .param p1, "data"    # Lokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    iget-boolean v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->useCompression:Z

    const/16 v1, 0x7f

    if-eqz v0, :cond_37

    sget-object v0, Lokhttp3/internal/http2/Huffman;->INSTANCE:Lokhttp3/internal/http2/Huffman;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Huffman;->encodedLength(Lokio/ByteString;)I

    move-result v0

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v2

    if-ge v0, v2, :cond_37

    .line 569
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 570
    .local v0, "huffmanBuffer":Lokio/Buffer;
    sget-object v2, Lokhttp3/internal/http2/Huffman;->INSTANCE:Lokhttp3/internal/http2/Huffman;

    move-object v3, v0

    check-cast v3, Lokio/BufferedSink;

    invoke-virtual {v2, p1, v3}, Lokhttp3/internal/http2/Huffman;->encode(Lokio/ByteString;Lokio/BufferedSink;)V

    .line 571
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v2

    .line 572
    .local v2, "huffmanBytes":Lokio/ByteString;
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v3

    const/16 v4, 0x80

    invoke-virtual {p0, v3, v1, v4}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 573
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v1, v2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    goto :goto_44

    .line 575
    .end local v0    # "huffmanBuffer":Lokio/Buffer;
    .end local v2    # "huffmanBytes":Lokio/ByteString;
    :cond_37
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 576
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 578
    :goto_44
    return-void
.end method

.method public final writeHeaders(Ljava/util/List;)V
    .registers 20
    .param p1, "headerBlock"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "headerBlock"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    iget-boolean v2, v0, Lokhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_29

    .line 471
    iget v2, v0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    iget v4, v0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    const/16 v5, 0x20

    const/16 v6, 0x1f

    if-ge v2, v4, :cond_1d

    .line 473
    iget v2, v0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    invoke-virtual {v0, v2, v6, v5}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 475
    :cond_1d
    iput-boolean v3, v0, Lokhttp3/internal/http2/Hpack$Writer;->emitDynamicTableSizeUpdate:Z

    .line 476
    const v2, 0x7fffffff

    iput v2, v0, Lokhttp3/internal/http2/Hpack$Writer;->smallestHeaderTableSizeSetting:I

    .line 477
    iget v2, v0, Lokhttp3/internal/http2/Hpack$Writer;->maxDynamicTableByteCount:I

    invoke-virtual {v0, v2, v6, v5}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 480
    :cond_29
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_123

    const/4 v4, 0x0

    :goto_30
    move v5, v4

    .local v5, "i":I
    const/4 v6, 0x1

    add-int/2addr v4, v6

    .line 481
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lokhttp3/internal/http2/Header;

    .line 482
    .local v7, "header":Lokhttp3/internal/http2/Header;
    iget-object v8, v7, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-virtual {v8}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v8

    .line 483
    .local v8, "name":Lokio/ByteString;
    iget-object v9, v7, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    .line 484
    .local v9, "value":Lokio/ByteString;
    const/4 v10, -0x1

    .line 485
    .local v10, "headerIndex":I
    const/4 v11, -0x1

    .line 487
    .local v11, "headerNameIndex":I
    sget-object v12, Lokhttp3/internal/http2/Hpack;->INSTANCE:Lokhttp3/internal/http2/Hpack;

    invoke-virtual {v12}, Lokhttp3/internal/http2/Hpack;->getNAME_TO_FIRST_INDEX()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 488
    .local v12, "staticIndex":Ljava/lang/Integer;
    if-eqz v12, :cond_88

    .line 489
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v11, v13, 0x1

    .line 490
    const/4 v13, 0x2

    if-gt v13, v11, :cond_5f

    const/4 v13, 0x7

    if-gt v11, v13, :cond_5f

    const/4 v13, 0x1

    goto :goto_60

    :cond_5f
    const/4 v13, 0x0

    :goto_60
    if-eqz v13, :cond_88

    .line 495
    sget-object v13, Lokhttp3/internal/http2/Hpack;->INSTANCE:Lokhttp3/internal/http2/Hpack;

    invoke-virtual {v13}, Lokhttp3/internal/http2/Hpack;->getSTATIC_HEADER_TABLE()[Lokhttp3/internal/http2/Header;

    move-result-object v13

    add-int/lit8 v14, v11, -0x1

    aget-object v13, v13, v14

    iget-object v13, v13, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_76

    .line 496
    move v10, v11

    goto :goto_88

    .line 497
    :cond_76
    sget-object v13, Lokhttp3/internal/http2/Hpack;->INSTANCE:Lokhttp3/internal/http2/Hpack;

    invoke-virtual {v13}, Lokhttp3/internal/http2/Hpack;->getSTATIC_HEADER_TABLE()[Lokhttp3/internal/http2/Header;

    move-result-object v13

    aget-object v13, v13, v11

    iget-object v13, v13, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_88

    .line 498
    add-int/lit8 v10, v11, 0x1

    .line 503
    :cond_88
    :goto_88
    const/4 v13, -0x1

    if-ne v10, v13, :cond_d7

    .line 504
    iget v14, v0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    add-int/2addr v14, v6

    iget-object v15, v0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    array-length v15, v15

    if-ge v14, v15, :cond_d7

    :goto_93
    move/from16 v16, v14

    .local v16, "j":I
    add-int/2addr v14, v6

    .line 505
    iget-object v6, v0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aget-object v6, v6, v16

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v6, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d1

    .line 506
    iget-object v6, v0, Lokhttp3/internal/http2/Hpack$Writer;->dynamicTable:[Lokhttp3/internal/http2/Header;

    aget-object v6, v6, v16

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, v6, Lokhttp3/internal/http2/Header;->value:Lokio/ByteString;

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 507
    iget v6, v0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    sub-int v6, v16, v6

    sget-object v14, Lokhttp3/internal/http2/Hpack;->INSTANCE:Lokhttp3/internal/http2/Hpack;

    invoke-virtual {v14}, Lokhttp3/internal/http2/Hpack;->getSTATIC_HEADER_TABLE()[Lokhttp3/internal/http2/Header;

    move-result-object v14

    array-length v14, v14

    add-int v10, v6, v14

    .line 508
    goto :goto_d7

    .line 509
    :cond_c2
    if-ne v11, v13, :cond_d1

    .line 510
    iget v6, v0, Lokhttp3/internal/http2/Hpack$Writer;->nextHeaderIndex:I

    sub-int v6, v16, v6

    sget-object v17, Lokhttp3/internal/http2/Hpack;->INSTANCE:Lokhttp3/internal/http2/Hpack;

    invoke-virtual/range {v17 .. v17}, Lokhttp3/internal/http2/Hpack;->getSTATIC_HEADER_TABLE()[Lokhttp3/internal/http2/Header;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v6, v3

    move v11, v6

    .line 504
    :cond_d1
    if-lt v14, v15, :cond_d4

    goto :goto_d7

    :cond_d4
    const/4 v3, 0x0

    const/4 v6, 0x1

    goto :goto_93

    .line 516
    .end local v16    # "j":I
    :cond_d7
    :goto_d7
    nop

    .line 517
    if-eq v10, v13, :cond_e3

    .line 519
    const/16 v3, 0x7f

    const/16 v6, 0x80

    invoke-virtual {v0, v10, v3, v6}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    const/4 v6, 0x0

    goto :goto_11d

    .line 521
    :cond_e3
    const/16 v3, 0x40

    if-ne v11, v13, :cond_f7

    .line 523
    iget-object v6, v0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v6, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 524
    invoke-virtual {v0, v8}, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 525
    invoke-virtual {v0, v9}, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 526
    invoke-direct {v0, v7}, Lokhttp3/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V

    const/4 v6, 0x0

    goto :goto_11d

    .line 528
    :cond_f7
    sget-object v6, Lokhttp3/internal/http2/Header;->PSEUDO_PREFIX:Lokio/ByteString;

    invoke-virtual {v8, v6}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v6

    if-eqz v6, :cond_111

    sget-object v6, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_111

    .line 531
    const/16 v3, 0xf

    const/4 v6, 0x0

    invoke-virtual {v0, v11, v3, v6}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 532
    invoke-virtual {v0, v9}, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    goto :goto_11d

    .line 528
    :cond_111
    const/4 v6, 0x0

    .line 536
    const/16 v13, 0x3f

    invoke-virtual {v0, v11, v13, v3}, Lokhttp3/internal/http2/Hpack$Writer;->writeInt(III)V

    .line 537
    invoke-virtual {v0, v9}, Lokhttp3/internal/http2/Hpack$Writer;->writeByteString(Lokio/ByteString;)V

    .line 538
    invoke-direct {v0, v7}, Lokhttp3/internal/http2/Hpack$Writer;->insertIntoDynamicTable(Lokhttp3/internal/http2/Header;)V

    .line 480
    .end local v7    # "header":Lokhttp3/internal/http2/Header;
    .end local v8    # "name":Lokio/ByteString;
    .end local v9    # "value":Lokio/ByteString;
    .end local v10    # "headerIndex":I
    .end local v11    # "headerNameIndex":I
    .end local v12    # "staticIndex":Ljava/lang/Integer;
    :goto_11d
    if-lt v4, v2, :cond_120

    goto :goto_123

    :cond_120
    const/4 v3, 0x0

    goto/16 :goto_30

    .line 542
    .end local v5    # "i":I
    :cond_123
    :goto_123
    return-void
.end method

.method public final writeInt(III)V
    .registers 8
    .param p1, "value"    # I
    .param p2, "prefixMask"    # I
    .param p3, "bits"    # I

    .line 546
    move v0, p1

    .line 548
    .local v0, "value":I
    if-ge v0, p2, :cond_b

    .line 549
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    or-int v2, p3, v0

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 550
    return-void

    .line 554
    :cond_b
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    or-int v2, p3, p2

    invoke-virtual {v1, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 555
    sub-int/2addr v0, p2

    .line 558
    :goto_13
    const/16 v1, 0x80

    if-lt v0, v1, :cond_23

    .line 559
    and-int/lit8 v1, v0, 0x7f

    .line 560
    .local v1, "b":I
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    or-int/lit16 v3, v1, 0x80

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 561
    ushr-int/lit8 v0, v0, 0x7

    .end local v1    # "b":I
    goto :goto_13

    .line 563
    :cond_23
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->out:Lokio/Buffer;

    invoke-virtual {v1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 564
    return-void
.end method
