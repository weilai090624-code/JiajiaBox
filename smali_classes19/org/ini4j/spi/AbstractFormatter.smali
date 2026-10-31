.class abstract Lorg/ini4j/spi/AbstractFormatter;
.super Ljava/lang/Object;
.source "AbstractFormatter.java"

# interfaces
.implements Lorg/ini4j/spi/HandlerBase;


# static fields
.field private static final COMMENT:C = '#'

.field private static final OPERATOR:C = '='

.field private static final SPACE:C = ' '


# instance fields
.field private _config:Lorg/ini4j/Config;

.field private _header:Z

.field private _output:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lorg/ini4j/Config;->getGlobal()Lorg/ini4j/Config;

    move-result-object v0

    iput-object v0, p0, Lorg/ini4j/spi/AbstractFormatter;->_config:Lorg/ini4j/Config;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ini4j/spi/AbstractFormatter;->_header:Z

    return-void
.end method


# virtual methods
.method escapeKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "input"    # Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isEscape()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lorg/ini4j/spi/EscapeTool;->getInstance()Lorg/ini4j/spi/EscapeTool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/ini4j/spi/EscapeTool;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_13
    move-object v0, p1

    :goto_14
    return-object v0
.end method

.method escapeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "input"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isEscape()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isEscapeKeyOnly()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lorg/ini4j/spi/EscapeTool;->getInstance()Lorg/ini4j/spi/EscapeTool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/ini4j/spi/EscapeTool;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_1d
    move-object v0, p1

    :goto_1e
    return-object v0
.end method

.method protected getConfig()Lorg/ini4j/Config;
    .registers 2

    .line 91
    iget-object v0, p0, Lorg/ini4j/spi/AbstractFormatter;->_config:Lorg/ini4j/Config;

    return-object v0
.end method

.method protected getOutput()Ljava/io/PrintWriter;
    .registers 2

    .line 101
    iget-object v0, p0, Lorg/ini4j/spi/AbstractFormatter;->_output:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public handleComment(Ljava/lang/String;)V
    .registers 8
    .param p1, "comment"    # Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isComment()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Lorg/ini4j/spi/AbstractFormatter;->_header:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isHeaderComment()Z

    move-result v0

    if-eqz v0, :cond_67

    :cond_18
    if-eqz p1, :cond_67

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_67

    .line 35
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2e
    if-ge v2, v1, :cond_54

    aget-object v3, v0, v2

    .line 37
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getOutput()Ljava/io/PrintWriter;

    move-result-object v4

    const/16 v5, 0x23

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 38
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getOutput()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getOutput()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getConfig()Lorg/ini4j/Config;

    move-result-object v5

    invoke-virtual {v5}, Lorg/ini4j/Config;->getLineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 35
    .end local v3    # "line":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 42
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_54
    iget-boolean v0, p0, Lorg/ini4j/spi/AbstractFormatter;->_header:Z

    if-eqz v0, :cond_67

    .line 44
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getOutput()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getConfig()Lorg/ini4j/Config;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ini4j/Config;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    :cond_67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ini4j/spi/AbstractFormatter;->_header:Z

    .line 49
    return-void
.end method

.method public handleOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "optionName"    # Ljava/lang/String;
    .param p2, "optionValue"    # Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isStrictOperator()Z

    move-result v0

    const/16 v1, 0x3d

    if-eqz v0, :cond_53

    .line 55
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isEmptyOption()Z

    move-result v0

    if-nez v0, :cond_18

    if-eqz p2, :cond_2a

    .line 57
    :cond_18
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getOutput()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/ini4j/spi/AbstractFormatter;->escapeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getOutput()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 61
    :cond_2a
    if-eqz p2, :cond_37

    .line 63
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getOutput()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/ini4j/spi/AbstractFormatter;->escapeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    :cond_37
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isEmptyOption()Z

    move-result v0

    if-nez v0, :cond_43

    if-eqz p2, :cond_a1

    .line 68
    :cond_43
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getOutput()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getConfig()Lorg/ini4j/Config;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ini4j/Config;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_a1

    .line 73
    :cond_53
    if-nez p2, :cond_62

    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isEmptyOption()Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, ""

    goto :goto_63

    :cond_62
    move-object v0, p2

    .line 75
    .local v0, "value":Ljava/lang/String;
    :goto_63
    if-eqz v0, :cond_a1

    .line 77
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getOutput()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {p0, p1}, Lorg/ini4j/spi/AbstractFormatter;->escapeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getOutput()Ljava/io/PrintWriter;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 79
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getOutput()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 80
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getOutput()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 81
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getOutput()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/ini4j/spi/AbstractFormatter;->escapeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getOutput()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractFormatter;->getConfig()Lorg/ini4j/Config;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ini4j/Config;->getLineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 86
    .end local v0    # "value":Ljava/lang/String;
    :cond_a1
    :goto_a1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/ini4j/spi/AbstractFormatter;->setHeader(Z)V

    .line 87
    return-void
.end method

.method protected setConfig(Lorg/ini4j/Config;)V
    .registers 2
    .param p1, "value"    # Lorg/ini4j/Config;

    .line 96
    iput-object p1, p0, Lorg/ini4j/spi/AbstractFormatter;->_config:Lorg/ini4j/Config;

    .line 97
    return-void
.end method

.method setHeader(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 111
    iput-boolean p1, p0, Lorg/ini4j/spi/AbstractFormatter;->_header:Z

    .line 112
    return-void
.end method

.method protected setOutput(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "value"    # Ljava/io/PrintWriter;

    .line 106
    iput-object p1, p0, Lorg/ini4j/spi/AbstractFormatter;->_output:Ljava/io/PrintWriter;

    .line 107
    return-void
.end method
