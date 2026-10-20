.class public Lorg/ini4j/Config;
.super Ljava/lang/Object;
.source "Config.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_COMMENT:Z = true

.field public static final DEFAULT_EMPTY_OPTION:Z = false

.field public static final DEFAULT_EMPTY_SECTION:Z = false

.field public static final DEFAULT_ESCAPE:Z = true

.field public static final DEFAULT_ESCAPE_KEY_ONLY:Z = false

.field public static final DEFAULT_ESCAPE_NEWLINE:Z = true

.field public static final DEFAULT_FILE_ENCODING:Ljava/nio/charset/Charset;

.field public static final DEFAULT_GLOBAL_SECTION:Z = false

.field public static final DEFAULT_GLOBAL_SECTION_NAME:Ljava/lang/String; = "?"

.field public static final DEFAULT_HEADER_COMMENT:Z = true

.field public static final DEFAULT_INCLUDE:Z = false

.field public static final DEFAULT_LINE_SEPARATOR:Ljava/lang/String;

.field public static final DEFAULT_LOWER_CASE_OPTION:Z = false

.field public static final DEFAULT_LOWER_CASE_SECTION:Z = false

.field public static final DEFAULT_MULTI_OPTION:Z = true

.field public static final DEFAULT_MULTI_SECTION:Z = false

.field public static final DEFAULT_PATH_SEPARATOR:C = '/'

.field public static final DEFAULT_PROPERTY_FIRST_UPPER:Z = false

.field public static final DEFAULT_STRICT_OPERATOR:Z = false

.field public static final DEFAULT_TREE:Z = true

.field public static final DEFAULT_UNNAMED_SECTION:Z = false

.field private static final GLOBAL:Lorg/ini4j/Config;

.field public static final KEY_PREFIX:Ljava/lang/String; = "org.ini4j.config."

.field public static final PROP_COMMENT:Ljava/lang/String; = "comment"

.field public static final PROP_EMPTY_OPTION:Ljava/lang/String; = "emptyOption"

.field public static final PROP_EMPTY_SECTION:Ljava/lang/String; = "emptySection"

.field public static final PROP_ESCAPE:Ljava/lang/String; = "escape"

.field public static final PROP_ESCAPE_KEY_ONLY:Ljava/lang/String; = "escapeKey"

.field public static final PROP_ESCAPE_NEWLINE:Ljava/lang/String; = "escapeNewline"

.field public static final PROP_FILE_ENCODING:Ljava/lang/String; = "fileEncoding"

.field public static final PROP_GLOBAL_SECTION:Ljava/lang/String; = "globalSection"

.field public static final PROP_GLOBAL_SECTION_NAME:Ljava/lang/String; = "globalSectionName"

.field public static final PROP_HEADER_COMMENT:Ljava/lang/String; = "headerComment"

.field public static final PROP_INCLUDE:Ljava/lang/String; = "include"

.field public static final PROP_LINE_SEPARATOR:Ljava/lang/String; = "lineSeparator"

.field public static final PROP_LOWER_CASE_OPTION:Ljava/lang/String; = "lowerCaseOption"

.field public static final PROP_LOWER_CASE_SECTION:Ljava/lang/String; = "lowerCaseSection"

.field public static final PROP_MULTI_OPTION:Ljava/lang/String; = "multiOption"

.field public static final PROP_MULTI_SECTION:Ljava/lang/String; = "multiSection"

.field public static final PROP_PATH_SEPARATOR:Ljava/lang/String; = "pathSeparator"

.field public static final PROP_PROPERTY_FIRST_UPPER:Ljava/lang/String; = "propertyFirstUpper"

.field public static final PROP_STRICT_OPERATOR:Ljava/lang/String; = "strictOperator"

.field public static final PROP_TREE:Ljava/lang/String; = "tree"

.field public static final PROP_UNNAMED_SECTION:Ljava/lang/String; = "unnamedSection"

.field private static final serialVersionUID:J = 0x27c557cb07b37546L


# instance fields
.field private _comment:Z

.field private _emptyOption:Z

