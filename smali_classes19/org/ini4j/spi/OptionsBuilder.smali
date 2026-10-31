.class public Lorg/ini4j/spi/OptionsBuilder;
.super Ljava/lang/Object;
.source "OptionsBuilder.java"

# interfaces
.implements Lorg/ini4j/spi/OptionsHandler;


# instance fields
.field private _header:Z

.field private _lastComment:Ljava/lang/String;

.field private _options:Lorg/ini4j/Options;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getConfig()Lorg/ini4j/Config;
    .registers 2

    .line 105
    iget-object v0, p0, Lorg/ini4j/spi/OptionsBuilder;->_options:Lorg/ini4j/Options;

    invoke-virtual {v0}, Lorg/ini4j/Options;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    return-object v0
.end method

.method protected static newInstance()Lorg/ini4j/spi/OptionsBuilder;
    .registers 1

    .line 100
    const-class v0, Lorg/ini4j/spi/OptionsBuilder;

    invoke-static {v0}, Lorg/ini4j/spi/ServiceFinder;->findService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/spi/OptionsBuilder;

    return-object v0
.end method

.method public static newInstance(Lorg/ini4j/Options;)Lorg/ini4j/spi/OptionsBuilder;
    .registers 2
    .param p0, "opts"    # Lorg/ini4j/Options;

    .line 29
    invoke-static {}, Lorg/ini4j/spi/OptionsBuilder;->newInstance()Lorg/ini4j/spi/OptionsBuilder;

    move-result-object v0

    .line 31
    .local v0, "instance":Lorg/ini4j/spi/OptionsBuilder;
    invoke-virtual {v0, p0}, Lorg/ini4j/spi/OptionsBuilder;->setOptions(Lorg/ini4j/Options;)V

    .line 33
    return-object v0
.end method

.method private putComment(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lorg/ini4j/spi/OptionsBuilder;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isComment()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 120
    iget-object v0, p0, Lorg/ini4j/spi/OptionsBuilder;->_options:Lorg/ini4j/Options;

    iget-object v1, p0, Lorg/ini4j/spi/OptionsBuilder;->_lastComment:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/ini4j/Options;->putComment(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    :cond_11
    return-void
.end method

.method private setHeaderComment()V
    .registers 3

    .line 110
    invoke-direct {p0}, Lorg/ini4j/spi/OptionsBuilder;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isComment()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 112
    iget-object v0, p0, Lorg/ini4j/spi/OptionsBuilder;->_options:Lorg/ini4j/Options;

    iget-object v1, p0, Lorg/ini4j/spi/OptionsBuilder;->_lastComment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/ini4j/Options;->setComment(Ljava/lang/String;)V

    .line 114
    :cond_11
    return-void
.end method


# virtual methods
.method public endOptions()V
    .registers 2

    .line 45
    iget-object v0, p0, Lorg/ini4j/spi/OptionsBuilder;->_lastComment:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lorg/ini4j/spi/OptionsBuilder;->_header:Z

    if-eqz v0, :cond_b

    .line 47
    invoke-direct {p0}, Lorg/ini4j/spi/OptionsBuilder;->setHeaderComment()V

    .line 49
    :cond_b
    return-void
.end method

.method public handleComment(Ljava/lang/String;)V
    .registers 3
    .param p1, "comment"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lorg/ini4j/spi/OptionsBuilder;->_lastComment:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lorg/ini4j/spi/OptionsBuilder;->_header:Z

    if-eqz v0, :cond_e

    .line 55
    invoke-direct {p0}, Lorg/ini4j/spi/OptionsBuilder;->setHeaderComment()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ini4j/spi/OptionsBuilder;->_header:Z

    .line 59
    :cond_e
    iput-object p1, p0, Lorg/ini4j/spi/OptionsBuilder;->_lastComment:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public handleOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Lorg/ini4j/spi/OptionsBuilder;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isMultiOption()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 66
    iget-object v0, p0, Lorg/ini4j/spi/OptionsBuilder;->_options:Lorg/ini4j/Options;

    invoke-virtual {v0, p1, p2}, Lorg/ini4j/Options;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_15

    .line 70
    :cond_10
    iget-object v0, p0, Lorg/ini4j/spi/OptionsBuilder;->_options:Lorg/ini4j/Options;

    invoke-virtual {v0, p1, p2}, Lorg/ini4j/Options;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_15
    iget-object v0, p0, Lorg/ini4j/spi/OptionsBuilder;->_lastComment:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 75
    iget-boolean v0, p0, Lorg/ini4j/spi/OptionsBuilder;->_header:Z

    if-eqz v0, :cond_21

    .line 77
    invoke-direct {p0}, Lorg/ini4j/spi/OptionsBuilder;->setHeaderComment()V

    goto :goto_24

    .line 81
    :cond_21
    invoke-direct {p0, p1}, Lorg/ini4j/spi/OptionsBuilder;->putComment(Ljava/lang/String;)V

    .line 84
    :goto_24
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ini4j/spi/OptionsBuilder;->_lastComment:Ljava/lang/String;

    .line 87
    :cond_27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ini4j/spi/OptionsBuilder;->_header:Z

    .line 88
    return-void
.end method

.method public setOptions(Lorg/ini4j/Options;)V
    .registers 2
    .param p1, "value"    # Lorg/ini4j/Options;

    .line 38
    iput-object p1, p0, Lorg/ini4j/spi/OptionsBuilder;->_options:Lorg/ini4j/Options;

    .line 39
    return-void
.end method

.method public startOptions()V
    .registers 2

    .line 92
    invoke-direct {p0}, Lorg/ini4j/spi/OptionsBuilder;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isHeaderComment()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ini4j/spi/OptionsBuilder;->_header:Z

    .line 96
    :cond_d
    return-void
.end method
