.class abstract Lorg/ini4j/spi/AbstractParser;
.super Ljava/lang/Object;
.source "AbstractParser.java"


# instance fields
.field private final _comments:Ljava/lang/String;

.field private _config:Lorg/ini4j/Config;

.field private final _operators:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "operators"    # Ljava/lang/String;
    .param p2, "comments"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lorg/ini4j/Config;->getGlobal()Lorg/ini4j/Config;

    move-result-object v0

    iput-object v0, p0, Lorg/ini4j/spi/AbstractParser;->_config:Lorg/ini4j/Config;

    .line 37
    iput-object p1, p0, Lorg/ini4j/spi/AbstractParser;->_operators:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lorg/ini4j/spi/AbstractParser;->_comments:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private indexOfOperator(Ljava/lang/String;)I
    .locals 9
    .param p1, "line"    # Ljava/lang/String;

    .line 119
    const/4 v0, -0x1

    .line 121
    .local v0, "idx":I
    iget-object v1, p0, Lorg/ini4j/spi/AbstractParser;->_operators:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .local v1, "arr$":[C
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_5

    aget-char v4, v1, v3

    .line 123
    .local v4, "c":C
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 125
    .local v5, "index":I
    :goto_1
    if-ltz v5, :cond_4

    .line 127
    const/4 v6, -0x1

    if-ltz v5, :cond_2

    if-eqz v5, :cond_0

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_2

    :cond_0
    if-eq v0, v6, :cond_1

    if-ge v5, v0, :cond_2

    .line 129
    :cond_1
    move v0, v5

    .line 131
    goto :goto_3

    .line 134
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v5, v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    :goto_2
    move v5, v6

    goto :goto_1

    .line 121
    .end local v4    # "c":C
    .end local v5    # "index":I
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "arr$":[C
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_5
    return v0
.end method


# virtual methods
.method protected getConfig()Lorg/ini4j/Config;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/ini4j/spi/AbstractParser;->_config:Lorg/ini4j/Config;

    return-object v0
.end method

.method newIniSource(Ljava/io/InputStream;Lorg/ini4j/spi/HandlerBase;)Lorg/ini4j/spi/IniSource;
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "handler"    # Lorg/ini4j/spi/HandlerBase;

    .line 58
    new-instance v0, Lorg/ini4j/spi/IniSource;

    iget-object v1, p0, Lorg/ini4j/spi/AbstractParser;->_comments:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractParser;->getConfig()Lorg/ini4j/Config;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/ini4j/spi/IniSource;-><init>(Ljava/io/InputStream;Lorg/ini4j/spi/HandlerBase;Ljava/lang/String;Lorg/ini4j/Config;)V

    return-object v0
.end method

.method newIniSource(Ljava/io/Reader;Lorg/ini4j/spi/HandlerBase;)Lorg/ini4j/spi/IniSource;
    .locals 3
    .param p1, "input"    # Ljava/io/Reader;
    .param p2, "handler"    # Lorg/ini4j/spi/HandlerBase;

    .line 63
    new-instance v0, Lorg/ini4j/spi/IniSource;

    iget-object v1, p0, Lorg/ini4j/spi/AbstractParser;->_comments:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractParser;->getConfig()Lorg/ini4j/Config;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/ini4j/spi/IniSource;-><init>(Ljava/io/Reader;Lorg/ini4j/spi/HandlerBase;Ljava/lang/String;Lorg/ini4j/Config;)V

    return-object v0
.end method

.method newIniSource(Ljava/net/URL;Lorg/ini4j/spi/HandlerBase;)Lorg/ini4j/spi/IniSource;
    .locals 3
    .param p1, "input"    # Ljava/net/URL;
    .param p2, "handler"    # Lorg/ini4j/spi/HandlerBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/ini4j/spi/IniSource;

    iget-object v1, p0, Lorg/ini4j/spi/AbstractParser;->_comments:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractParser;->getConfig()Lorg/ini4j/Config;

    move-result-object v2

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/ini4j/spi/IniSource;-><init>(Ljava/net/URL;Lorg/ini4j/spi/HandlerBase;Ljava/lang/String;Lorg/ini4j/Config;)V

    return-object v0
.end method

.method protected parseError(Ljava/lang/String;I)V
    .locals 3
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ini4j/InvalidFileFormatException;
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/ini4j/InvalidFileFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse error (at line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ini4j/InvalidFileFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method parseOptionLine(Ljava/lang/String;Lorg/ini4j/spi/HandlerBase;I)V
    .locals 4
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/ini4j/spi/HandlerBase;
    .param p3, "lineNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ini4j/InvalidFileFormatException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lorg/ini4j/spi/AbstractParser;->indexOfOperator(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "idx":I
    const/4 v1, 0x0

    .line 75
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 77
    .local v2, "value":Ljava/lang/String;
    if-gez v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractParser;->getConfig()Lorg/ini4j/Config;

    move-result-object v3

    invoke-virtual {v3}, Lorg/ini4j/Config;->isEmptyOption()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    move-object v1, p1

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/ini4j/spi/AbstractParser;->parseError(Ljava/lang/String;I)V

    goto :goto_0

    .line 90
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/ini4j/spi/AbstractParser;->unescapeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 91
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/ini4j/spi/AbstractParser;->unescapeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 94
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 96
    invoke-virtual {p0, p1, p3}, Lorg/ini4j/spi/AbstractParser;->parseError(Ljava/lang/String;I)V

    .line 99
    :cond_2
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractParser;->getConfig()Lorg/ini4j/Config;

    move-result-object v3

    invoke-virtual {v3}, Lorg/ini4j/Config;->isLowerCaseOption()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 104
    :cond_3
    invoke-interface {p2, v1, v2}, Lorg/ini4j/spi/HandlerBase;->handleOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method protected setConfig(Lorg/ini4j/Config;)V
    .locals 0
    .param p1, "value"    # Lorg/ini4j/Config;

    .line 48
    iput-object p1, p0, Lorg/ini4j/spi/AbstractParser;->_config:Lorg/ini4j/Config;

    .line 49
    return-void
.end method

.method unescapeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractParser;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isEscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/ini4j/spi/EscapeTool;->getInstance()Lorg/ini4j/spi/EscapeTool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/ini4j/spi/EscapeTool;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method unescapeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "line"    # Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractParser;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isEscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractParser;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isEscapeKeyOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/ini4j/spi/EscapeTool;->getInstance()Lorg/ini4j/spi/EscapeTool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/ini4j/spi/EscapeTool;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method
