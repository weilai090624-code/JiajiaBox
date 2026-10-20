.class Lorg/ini4j/ConfigParser$PyIni;
.super Lorg/ini4j/Ini;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ini4j/ConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PyIni"
.end annotation


# static fields
.field protected static final DEFAULT_SECTION_NAME:Ljava/lang/String; = "DEFAULT"

.field private static final EXPRESSION:Ljava/util/regex/Pattern;

.field private static final G_OPTION:I = 0x1

.field private static final SUBST_CHAR:C = '%'

.field private static final serialVersionUID:J = -0x63440e1d1a48991aL


# instance fields
.field private _defaultSection:Lorg/ini4j/Profile$Section;

.field private final _defaults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 417
    const-string v0, "(?<!\\\\)\\%\\(([^\\)]+)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/ini4j/ConfigParser$PyIni;->EXPRESSION:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 425
    .local p1, "defaults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/ini4j/Ini;-><init>()V

    .line 426
    iput-object p1, p0, Lorg/ini4j/ConfigParser$PyIni;->_defaults:Ljava/util/Map;

    .line 427
    invoke-virtual {p0}, Lorg/ini4j/ConfigParser$PyIni;->getConfig()Lorg/ini4j/Config;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ini4j/Config;->clone()Lorg/ini4j/Config;

    move-result-object v0

    .line 429
    .local v0, "cfg":Lorg/ini4j/Config;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ini4j/Config;->setEscape(Z)V

    .line 430
    invoke-virtual {v0, v1}, Lorg/ini4j/Config;->setMultiOption(Z)V

    .line 431
    invoke-virtual {v0, v1}, Lorg/ini4j/Config;->setMultiSection(Z)V

    .line 432
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/ini4j/Config;->setLowerCaseOption(Z)V

    .line 433
    invoke-virtual {v0, v1}, Lorg/ini4j/Config;->setLowerCaseSection(Z)V

    .line 434
    invoke-super {p0, v0}, Lorg/ini4j/Ini;->setConfig(Lorg/ini4j/Config;)V

    .line 435
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lorg/ini4j/Profile$Section;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 451
    const-string v0, "DEFAULT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lorg/ini4j/ConfigParser$PyIni;->_defaultSection:Lorg/ini4j/Profile$Section;

    if-nez v0, :cond_0

    .line 455
    invoke-virtual {p0, p1}, Lorg/ini4j/ConfigParser$PyIni;->newSection(Ljava/lang/String;)Lorg/ini4j/Profile$Section;

    move-result-object v0

    iput-object v0, p0, Lorg/ini4j/ConfigParser$PyIni;->_defaultSection:Lorg/ini4j/Profile$Section;

    .line 458
    :cond_0
    iget-object v0, p0, Lorg/ini4j/ConfigParser$PyIni;->_defaultSection:Lorg/ini4j/Profile$Section;

    .local v0, "section":Lorg/ini4j/Profile$Section;
    goto :goto_0

    .line 462
    .end local v0    # "section":Lorg/ini4j/Profile$Section;
    :cond_1
    invoke-super {p0, p1}, Lorg/ini4j/Ini;->add(Ljava/lang/String;)Lorg/ini4j/Profile$Section;

    move-result-object v0

    .line 465
    .restart local v0    # "section":Lorg/ini4j/Profile$Section;
    :goto_0
    return-object v0
.end method

.method public fetch(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "sectionName"    # Ljava/lang/String;
    .param p2, "optionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ini4j/ConfigParser$InterpolationMissingOptionException;
        }
    .end annotation

    .line 470
    .local p3, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lorg/ini4j/ConfigParser$PyIni;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/Profile$Section;

    invoke-virtual {p0, v0, p2, p3}, Lorg/ini4j/ConfigParser$PyIni;->fetch(Lorg/ini4j/Profile$Section;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected fetch(Lorg/ini4j/Profile$Section;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p1, "section"    # Lorg/ini4j/Profile$Section;
    .param p2, "optionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ini4j/Profile$Section;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ini4j/ConfigParser$InterpolationMissingOptionException;
        }
    .end annotation

    .line 481
    .local p3, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, p2}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 483
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v1, p1, p3}, Lorg/ini4j/ConfigParser$PyIni;->resolve(Ljava/lang/StringBuilder;Lorg/ini4j/Profile$Section;Ljava/util/Map;)V

    .line 488
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    :cond_0
    return-object v0
.end method

