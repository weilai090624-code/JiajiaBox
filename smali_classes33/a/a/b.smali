.class public final La/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/b$Listener;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String;

.field private static final PREFS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, ")\u0012\u00f1\u00c7\u0089\u0083qA!\u0018\u00ff\u00c1"

    invoke-static {v0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/b;->KEY:Ljava/lang/String;

    const-string v0, "9\u0015\u00f7\u00c2\u00b2\u00d8aC6\u0010\u00e4\u00ca"

    invoke-static {v0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/b;->PREFS:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)J
    .registers 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    :cond_5
    const-string v2, "9\u0015\u00f7\u00c2\u00b2\u00d8aC6\u0010\u00e4\u00ca"

    invoke-static {v2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, ")\u0012\u00f1\u00c7\u0089\u0083qA!\u0018\u00ff\u00c1"

    invoke-static {v2}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static set(Landroid/content/Context;J)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-string v0, "9\u0015\u00f7\u00c2\u00b2\u00d8aC6\u0010\u00e4\u00ca"

    invoke-static {v0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, ")\u0012\u00f1\u00c7\u0089\u0083qA!\u0018\u00ff\u00c1"

    invoke-static {v0}, La/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
