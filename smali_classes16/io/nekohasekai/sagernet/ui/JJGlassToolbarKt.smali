.class public final Lio/nekohasekai/sagernet/ui/JJGlassToolbarKt;
.super Ljava/lang/Object;
.source "JJGlassToolbar.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "findActivity",
        "Landroid/app/Activity;",
        "Landroid/content/Context;",
        "app_ossDebug"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$findActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0, "$receiver"    # Landroid/content/Context;

    .line 1
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/JJGlassToolbarKt;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private static final findActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3
    .param p0, "$this$findActivity"    # Landroid/content/Context;

    .line 242
    move-object v0, p0

    .line 243
    .local v0, "ctx":Landroid/content/Context;
    :goto_0
    nop

    .line 244
    nop

    .line 245
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    return-object v1

    .line 246
    :cond_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 247
    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 248
    .local v1, "base":Landroid/content/Context;
    if-ne v1, v0, :cond_1

    return-object v2

    .line 249
    :cond_1
    move-object v0, v1

    .end local v1    # "base":Landroid/content/Context;
    goto :goto_0

    .line 251
    :cond_2
    return-object v2
.end method
