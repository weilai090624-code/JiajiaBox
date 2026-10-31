.class public Landroidx/startup/InitializationProvider;
.super Landroid/content/ContentProvider;
.source "InitializationProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onCreate()Z
    .registers 4

    .line 37
    invoke-virtual {p0}, Landroidx/startup/InitializationProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1c

    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 44
    .local v1, "applicationContext":Landroid/content/Context;
    if-eqz v1, :cond_14

    .line 45
    invoke-static {v0}, Landroidx/startup/AppInitializer;->getInstance(Landroid/content/Context;)Landroidx/startup/AppInitializer;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/startup/AppInitializer;->discoverAndInitialize()V

    goto :goto_19

    .line 47
    :cond_14
    const-string v2, "Deferring initialization because `applicationContext` is null."

    invoke-static {v2}, Landroidx/startup/StartupLogger;->w(Ljava/lang/String;)V

    .line 49
    .end local v1    # "applicationContext":Landroid/content/Context;
    :goto_19
    nop

    .line 52
    const/4 v1, 0x1

    return v1

    .line 50
    :cond_1c
    new-instance v1, Landroidx/startup/StartupException;

    const-string v2, "Context cannot be null"

    invoke-direct {v1, v2}, Landroidx/startup/StartupException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
