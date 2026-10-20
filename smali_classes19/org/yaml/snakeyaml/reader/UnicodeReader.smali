.class public Lorg/yaml/snakeyaml/reader/UnicodeReader;
.super Ljava/io/Reader;
.source "UnicodeReader.java"


# static fields
.field private static final BOM_SIZE:I = 0x3

.field private static final UTF16BE:Ljava/nio/charset/Charset;

.field private static final UTF16LE:Ljava/nio/charset/Charset;

.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field internalIn:Ljava/io/PushbackInputStream;

.field internalIn2:Ljava/io/InputStreamReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->UTF8:Ljava/nio/charset/Charset;

    .line 55
    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->UTF16BE:Ljava/nio/charset/Charset;

    .line 56
    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->UTF16LE:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .line 67
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    .line 68
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn:Ljava/io/PushbackInputStream;

    .line 69
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/reader/UnicodeReader;->init()V

    .line 120
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 121
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    if-eqz v0, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 92
    .local v0, "bom":[B
    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn:Ljava/io/PushbackInputStream;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v1

    .line 94
    .local v1, "n":I
    aget-byte v2, v0, v3

    const/16 v4, -0x11

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    aget-byte v2, v0, v5

    const/16 v4, -0x45

    if-ne v2, v4, :cond_1

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    const/16 v4, -0x41

    if-ne v2, v4, :cond_1

    .line 95
    sget-object v2, Lorg/yaml/snakeyaml/reader/UnicodeReader;->UTF8:Ljava/nio/charset/Charset;

    .line 96
    .local v2, "encoding":Ljava/nio/charset/Charset;
    add-int/lit8 v3, v1, -0x3

    .local v3, "unread":I
    goto :goto_0

    .line 97
    .end local v2    # "encoding":Ljava/nio/charset/Charset;
    .end local v3    # "unread":I
    :cond_1
    aget-byte v2, v0, v3

    const/4 v4, -0x1

    const/4 v6, -0x2

    if-ne v2, v6, :cond_2

    aget-byte v2, v0, v5

    if-ne v2, v4, :cond_2

    .line 98
    sget-object v2, Lorg/yaml/snakeyaml/reader/UnicodeReader;->UTF16BE:Ljava/nio/charset/Charset;

    .line 99
    .restart local v2    # "encoding":Ljava/nio/charset/Charset;
    add-int/lit8 v3, v1, -0x2

    .restart local v3    # "unread":I
    goto :goto_0

    .line 100
    .end local v2    # "encoding":Ljava/nio/charset/Charset;
    .end local v3    # "unread":I
    :cond_2
    aget-byte v2, v0, v3

    if-ne v2, v4, :cond_3

    aget-byte v2, v0, v5

    if-ne v2, v6, :cond_3

    .line 101
    sget-object v2, Lorg/yaml/snakeyaml/reader/UnicodeReader;->UTF16LE:Ljava/nio/charset/Charset;

    .line 102
    .restart local v2    # "encoding":Ljava/nio/charset/Charset;
    add-int/lit8 v3, v1, -0x2

    .restart local v3    # "unread":I
    goto :goto_0

    .line 105
    .end local v2    # "encoding":Ljava/nio/charset/Charset;
    .end local v3    # "unread":I
    :cond_3
    sget-object v2, Lorg/yaml/snakeyaml/reader/UnicodeReader;->UTF8:Ljava/nio/charset/Charset;

    .line 106
    .restart local v2    # "encoding":Ljava/nio/charset/Charset;
    move v3, v1

    .line 109
    .restart local v3    # "unread":I
    :goto_0
    if-lez v3, :cond_4

    .line 110
    iget-object v4, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn:Ljava/io/PushbackInputStream;

    sub-int v5, v1, v3

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 113
    :cond_4
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v4, v5}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v4

    .line 115
    .local v4, "decoder":Ljava/nio/charset/CharsetDecoder;
    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn:Ljava/io/PushbackInputStream;

    invoke-direct {v5, v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V

    iput-object v5, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    .line 116
    return-void
.end method

.method public read([CII)I
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/reader/UnicodeReader;->init()V

    .line 125
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/UnicodeReader;->internalIn2:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v0

    return v0
.end method
