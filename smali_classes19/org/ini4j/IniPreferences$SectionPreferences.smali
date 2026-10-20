.class public Lorg/ini4j/IniPreferences$SectionPreferences;
.super Ljava/util/prefs/AbstractPreferences;
.source "IniPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ini4j/IniPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SectionPreferences"
.end annotation


# instance fields
.field private final _section:Lorg/ini4j/Profile$Section;

.field final synthetic this$0:Lorg/ini4j/IniPreferences;


# direct methods
.method constructor <init>(Lorg/ini4j/IniPreferences;Ljava/util/prefs/AbstractPreferences;Lorg/ini4j/Profile$Section;Z)V
    .locals 0
    .param p2, "parent"    # Ljava/util/prefs/AbstractPreferences;
    .param p3, "section"    # Lorg/ini4j/Profile$Section;
    .param p4, "isNew"    # Z

    .line 255
    iput-object p1, p0, Lorg/ini4j/IniPreferences$SectionPreferences;->this$0:Lorg/ini4j/IniPreferences;

    .line 256
    invoke-interface {p3}, Lorg/ini4j/Profile$Section;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 257
    iput-object p3, p0, Lorg/ini4j/IniPreferences$SectionPreferences;->_section:Lorg/ini4j/Profile$Section;

    .line 258
    iput-boolean p4, p0, Lorg/ini4j/IniPreferences$SectionPreferences;->newNode:Z

    .line 259
    return-void
.end method


# virtual methods
.method protected bridge synthetic childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .line 241
    invoke-virtual {p0, p1}, Lorg/ini4j/IniPreferences$SectionPreferences;->childSpi(Ljava/lang/String;)Lorg/ini4j/IniPreferences$SectionPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected childSpi(Ljava/lang/String;)Lorg/ini4j/IniPreferences$SectionPreferences;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/ini4j/IniPreferences$SectionPreferences;->_section:Lorg/ini4j/Profile$Section;

    invoke-interface {v0, p1}, Lorg/ini4j/Profile$Section;->getChild(Ljava/lang/String;)Lorg/ini4j/Profile$Section;

    move-result-object v0

    .line 325
    .local v0, "child":Lorg/ini4j/Profile$Section;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 327
    .local v1, "isNew":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 329
    iget-object v2, p0, Lorg/ini4j/IniPreferences$SectionPreferences;->_section:Lorg/ini4j/Profile$Section;

    invoke-interface {v2, p1}, Lorg/ini4j/Profile$Section;->addChild(Ljava/lang/String;)Lorg/ini4j/Profile$Section;

    move-result-object v0

    .line 332
    :cond_1
    new-instance v2, Lorg/ini4j/IniPreferences$SectionPreferences;

    iget-object v3, p0, Lorg/ini4j/IniPreferences$SectionPreferences;->this$0:Lorg/ini4j/IniPreferences;

    invoke-direct {v2, v3, p0, v0, v1}, Lorg/ini4j/IniPreferences$SectionPreferences;-><init>(Lorg/ini4j/IniPreferences;Ljava/util/prefs/AbstractPreferences;Lorg/ini4j/Profile$Section;Z)V

    return-object v2
.end method

.method protected childrenNamesSpi()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lorg/ini4j/IniPreferences$SectionPreferences;->_section:Lorg/ini4j/Profile$Section;

    invoke-interface {v0}, Lorg/ini4j/Profile$Section;->childrenNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Lorg/ini4j/IniPreferences$SectionPreferences;->parent()Ljava/util/prefs/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/prefs/Preferences;->flush()V

    .line 272
    return-void
.end method

.method protected flushSpi()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 346
    return-void
.end method

.method protected getSpi(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lorg/ini4j/IniPreferences$SectionPreferences;->_section:Lorg/ini4j/Profile$Section;

    invoke-interface {v0, p1}, Lorg/ini4j/Profile$Section;->fetch(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected keysSpi()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lorg/ini4j/IniPreferences$SectionPreferences;->_section:Lorg/ini4j/Profile$Section;

    invoke-interface {v0}, Lorg/ini4j/Profile$Section;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lorg/ini4j/IniPreferences;->access$000()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected putSpi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 369
    iget-object v0, p0, Lorg/ini4j/IniPreferences$SectionPreferences;->_section:Lorg/ini4j/Profile$Section;

    invoke-interface {v0, p1, p2}, Lorg/ini4j/Profile$Section;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    return-void
.end method

.method protected removeNodeSpi()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lorg/ini4j/IniPreferences$SectionPreferences;->this$0:Lorg/ini4j/IniPreferences;

    invoke-static {v0}, Lorg/ini4j/IniPreferences;->access$100(Lorg/ini4j/IniPreferences;)Lorg/ini4j/Ini;

    move-result-object v0

    iget-object v1, p0, Lorg/ini4j/IniPreferences$SectionPreferences;->_section:Lorg/ini4j/Profile$Section;

    invoke-virtual {v0, v1}, Lorg/ini4j/Ini;->remove(Lorg/ini4j/Profile$Section;)Lorg/ini4j/Profile$Section;

    .line 381
    return-void
.end method

.method protected removeSpi(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lorg/ini4j/IniPreferences$SectionPreferences;->_section:Lorg/ini4j/Profile$Section;

    invoke-interface {v0, p1}, Lorg/ini4j/Profile$Section;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    return-void
.end method

.method public sync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lorg/ini4j/IniPreferences$SectionPreferences;->parent()Ljava/util/prefs/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/prefs/Preferences;->sync()V

    .line 285
    return-void
.end method

.method protected syncSpi()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .line 404
    return-void
.end method
