.class public final Lio/nekohasekai/sagernet/ui/CloudUpdateSkip;
.super Ljava/lang/Object;
.source "CloudUpdateSkip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/CloudUpdateSkip$Listener;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "skip_version"

.field private static final PREFS:Ljava/lang/String; = "cloud-update"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)J
    .registers 5

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    .line 18
    :cond_5
    const-string v2, "cloud-update"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "skip_version"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static set(Landroid/content/Context;J)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    .line 25
    :cond_3
    const-string v0, "cloud-update"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 26
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "skip_version"

    .line 27
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 28
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