.field private _emptySection:Z

.field private _escape:Z

.field private _escapeKeyOnly:Z

.field private _escapeNewline:Z

.field private _fileEncoding:Ljava/nio/charset/Charset;

.field private _globalSection:Z

.field private _globalSectionName:Ljava/lang/String;

.field private _headerComment:Z

.field private _include:Z

.field private _lineSeparator:Ljava/lang/String;

.field private _lowerCaseOption:Z

.field private _lowerCaseSection:Z

.field private _multiOption:Z

.field private _multiSection:Z

.field private _pathSeparator:C

.field private _propertyFirstUpper:Z

.field private _strictOperator:Z

.field private _tree:Z

.field private _unnamedSection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Lorg/ini4j/Config;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/ini4j/Config;->DEFAULT_LINE_SEPARATOR:Ljava/lang/String;

    .line 67
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/ini4j/Config;->DEFAULT_FILE_ENCODING:Ljava/nio/charset/Charset;

    .line 68
    new-instance v0, Lorg/ini4j/Config;

    invoke-direct {v0}, Lorg/ini4j/Config;-><init>()V

    sput-object v0, Lorg/ini4j/Config;->GLOBAL:Lorg/ini4j/Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p0}, Lorg/ini4j/Config;->reset()V

    .line 95
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.ini4j.config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ini4j/Config;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method private getChar(Ljava/lang/String;C)C
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.ini4j.config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ini4j/Config;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_0
    return v1
.end method

.method private getCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/nio/charset/Charset;

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.ini4j.config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/ini4j/Config;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getEnvironment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/ini4j/Config;->getEnvironment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEnvironment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 108
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .local v0, "value":Ljava/lang/String;
    goto :goto_0

    .line 110
    .end local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 112
    .local v0, "x":Ljava/lang/SecurityException;
    .local v1, "value":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v0, v1

    .line 115
    .end local v1    # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    move-object v1, p1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static getGlobal()Lorg/ini4j/Config;
    .locals 1

    .line 120
    sget-object v0, Lorg/ini4j/Config;->GLOBAL:Lorg/ini4j/Config;

    return-object v0
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.ini4j.config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/ini4j/Config;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/ini4j/Config;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 134
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .local v0, "value":Ljava/lang/String;
    goto :goto_0

    .line 136
    .end local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 138
    .local v0, "x":Ljava/lang/SecurityException;
    .local v1, "value":Ljava/lang/String;
    const/4 v1, 0x0

    move-object v0, v1

    .line 141
    .end local v1    # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    move-object v1, p1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lorg/ini4j/Config;->clone()Lorg/ini4j/Config;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/ini4j/Config;
    .locals 2

    .line 358
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Config;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 360
    :catch_0
    move-exception v0

    .line 362
    .local v0, "x":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getFileEncoding()Ljava/nio/charset/Charset;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/ini4j/Config;->_fileEncoding:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getGlobalSectionName()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/ini4j/Config;->_globalSectionName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/ini4j/Config;->_lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getPathSeparator()C
    .locals 1

    .line 301
    iget-char v0, p0, Lorg/ini4j/Config;->_pathSeparator:C

    return v0
.end method

.method public isComment()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lorg/ini4j/Config;->_comment:Z

    return v0
.end method

.method public isEmptyOption()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lorg/ini4j/Config;->_emptyOption:Z

    return v0
.end method

.method public isEmptySection()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lorg/ini4j/Config;->_emptySection:Z

    return v0
.end method

.method public isEscape()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lorg/ini4j/Config;->_escape:Z

    return v0
.end method

.method public isEscapeKeyOnly()Z
    .locals 1

    .line 351
    iget-boolean v0, p0, Lorg/ini4j/Config;->_escapeKeyOnly:Z

    return v0
.end method

.method public isEscapeNewline()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lorg/ini4j/Config;->_escapeNewline:Z

    return v0
.end method

.method public isGlobalSection()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lorg/ini4j/Config;->_globalSection:Z

    return v0
.end method

.method public isHeaderComment()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lorg/ini4j/Config;->_headerComment:Z

    return v0
