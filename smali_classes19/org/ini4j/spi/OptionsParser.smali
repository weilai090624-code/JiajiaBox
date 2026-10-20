.class public Lorg/ini4j/spi/OptionsParser;
.super Lorg/ini4j/spi/AbstractParser;
.source "OptionsParser.java"


# static fields
.field private static final COMMENTS:Ljava/lang/String; = "!#"

.field private static final OPERATORS:Ljava/lang/String; = ":="


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    const-string v0, ":="

    const-string v1, "!#"

    invoke-direct {p0, v0, v1}, Lorg/ini4j/spi/AbstractParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static newInstance()Lorg/ini4j/spi/OptionsParser;
    .locals 1

    .line 39
    const-class v0, Lorg/ini4j/spi/OptionsParser;

    invoke-static {v0}, Lorg/ini4j/spi/ServiceFinder;->findService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/spi/OptionsParser;

    return-object v0
.end method

.method public static newInstance(Lorg/ini4j/Config;)Lorg/ini4j/spi/OptionsParser;
    .locals 1
    .param p0, "config"    # Lorg/ini4j/Config;

    .line 44
    invoke-static {}, Lorg/ini4j/spi/OptionsParser;->newInstance()Lorg/ini4j/spi/OptionsParser;

    move-result-object v0

    .line 46
    .local v0, "instance":Lorg/ini4j/spi/OptionsParser;
    invoke-virtual {v0, p0}, Lorg/ini4j/spi/OptionsParser;->setConfig(Lorg/ini4j/Config;)V

    .line 48
    return-object v0
.end method

.method private parse(Lorg/ini4j/spi/IniSource;Lorg/ini4j/spi/OptionsHandler;)V
    .locals 2
    .param p1, "source"    # Lorg/ini4j/spi/IniSource;
    .param p2, "handler"    # Lorg/ini4j/spi/OptionsHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/ini4j/InvalidFileFormatException;
        }
    .end annotation

    .line 68
    invoke-interface {p2}, Lorg/ini4j/spi/OptionsHandler;->startOptions()V

    .line 69
    invoke-virtual {p1}, Lorg/ini4j/spi/IniSource;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p1}, Lorg/ini4j/spi/IniSource;->getLineNumber()I

    move-result v1

    invoke-virtual {p0, v0, p2, v1}, Lorg/ini4j/spi/OptionsParser;->parseOptionLine(Ljava/lang/String;Lorg/ini4j/spi/HandlerBase;I)V

    .line 69
    invoke-virtual {p1}, Lorg/ini4j/spi/IniSource;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    .end local v0    # "line":Ljava/lang/String;
    :cond_0
    invoke-interface {p2}, Lorg/ini4j/spi/OptionsHandler;->endOptions()V

    .line 75
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Lorg/ini4j/spi/OptionsHandler;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "handler"    # Lorg/ini4j/spi/OptionsHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/ini4j/InvalidFileFormatException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1, p2}, Lorg/ini4j/spi/OptionsParser;->newIniSource(Ljava/io/InputStream;Lorg/ini4j/spi/HandlerBase;)Lorg/ini4j/spi/IniSource;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/ini4j/spi/OptionsParser;->parse(Lorg/ini4j/spi/IniSource;Lorg/ini4j/spi/OptionsHandler;)V

    .line 54
    return-void
.end method

.method public parse(Ljava/io/Reader;Lorg/ini4j/spi/OptionsHandler;)V
    .locals 1
    .param p1, "input"    # Ljava/io/Reader;
    .param p2, "handler"    # Lorg/ini4j/spi/OptionsHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/ini4j/InvalidFileFormatException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1, p2}, Lorg/ini4j/spi/OptionsParser;->newIniSource(Ljava/io/Reader;Lorg/ini4j/spi/HandlerBase;)Lorg/ini4j/spi/IniSource;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/ini4j/spi/OptionsParser;->parse(Lorg/ini4j/spi/IniSource;Lorg/ini4j/spi/OptionsHandler;)V

    .line 59
    return-void
.end method

.method public parse(Ljava/net/URL;Lorg/ini4j/spi/OptionsHandler;)V
    .locals 1
    .param p1, "input"    # Ljava/net/URL;
    .param p2, "handler"    # Lorg/ini4j/spi/OptionsHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/ini4j/InvalidFileFormatException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1, p2}, Lorg/ini4j/spi/OptionsParser;->newIniSource(Ljava/net/URL;Lorg/ini4j/spi/HandlerBase;)Lorg/ini4j/spi/IniSource;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/ini4j/spi/OptionsParser;->parse(Lorg/ini4j/spi/IniSource;Lorg/ini4j/spi/OptionsHandler;)V

    .line 64
    return-void
.end method
