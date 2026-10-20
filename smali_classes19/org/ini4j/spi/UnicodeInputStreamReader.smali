.class Lorg/ini4j/spi/UnicodeInputStreamReader;
.super Ljava/io/Reader;
.source "UnicodeInputStreamReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ini4j/spi/UnicodeInputStreamReader$Bom;
    }
.end annotation


# static fields
.field private static final BOM_SIZE:I = 0x4


# instance fields
.field private final _defaultEncoding:Ljava/nio/charset/Charset;

.field private _reader:Ljava/io/InputStreamReader;

.field private final _stream:Ljava/io/PushbackInputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "defaultEnc"    # Ljava/nio/charset/Charset;

    .line 100
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 101
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/ini4j/spi/UnicodeInputStreamReader;->_stream:Ljava/io/PushbackInputStream;

    .line 102
    iput-object p2, p0, Lorg/ini4j/spi/UnicodeInputStreamReader;->_defaultEncoding:Ljava/nio/charset/Charset;

    .line 103
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

    .line 107
    invoke-virtual {p0}, Lorg/ini4j/spi/UnicodeInputStreamReader;->init()V

    .line 108
    iget-object v0, p0, Lorg/ini4j/spi/UnicodeInputStreamReader;->_reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 109
    return-void
.end method

.method protected init()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/ini4j/spi/UnicodeInputStreamReader;->_reader:Ljava/io/InputStreamReader;

    if-eqz v0, :cond_0

    .line 126
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 134
    .local v0, "data":[B
    iget-object v1, p0, Lorg/ini4j/spi/UnicodeInputStreamReader;->_stream:Ljava/io/PushbackInputStream;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v1

    .line 135
    .local v1, "n":I
    invoke-static {v0}, Lorg/ini4j/spi/UnicodeInputStreamReader$Bom;->access$000([B)Lorg/ini4j/spi/UnicodeInputStreamReader$Bom;

    move-result-object v2

    .line 137
    .local v2, "bom":Lorg/ini4j/spi/UnicodeInputStreamReader$Bom;
    if-nez v2, :cond_1

    .line 139
    iget-object v3, p0, Lorg/ini4j/spi/UnicodeInputStreamReader;->_defaultEncoding:Ljava/nio/charset/Charset;

    .line 140
    .local v3, "encoding":Ljava/nio/charset/Charset;
    move v4, v1

    .local v4, "unread":I
    goto :goto_0

    .line 144
    .end local v3    # "encoding":Ljava/nio/charset/Charset;
    .end local v4    # "unread":I
    :cond_1
    invoke-static {v2}, Lorg/ini4j/spi/UnicodeInputStreamReader$Bom;->access$100(Lorg/ini4j/spi/UnicodeInputStreamReader$Bom;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 145
    .restart local v3    # "encoding":Ljava/nio/charset/Charset;
    array-length v4, v0

    invoke-static {v2}, Lorg/ini4j/spi/UnicodeInputStreamReader$Bom;->access$200(Lorg/ini4j/spi/UnicodeInputStreamReader$Bom;)[B

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v4, v5

    .line 148
    .restart local v4    # "unread":I
    :goto_0
    if-lez v4, :cond_2

    .line 150
    iget-object v5, p0, Lorg/ini4j/spi/UnicodeInputStreamReader;->_stream:Ljava/io/PushbackInputStream;

    sub-int v6, v1, v4

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 153
    :cond_2
    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lorg/ini4j/spi/UnicodeInputStreamReader;->_stream:Ljava/io/PushbackInputStream;

    invoke-direct {v5, v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v5, p0, Lorg/ini4j/spi/UnicodeInputStreamReader;->_reader:Ljava/io/InputStreamReader;

    .line 154
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

    .line 113
    invoke-virtual {p0}, Lorg/ini4j/spi/UnicodeInputStreamReader;->init()V

    .line 115
    iget-object v0, p0, Lorg/ini4j/spi/UnicodeInputStreamReader;->_reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v0

    return v0
.end method
