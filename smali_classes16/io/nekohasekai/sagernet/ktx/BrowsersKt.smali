.class public final Lio/nekohasekai/sagernet/ktx/BrowsersKt;
.super Ljava/lang/Object;
.source "Browsers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "launchCustomTab",
        "",
        "Landroid/content/Context;",
        "link",
        "",
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
.method public static final launchCustomTab(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "$this$launchCustomTab"    # Landroid/content/Context;
    .param p1, "link"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    move-object v1, v0

    .local v1, "$this$launchCustomTab_u24lambda_u242":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    const/4 v2, 0x0

    .line 11
    .local v2, "$i$a$-apply-BrowsersKt$launchCustomTab$1":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setColorScheme(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 12
    nop

    .line 13
    nop

    .line 14
    new-instance v3, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    invoke-direct {v3}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;-><init>()V

    move-object v4, v3

    .local v4, "$this$launchCustomTab_u24lambda_u242_u24lambda_u240":Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;
    const/4 v5, 0x0

    .line 15
    .local v5, "$i$a$-apply-BrowsersKt$launchCustomTab$1$1":I
    const v6, 0x7f04010d

    invoke-static {p0, v6}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getColorAttr(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    .line 16
    nop

    .end local v4    # "$this$launchCustomTab_u24lambda_u242_u24lambda_u240":Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;
    .end local v5    # "$i$a$-apply-BrowsersKt$launchCustomTab$1$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 14
    nop

    .line 16
    invoke-virtual {v3}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->build()Landroidx/browser/customtabs/CustomTabColorSchemeParams;

    move-result-object v3

    .line 12
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setColorSchemeParams(ILandroidx/browser/customtabs/CustomTabColorSchemeParams;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 18
    nop

    .line 19
    nop

    .line 20
    new-instance v3, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    invoke-direct {v3}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;-><init>()V

    move-object v4, v3

    .local v4, "$this$launchCustomTab_u24lambda_u242_u24lambda_u241":Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;
    const/4 v5, 0x0

    .line 21
    .local v5, "$i$a$-apply-BrowsersKt$launchCustomTab$1$2":I
    invoke-static {p0, v6}, Lio/nekohasekai/sagernet/ktx/UtilsKt;->getColorAttr(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    .line 22
    nop

    .end local v4    # "$this$launchCustomTab_u24lambda_u242_u24lambda_u241":Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;
    .end local v5    # "$i$a$-apply-BrowsersKt$launchCustomTab$1$2":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    nop

    .line 22
    invoke-virtual {v3}, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->build()Landroidx/browser/customtabs/CustomTabColorSchemeParams;

    move-result-object v3

    .line 18
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setColorSchemeParams(ILandroidx/browser/customtabs/CustomTabColorSchemeParams;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 24
    nop

    .line 10
    .end local v1    # "$this$launchCustomTab_u24lambda_u242":Landroidx/browser/customtabs/CustomTabsIntent$Builder;
    .end local v2    # "$i$a$-apply-BrowsersKt$launchCustomTab$1":I
    nop

    .line 24
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    .local v0, "$this$launchCustomTab_u24lambda_u243":Landroidx/browser/customtabs/CustomTabsIntent;
    const/4 v1, 0x0

    .line 25
    .local v1, "$i$a$-apply-BrowsersKt$launchCustomTab$2":I
    iget-object v2, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 26
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 28
    :cond_0
    nop

    .line 24
    .end local v0    # "$this$launchCustomTab_u24lambda_u243":Landroidx/browser/customtabs/CustomTabsIntent;
    .end local v1    # "$i$a$-apply-BrowsersKt$launchCustomTab$2":I
    nop

    .line 29
    return-void
.end method
