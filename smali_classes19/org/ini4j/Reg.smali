.class public Lorg/ini4j/Reg;
.super Lorg/ini4j/BasicRegistry;
.source "Reg.java"

# interfaces
.implements Lorg/ini4j/Registry;
.implements Lorg/ini4j/Persistable;
.implements Lorg/ini4j/Configurable;


# static fields
.field private static final CR:C = '\r'

.field protected static final DEFAULT_SUFFIX:Ljava/lang/String; = ".reg"

.field private static final LF:C = '\n'

.field private static final PROP_OS_NAME:Ljava/lang/String; = "os.name"

.field private static final STDERR_BUFF_SIZE:I = 0x2000

.field protected static final TMP_PREFIX:Ljava/lang/String; = "reg-"

.field private static final WINDOWS:Z

.field private static final serialVersionUID:J = -0x149debf20c4afdb8L


# instance fields
.field private _config:Lorg/ini4j/Config;

.field private _file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-string v0, "os.name"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Lorg/ini4j/Config;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/ini4j/Reg;->WINDOWS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lorg/ini4j/BasicRegistry;-><init>()V

    .line 52
    invoke-static {}, Lorg/ini4j/Config;->getGlobal()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->clone()Lorg/ini4j/Config;

    move-result-object v0

    .line 54
    .local v0, "cfg":Lorg/ini4j/Config;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ini4j/Config;->setEscape(Z)V

    .line 55
    invoke-virtual {v0, v1}, Lorg/ini4j/Config;->setGlobalSection(Z)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/ini4j/Config;->setEmptyOption(Z)V

    .line 57
    invoke-virtual {v0, v1}, Lorg/ini4j/Config;->setMultiOption(Z)V

    .line 58
    invoke-virtual {v0, v1}, Lorg/ini4j/Config;->setStrictOperator(Z)V

    .line 59
    invoke-virtual {v0, v1}, Lorg/ini4j/Config;->setEmptySection(Z)V

    .line 60
    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Lorg/ini4j/Config;->setPathSeparator(C)V

    .line 61
    sget-object v1, Lorg/ini4j/Reg;->FILE_ENCODING:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lorg/ini4j/Config;->setFileEncoding(Ljava/nio/charset/Charset;)V

    .line 62
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Lorg/ini4j/Config;->setLineSeparator(Ljava/lang/String;)V

    .line 63
    iput-object v0, p0, Lorg/ini4j/Reg;->_config:Lorg/ini4j/Config;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "input"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/ini4j/InvalidFileFormatException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lorg/ini4j/Reg;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/ini4j/Reg;->_file:Ljava/io/File;

    .line 76
    invoke-virtual {p0}, Lorg/ini4j/Reg;->load()V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/ini4j/InvalidFileFormatException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lorg/ini4j/Reg;-><init>()V

    .line 88
    invoke-virtual {p0, p1}, Lorg/ini4j/Reg;->load(Ljava/io/InputStream;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/ini4j/InvalidFileFormatException;
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lorg/ini4j/Reg;-><init>()V

    .line 94
    invoke-virtual {p0, p1}, Lorg/ini4j/Reg;->load(Ljava/io/Reader;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "registryKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lorg/ini4j/Reg;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Lorg/ini4j/Reg;->read(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "input"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/ini4j/InvalidFileFormatException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lorg/ini4j/Reg;-><init>()V

    .line 82
    invoke-virtual {p0, p1}, Lorg/ini4j/Reg;->load(Ljava/net/URL;)V

    .line 83
    return-void
.end method

.method private createTempFile()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    const-string v0, "reg-"

    const-string v1, ".reg"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 290
    .local v0, "ret":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 292
    return-object v0
.end method

.method public static isWindows()Z
    .locals 1

    .line 99
    sget-boolean v0, Lorg/ini4j/Reg;->WINDOWS:Z

    return v0
.end method

.method private regExport(Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .param p1, "registryKey"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    invoke-direct {p0}, Lorg/ini4j/Reg;->requireWindows()V

    .line 298
    const-string v3, "export"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v0, "cmd"

    const-string v1, "/c"

    const-string v2, "reg"

    move-object v4, p1

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ini4j/Reg;->exec([Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method private regImport(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-direct {p0}, Lorg/ini4j/Reg;->requireWindows()V

    .line 304
    const-string v0, "import"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cmd"

    const-string v3, "/c"

    const-string v4, "reg"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ini4j/Reg;->exec([Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method private requireWindows()V
    .locals 2

    .line 309
    sget-boolean v0, Lorg/ini4j/Reg;->WINDOWS:Z

    if-eqz v0, :cond_0

    .line 313
    return-void

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operating system or runtime environment"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method exec([Ljava/lang/String;)V
    .locals 8
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 268
    .local v0, "proc":Ljava/lang/Process;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v1

    .line 270
    .local v1, "status":I
    if-nez v1, :cond_0

    .line 283
    .end local v1    # "status":I
    nop

    .line 284
    return-void

    .line 272
    .restart local v1    # "status":I
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 273
    .local v2, "in":Ljava/io/Reader;
    const/16 v3, 0x2000

    new-array v3, v3, [C

    .line 274
    .local v3, "buff":[C
    invoke-virtual {v2, v3}, Ljava/io/Reader;->read([C)I

    move-result v4

    .line 276
    .local v4, "n":I
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 277
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "proc":Ljava/lang/Process;
    .end local p1    # "args":[Ljava/lang/String;
    throw v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v1    # "status":I
    .end local v2    # "in":Ljava/io/Reader;
    .end local v3    # "buff":[C
    .end local v4    # "n":I
    .restart local v0    # "proc":Ljava/lang/Process;
    .restart local p1    # "args":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 282
    .local v1, "x":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/io/IOException;

    move-object v3, v2

    check-cast v3, Ljava/io/IOException;

    throw v2
.end method

.method public getConfig()Lorg/ini4j/Config;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/ini4j/Reg;->_config:Lorg/ini4j/Config;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/ini4j/Reg;->_file:Ljava/io/File;

    return-object v0
.end method

.method getPathSeparator()C
    .locals 1

    .line 254
    invoke-virtual {p0}, Lorg/ini4j/Reg;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->getPathSeparator()C

    move-result v0

    return v0
.end method

.method isPropertyFirstUpper()Z
    .locals 1

    .line 259
    invoke-virtual {p0}, Lorg/ini4j/Reg;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isPropertyFirstUpper()Z

    move-result v0

    return v0
.end method

.method isTreeMode()Z
    .locals 1

    .line 249
    invoke-virtual {p0}, Lorg/ini4j/Reg;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isTree()Z

    move-result v0

    return v0
.end method

.method public load()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/ini4j/InvalidFileFormatException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/ini4j/Reg;->_file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/ini4j/Reg;->_file:Ljava/io/File;

    invoke-virtual {p0, v0}, Lorg/ini4j/Reg;->load(Ljava/io/File;)V

    .line 130
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method public load(Ljava/io/File;)V
    .locals 1
    .param p1, "input"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/ini4j/InvalidFileFormatException;
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ini4j/Reg;->load(Ljava/net/URL;)V

    .line 179
    return-void
.end method

.method public load(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/ini4j/InvalidFileFormatException;
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lorg/ini4j/Reg;->getConfig()Lorg/ini4j/Config;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ini4j/Config;->getFileEncoding()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lorg/ini4j/Reg;->load(Ljava/io/Reader;)V

    .line 135
    return-void
.end method

.method public load(Ljava/io/Reader;)V
    .locals 5
    .param p1, "input"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/ini4j/InvalidFileFormatException;
        }
    .end annotation

    .line 144
    const/4 v0, 0x2

    .line 145
    .local v0, "newline":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v1, "buff":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v2

    .local v2, "c":I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 149
    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 151
    add-int/lit8 v0, v0, -0x1

    .line 152
    if-nez v0, :cond_1

    .line 154
    goto :goto_1

    .line 157
    :cond_0
    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 159
    int-to-char v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    :cond_1
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v2

    goto :goto_0

    .line 163
    .end local v2    # "c":I
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/ini4j/Reg;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 173
    invoke-virtual {p0}, Lorg/ini4j/Reg;->getConfig()Lorg/ini4j/Config;

    move-result-object v2

    invoke-static {v2}, Lorg/ini4j/spi/IniParser;->newInstance(Lorg/ini4j/Config;)Lorg/ini4j/spi/IniParser;

    move-result-object v2

    invoke-virtual {p0}, Lorg/ini4j/Reg;->newBuilder()Lorg/ini4j/spi/IniHandler;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/ini4j/spi/IniParser;->parse(Ljava/io/Reader;Lorg/ini4j/spi/IniHandler;)V

    .line 174
    return-void

    .line 170
    :cond_3
    new-instance v2, Lorg/ini4j/InvalidFileFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/ini4j/InvalidFileFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_4
    new-instance v2, Lorg/ini4j/InvalidFileFormatException;

    const-string v3, "Missing version header"

    invoke-direct {v2, v3}, Lorg/ini4j/InvalidFileFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public load(Ljava/net/URL;)V
    .locals 3
    .param p1, "input"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/ini4j/InvalidFileFormatException;
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ini4j/Reg;->getConfig()Lorg/ini4j/Config;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ini4j/Config;->getFileEncoding()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lorg/ini4j/Reg;->load(Ljava/io/Reader;)V

    .line 140
    return-void
.end method

.method protected newBuilder()Lorg/ini4j/spi/IniHandler;
    .locals 1

    .line 244
    invoke-static {p0}, Lorg/ini4j/spi/RegBuilder;->newInstance(Lorg/ini4j/Reg;)Lorg/ini4j/spi/RegBuilder;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/String;)V
    .locals 2
    .param p1, "registryKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Lorg/ini4j/Reg;->createTempFile()Ljava/io/File;

    move-result-object v0

    .line 187
    .local v0, "tmp":Ljava/io/File;
    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/ini4j/Reg;->regExport(Ljava/lang/String;Ljava/io/File;)V

    .line 188
    invoke-virtual {p0, v0}, Lorg/ini4j/Reg;->load(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 193
    nop

    .line 194
    return-void

    .line 192
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1
.end method

.method public setConfig(Lorg/ini4j/Config;)V
    .locals 0
    .param p1, "value"    # Lorg/ini4j/Config;

    .line 109
    iput-object p1, p0, Lorg/ini4j/Reg;->_config:Lorg/ini4j/Config;

    .line 110
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "value"    # Ljava/io/File;

    .line 119
    iput-object p1, p0, Lorg/ini4j/Reg;->_file:Ljava/io/File;

    .line 120
    return-void
.end method

.method public store()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/ini4j/Reg;->_file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/ini4j/Reg;->_file:Ljava/io/File;

    invoke-virtual {p0, v0}, Lorg/ini4j/Reg;->store(Ljava/io/File;)V

    .line 204
    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method public store(Ljava/io/File;)V
    .locals 1
    .param p1, "output"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 223
    .local v0, "stream":Ljava/io/OutputStream;
    invoke-virtual {p0, v0}, Lorg/ini4j/Reg;->store(Ljava/io/OutputStream;)V

    .line 224
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 225
    return-void
.end method

.method public store(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lorg/ini4j/Reg;->getConfig()Lorg/ini4j/Config;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ini4j/Config;->getFileEncoding()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lorg/ini4j/Reg;->store(Ljava/io/Writer;)V

    .line 209
    return-void
.end method

.method public store(Ljava/io/Writer;)V
    .locals 1
    .param p1, "output"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lorg/ini4j/Reg;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lorg/ini4j/Reg;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lorg/ini4j/Reg;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lorg/ini4j/Reg;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/ini4j/spi/IniFormatter;->newInstance(Ljava/io/Writer;Lorg/ini4j/Config;)Lorg/ini4j/spi/IniFormatter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ini4j/Reg;->store(Lorg/ini4j/spi/IniHandler;)V

    .line 217
    return-void
.end method

.method public write()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-direct {p0}, Lorg/ini4j/Reg;->createTempFile()Ljava/io/File;

    move-result-object v0

    .line 233
    .local v0, "tmp":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/ini4j/Reg;->store(Ljava/io/File;)V

    .line 234
    invoke-direct {p0, v0}, Lorg/ini4j/Reg;->regImport(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 239
    nop

    .line 240
    return-void

    .line 238
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1
.end method