.end method

.method public isInclude()Z
    .locals 1

    .line 161
    iget-boolean v0, p0, Lorg/ini4j/Config;->_include:Z

    return v0
.end method

.method public isLowerCaseOption()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lorg/ini4j/Config;->_lowerCaseOption:Z

    return v0
.end method

.method public isLowerCaseSection()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lorg/ini4j/Config;->_lowerCaseSection:Z

    return v0
.end method

.method public isMultiOption()Z
    .locals 1

    .line 286
    iget-boolean v0, p0, Lorg/ini4j/Config;->_multiOption:Z

    return v0
.end method

.method public isMultiSection()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lorg/ini4j/Config;->_multiSection:Z

    return v0
.end method

.method public isPropertyFirstUpper()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Lorg/ini4j/Config;->_propertyFirstUpper:Z

    return v0
.end method

.method public isStrictOperator()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lorg/ini4j/Config;->_strictOperator:Z

    return v0
.end method

.method public isTree()Z
    .locals 1

    .line 166
    iget-boolean v0, p0, Lorg/ini4j/Config;->_tree:Z

    return v0
.end method

.method public isUnnamedSection()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lorg/ini4j/Config;->_unnamedSection:Z

    return v0
.end method

.method public final reset()V
    .locals 4

    .line 368
    const-string v0, "emptyOption"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_emptyOption:Z

    .line 369
    const-string v0, "emptySection"

    invoke-direct {p0, v0, v1}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_emptySection:Z

    .line 370
    const-string v0, "globalSection"

    invoke-direct {p0, v0, v1}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_globalSection:Z

    .line 371
    const-string v0, "globalSectionName"

    const-string v2, "?"

    invoke-direct {p0, v0, v2}, Lorg/ini4j/Config;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ini4j/Config;->_globalSectionName:Ljava/lang/String;

    .line 372
    const-string v0, "include"

    invoke-direct {p0, v0, v1}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_include:Z

    .line 373
    const-string v0, "lowerCaseOption"

    invoke-direct {p0, v0, v1}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_lowerCaseOption:Z

    .line 374
    const-string v0, "lowerCaseSection"

    invoke-direct {p0, v0, v1}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_lowerCaseSection:Z

    .line 375
    const-string v0, "multiOption"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_multiOption:Z

    .line 376
    const-string v0, "multiSection"

    invoke-direct {p0, v0, v1}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_multiSection:Z

    .line 377
    const-string v0, "strictOperator"

    invoke-direct {p0, v0, v1}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_strictOperator:Z

    .line 378
    const-string v0, "unnamedSection"

    invoke-direct {p0, v0, v1}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_unnamedSection:Z

    .line 379
    const-string v0, "escape"

    invoke-direct {p0, v0, v2}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_escape:Z

    .line 380
    const-string v0, "escapeKey"

    invoke-direct {p0, v0, v1}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_escapeKeyOnly:Z

    .line 381
    const-string v0, "escapeNewline"

    invoke-direct {p0, v0, v2}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_escapeNewline:Z

    .line 382
    const-string v0, "pathSeparator"

    const/16 v3, 0x2f

    invoke-direct {p0, v0, v3}, Lorg/ini4j/Config;->getChar(Ljava/lang/String;C)C

    move-result v0

    iput-char v0, p0, Lorg/ini4j/Config;->_pathSeparator:C

    .line 383
    const-string v0, "tree"

    invoke-direct {p0, v0, v2}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_tree:Z

    .line 384
    const-string v0, "propertyFirstUpper"

    invoke-direct {p0, v0, v1}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_propertyFirstUpper:Z

    .line 385
    const-string v0, "lineSeparator"

    sget-object v1, Lorg/ini4j/Config;->DEFAULT_LINE_SEPARATOR:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/ini4j/Config;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/ini4j/Config;->_lineSeparator:Ljava/lang/String;

    .line 386
    const-string v0, "fileEncoding"

    sget-object v1, Lorg/ini4j/Config;->DEFAULT_FILE_ENCODING:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Lorg/ini4j/Config;->getCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/ini4j/Config;->_fileEncoding:Ljava/nio/charset/Charset;

    .line 387
    const-string v0, "comment"

    invoke-direct {p0, v0, v2}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_comment:Z

    .line 388
    const-string v0, "headerComment"

    invoke-direct {p0, v0, v2}, Lorg/ini4j/Config;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/ini4j/Config;->_headerComment:Z

    .line 389
    return-void
