.class public Lorg/ini4j/IniPreferencesFactory;
.super Ljava/lang/Object;
.source "IniPreferencesFactory.java"

# interfaces
.implements Ljava/util/prefs/PreferencesFactory;


# static fields
.field public static final KEY_SYSTEM:Ljava/lang/String; = "org.ini4j.prefs.system"

.field public static final KEY_USER:Ljava/lang/String; = "org.ini4j.prefs.user"

.field public static final PROPERTIES:Ljava/lang/String; = "ini4j.properties"


# instance fields
.field private _system:Ljava/util/prefs/Preferences;

.field private _user:Ljava/util/prefs/Preferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getIniLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lorg/ini4j/Config;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "location":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 63
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 65
    .local v1, "props":Ljava/util/Properties;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "ini4j.properties"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 66
    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 71
    .end local v1    # "props":Ljava/util/Properties;
    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    .line 74
    :cond_0
    :goto_0
    return-object v0
.end method

.method getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 81
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "uri":Ljava/net/URI;
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 86
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .local v1, "url":Ljava/net/URL;
    goto :goto_0

    .line 90
    .end local v1    # "url":Ljava/net/URL;
    :cond_0
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .restart local v1    # "url":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 95
    .end local v0    # "uri":Ljava/net/URI;
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "x":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/IllegalArgumentException;

    throw v1
.end method

.method getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 105
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/ini4j/IniPreferencesFactory;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, "x":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/IllegalArgumentException;

    throw v1
.end method

.method newIniPreferences(Ljava/lang/String;)Ljava/util/prefs/Preferences;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 115
    new-instance v0, Lorg/ini4j/Ini;

    invoke-direct {v0}, Lorg/ini4j/Ini;-><init>()V

    .line 116
    .local v0, "ini":Lorg/ini4j/Ini;
    invoke-virtual {p0, p1}, Lorg/ini4j/IniPreferencesFactory;->getIniLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "location":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 122
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/ini4j/IniPreferencesFactory;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/ini4j/Ini;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    .line 126
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/IllegalArgumentException;

    throw v3

    .line 130
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_0
    :goto_0
    new-instance v2, Lorg/ini4j/IniPreferences;

    invoke-direct {v2, v0}, Lorg/ini4j/IniPreferences;-><init>(Lorg/ini4j/Ini;)V

    return-object v2
.end method

.method public declared-synchronized systemRoot()Ljava/util/prefs/Preferences;
    .locals 1

    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lorg/ini4j/IniPreferencesFactory;->_system:Ljava/util/prefs/Preferences;

    if-nez v0, :cond_0

    .line 39
    const-string v0, "org.ini4j.prefs.system"

    invoke-virtual {p0, v0}, Lorg/ini4j/IniPreferencesFactory;->newIniPreferences(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    iput-object v0, p0, Lorg/ini4j/IniPreferencesFactory;->_system:Ljava/util/prefs/Preferences;

    .line 42
    .end local p0    # "this":Lorg/ini4j/IniPreferencesFactory;
    :cond_0
    iget-object v0, p0, Lorg/ini4j/IniPreferencesFactory;->_system:Ljava/util/prefs/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized userRoot()Ljava/util/prefs/Preferences;
    .locals 1

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lorg/ini4j/IniPreferencesFactory;->_user:Ljava/util/prefs/Preferences;

    if-nez v0, :cond_0

    .line 49
    const-string v0, "org.ini4j.prefs.user"

    invoke-virtual {p0, v0}, Lorg/ini4j/IniPreferencesFactory;->newIniPreferences(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    iput-object v0, p0, Lorg/ini4j/IniPreferencesFactory;->_user:Ljava/util/prefs/Preferences;

    .line 52
    .end local p0    # "this":Lorg/ini4j/IniPreferencesFactory;
    :cond_0
    iget-object v0, p0, Lorg/ini4j/IniPreferencesFactory;->_user:Ljava/util/prefs/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