.method protected getDefaultSection()Lorg/ini4j/Profile$Section;
    .locals 1

    .line 475
    iget-object v0, p0, Lorg/ini4j/ConfigParser$PyIni;->_defaultSection:Lorg/ini4j/Profile$Section;

    return-object v0
.end method

.method public getDefaults()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lorg/ini4j/ConfigParser$PyIni;->_defaults:Ljava/util/Map;

    return-object v0
.end method

.method protected resolve(Ljava/lang/StringBuilder;Lorg/ini4j/Profile$Section;Ljava/util/Map;)V
    .locals 5
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .param p2, "owner"    # Lorg/ini4j/Profile$Section;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lorg/ini4j/Profile$Section;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ini4j/ConfigParser$InterpolationMissingOptionException;
        }
    .end annotation

    .line 496
    .local p3, "vars":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lorg/ini4j/ConfigParser$PyIni;->EXPRESSION:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 498
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 500
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "optionName":Ljava/lang/String;
    invoke-interface {p2, v1}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 503
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 505
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 508
    :cond_0
    if-nez v2, :cond_1

    .line 510
    iget-object v3, p0, Lorg/ini4j/ConfigParser$PyIni;->_defaults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 513
    :cond_1
    if-nez v2, :cond_2

    iget-object v3, p0, Lorg/ini4j/ConfigParser$PyIni;->_defaultSection:Lorg/ini4j/Profile$Section;

    if-eqz v3, :cond_2

    .line 515
    iget-object v3, p0, Lorg/ini4j/ConfigParser$PyIni;->_defaultSection:Lorg/ini4j/Profile$Section;

    invoke-interface {v3, v1}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 518
    :cond_2
    if-eqz v2, :cond_3

    .line 523
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {p1, v3, v4, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 525
    .end local v1    # "optionName":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 520
    .restart local v1    # "optionName":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_3
    new-instance v3, Lorg/ini4j/ConfigParser$InterpolationMissingOptionException;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lorg/ini4j/ConfigParser$InterpolationMissingOptionException;-><init>(Ljava/lang/String;Lorg/ini4j/ConfigParser$1;)V

    throw v3

    .line 526
    .end local v1    # "optionName":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public setConfig(Lorg/ini4j/Config;)V
    .locals 0
    .param p1, "value"    # Lorg/ini4j/Config;

    .line 440
    return-void
.end method

.method protected store(Lorg/ini4j/spi/IniHandler;)V
    .locals 2
    .param p1, "formatter"    # Lorg/ini4j/spi/IniHandler;

    .line 530
    invoke-interface {p1}, Lorg/ini4j/spi/IniHandler;->startIni()V

    .line 531
    iget-object v0, p0, Lorg/ini4j/ConfigParser$PyIni;->_defaultSection:Lorg/ini4j/Profile$Section;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lorg/ini4j/ConfigParser$PyIni;->_defaultSection:Lorg/ini4j/Profile$Section;

    invoke-virtual {p0, p1, v0}, Lorg/ini4j/ConfigParser$PyIni;->store(Lorg/ini4j/spi/IniHandler;Lorg/ini4j/Profile$Section;)V

    .line 536
    :cond_0
    invoke-virtual {p0}, Lorg/ini4j/ConfigParser$PyIni;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ini4j/Profile$Section;

    .line 538
    .local v1, "s":Lorg/ini4j/Profile$Section;
    invoke-virtual {p0, p1, v1}, Lorg/ini4j/ConfigParser$PyIni;->store(Lorg/ini4j/spi/IniHandler;Lorg/ini4j/Profile$Section;)V

    .line 539
    .end local v1    # "s":Lorg/ini4j/Profile$Section;
    goto :goto_0

    .line 541
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {p1}, Lorg/ini4j/spi/IniHandler;->endIni()V

    .line 542
    return-void
.end method

.method protected store(Lorg/ini4j/spi/IniHandler;Lorg/ini4j/Profile$Section;)V
    .locals 3
    .param p1, "formatter"    # Lorg/ini4j/spi/IniHandler;
    .param p2, "section"    # Lorg/ini4j/Profile$Section;

    .line 546
    invoke-interface {p2}, Lorg/ini4j/Profile$Section;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ini4j/spi/IniHandler;->startSection(Ljava/lang/String;)V

    .line 547
    invoke-interface {p2}, Lorg/ini4j/Profile$Section;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 549
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p2, v1}, Lorg/ini4j/Profile$Section;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/ini4j/spi/IniHandler;->handleOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 552
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {p1}, Lorg/ini4j/spi/IniHandler;->endSection()V

    .line 553
    return-void
.end method
