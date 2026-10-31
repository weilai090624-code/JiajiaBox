.class abstract Lorg/ini4j/spi/AbstractProfileBuilder;
.super Ljava/lang/Object;
.source "AbstractProfileBuilder.java"

# interfaces
.implements Lorg/ini4j/spi/IniHandler;


# instance fields
.field private _currentSection:Lorg/ini4j/Profile$Section;

.field private _header:Z

.field private _lastComment:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private putComment(Lorg/ini4j/CommentedMap;Ljava/lang/String;)V
    .registers 4
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ini4j/CommentedMap<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 131
    .local p1, "map":Lorg/ini4j/CommentedMap;, "Lorg/ini4j/CommentedMap<Ljava/lang/String;*>;"
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractProfileBuilder;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isComment()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 133
    iget-object v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_lastComment:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lorg/ini4j/CommentedMap;->putComment(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    :cond_f
    return-void
.end method

.method private setHeaderComment()V
    .registers 3

    .line 123
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractProfileBuilder;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isComment()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 125
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractProfileBuilder;->getProfile()Lorg/ini4j/Profile;

    move-result-object v0

    iget-object v1, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_lastComment:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/ini4j/Profile;->setComment(Ljava/lang/String;)V

    .line 127
    :cond_13
    return-void
.end method


# virtual methods
.method public endIni()V
    .registers 2

    .line 33
    iget-object v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_lastComment:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_header:Z

    if-eqz v0, :cond_b

    .line 35
    invoke-direct {p0}, Lorg/ini4j/spi/AbstractProfileBuilder;->setHeaderComment()V

    .line 37
    :cond_b
    return-void
.end method

.method public endSection()V
    .registers 2

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_currentSection:Lorg/ini4j/Profile$Section;

    .line 42
    return-void
.end method

.method abstract getConfig()Lorg/ini4j/Config;
.end method

.method getCurrentSection()Lorg/ini4j/Profile$Section;
    .registers 2

    .line 118
    iget-object v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_currentSection:Lorg/ini4j/Profile$Section;

    return-object v0
.end method

.method abstract getProfile()Lorg/ini4j/Profile;
.end method

.method public handleComment(Ljava/lang/String;)V
    .registers 3
    .param p1, "comment"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_lastComment:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_header:Z

    if-eqz v0, :cond_e

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_header:Z

    .line 49
    invoke-direct {p0}, Lorg/ini4j/spi/AbstractProfileBuilder;->setHeaderComment()V

    .line 52
    :cond_e
    iput-object p1, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_lastComment:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public handleOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_header:Z

    .line 58
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractProfileBuilder;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isMultiOption()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 60
    iget-object v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_currentSection:Lorg/ini4j/Profile$Section;

    invoke-interface {v0, p1, p2}, Lorg/ini4j/Profile$Section;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_18

    .line 64
    :cond_13
    iget-object v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_currentSection:Lorg/ini4j/Profile$Section;

    invoke-interface {v0, p1, p2}, Lorg/ini4j/Profile$Section;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :goto_18
    iget-object v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_lastComment:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 69
    iget-object v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_currentSection:Lorg/ini4j/Profile$Section;

    invoke-direct {p0, v0, p1}, Lorg/ini4j/spi/AbstractProfileBuilder;->putComment(Lorg/ini4j/CommentedMap;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_lastComment:Ljava/lang/String;

    .line 72
    :cond_24
    return-void
.end method

.method public startIni()V
    .registers 2

    .line 76
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractProfileBuilder;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isHeaderComment()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_header:Z

    .line 80
    :cond_d
    return-void
.end method

.method public startSection(Ljava/lang/String;)V
    .registers 4
    .param p1, "sectionName"    # Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractProfileBuilder;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->isMultiSection()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 86
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractProfileBuilder;->getProfile()Lorg/ini4j/Profile;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/ini4j/Profile;->add(Ljava/lang/String;)Lorg/ini4j/Profile$Section;

    move-result-object v0

    iput-object v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_currentSection:Lorg/ini4j/Profile$Section;

    goto :goto_2d

    .line 90
    :cond_15
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractProfileBuilder;->getProfile()Lorg/ini4j/Profile;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/ini4j/Profile;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Profile$Section;

    .line 92
    .local v0, "s":Lorg/ini4j/Profile$Section;
    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractProfileBuilder;->getProfile()Lorg/ini4j/Profile;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/ini4j/Profile;->add(Ljava/lang/String;)Lorg/ini4j/Profile$Section;

    move-result-object v1

    goto :goto_2b

    :cond_2a
    move-object v1, v0

    :goto_2b
    iput-object v1, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_currentSection:Lorg/ini4j/Profile$Section;

    .line 95
    .end local v0    # "s":Lorg/ini4j/Profile$Section;
    :goto_2d
    iget-object v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_lastComment:Ljava/lang/String;

    if-eqz v0, :cond_43

    .line 97
    iget-boolean v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_header:Z

    if-eqz v0, :cond_39

    .line 99
    invoke-direct {p0}, Lorg/ini4j/spi/AbstractProfileBuilder;->setHeaderComment()V

    goto :goto_40

    .line 103
    :cond_39
    invoke-virtual {p0}, Lorg/ini4j/spi/AbstractProfileBuilder;->getProfile()Lorg/ini4j/Profile;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/ini4j/spi/AbstractProfileBuilder;->putComment(Lorg/ini4j/CommentedMap;Ljava/lang/String;)V

    .line 106
    :goto_40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_lastComment:Ljava/lang/String;

    .line 109
    :cond_43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ini4j/spi/AbstractProfileBuilder;->_header:Z

    .line 110
    return-void
.end method