.end method

.method public setComment(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 146
    iput-boolean p1, p0, Lorg/ini4j/Config;->_comment:Z

    .line 147
    return-void
.end method

.method public setEmptyOption(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 171
    iput-boolean p1, p0, Lorg/ini4j/Config;->_emptyOption:Z

    .line 172
    return-void
.end method

.method public setEmptySection(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 176
    iput-boolean p1, p0, Lorg/ini4j/Config;->_emptySection:Z

    .line 177
    return-void
.end method

.method public setEscape(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 181
    iput-boolean p1, p0, Lorg/ini4j/Config;->_escape:Z

    .line 182
    return-void
.end method

.method public setEscapeKeyOnly(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 186
    iput-boolean p1, p0, Lorg/ini4j/Config;->_escapeKeyOnly:Z

    .line 187
    return-void
.end method

.method public setEscapeNewline(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 191
    iput-boolean p1, p0, Lorg/ini4j/Config;->_escapeNewline:Z

    .line 192
    return-void
.end method

.method public setFileEncoding(Ljava/nio/charset/Charset;)V
    .locals 0
    .param p1, "value"    # Ljava/nio/charset/Charset;

    .line 201
    iput-object p1, p0, Lorg/ini4j/Config;->_fileEncoding:Ljava/nio/charset/Charset;

    .line 202
    return-void
.end method

.method public setGlobalSection(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 206
    iput-boolean p1, p0, Lorg/ini4j/Config;->_globalSection:Z

    .line 207
    return-void
.end method

.method public setGlobalSectionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 216
    iput-object p1, p0, Lorg/ini4j/Config;->_globalSectionName:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setHeaderComment(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 221
    iput-boolean p1, p0, Lorg/ini4j/Config;->_headerComment:Z

    .line 222
    return-void
.end method

.method public setInclude(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 226
    iput-boolean p1, p0, Lorg/ini4j/Config;->_include:Z

    .line 227
    return-void
.end method

.method public setLineSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lorg/ini4j/Config;->_lineSeparator:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setLowerCaseOption(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 241
    iput-boolean p1, p0, Lorg/ini4j/Config;->_lowerCaseOption:Z

    .line 242
    return-void
.end method

.method public setLowerCaseSection(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 246
    iput-boolean p1, p0, Lorg/ini4j/Config;->_lowerCaseSection:Z

    .line 247
    return-void
.end method

.method public setMultiOption(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 251
    iput-boolean p1, p0, Lorg/ini4j/Config;->_multiOption:Z

    .line 252
    return-void
.end method

.method public setMultiSection(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 256
    iput-boolean p1, p0, Lorg/ini4j/Config;->_multiSection:Z

    .line 257
    return-void
.end method

.method public setPathSeparator(C)V
    .locals 0
    .param p1, "value"    # C

    .line 306
    iput-char p1, p0, Lorg/ini4j/Config;->_pathSeparator:C

    .line 307
    return-void
.end method

.method public setPropertyFirstUpper(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 311
    iput-boolean p1, p0, Lorg/ini4j/Config;->_propertyFirstUpper:Z

    .line 312
    return-void
.end method

.method public setStrictOperator(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 326
    iput-boolean p1, p0, Lorg/ini4j/Config;->_strictOperator:Z

    .line 327
    return-void
.end method

.method public setTree(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 341
    iput-boolean p1, p0, Lorg/ini4j/Config;->_tree:Z

    .line 342
    return-void
.end method

.method public setUnnamedSection(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 346
    iput-boolean p1, p0, Lorg/ini4j/Config;->_unnamedSection:Z

    .line 347
    return-void
.end method
