.class public final Lio/nekohasekai/sagernet/ui/WebviewFragment;
.super Lio/nekohasekai/sagernet/ui/ToolbarFragment;
.source "WebviewFragment.kt"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001a\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0017J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0017R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/nekohasekai/sagernet/ui/WebviewFragment;",
        "Lio/nekohasekai/sagernet/ui/ToolbarFragment;",
        "Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;",
        "<init>",
        "()V",
        "mWebView",
        "Landroid/webkit/WebView;",
        "getMWebView",
        "()Landroid/webkit/WebView;",
        "setMWebView",
        "(Landroid/webkit/WebView;)V",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onMenuItemClick",
        "",
        "item",
        "Landroid/view/MenuItem;",
        "app_ossDebug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public mWebView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$XfgFuHPc31Rnn33kjRBfWmlpxyw(Landroid/widget/EditText;Lio/nekohasekai/sagernet/ui/WebviewFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/WebviewFragment;->onMenuItemClick$lambda$1(Landroid/widget/EditText;Lio/nekohasekai/sagernet/ui/WebviewFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    const v0, 0x7f0d005f

    invoke-direct {p0, v0}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;-><init>(I)V

    return-void
.end method

.method private static final onMenuItemClick$lambda$1(Landroid/widget/EditText;Lio/nekohasekai/sagernet/ui/WebviewFragment;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "$view"    # Landroid/widget/EditText;
    .param p1, "this$0"    # Lio/nekohasekai/sagernet/ui/WebviewFragment;

    .line 65
    sget-object p2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/nekohasekai/sagernet/database/DataStore;->setYacdURL(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/WebviewFragment;->getMWebView()Landroid/webkit/WebView;

    move-result-object p2

    sget-object p3, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {p3}, Lio/nekohasekai/sagernet/database/DataStore;->getYacdURL()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public final getMWebView()Landroid/webkit/WebView;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mWebView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 72
    :sswitch_0
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/WebviewFragment;->getMWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 73
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/WebviewFragment;->getMWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 74
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/WebviewFragment;->getMWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    goto :goto_0

    .line 58
    :sswitch_1
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/WebviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .local v1, "$this$onMenuItemClick_u24lambda_u240":Landroid/widget/EditText;
    const/4 v2, 0x0

    .line 59
    .local v2, "$i$a$-apply-WebviewFragment$onMenuItemClick$view$1":I
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 60
    sget-object v3, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v3}, Lio/nekohasekai/sagernet/database/DataStore;->getYacdURL()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    nop

    .line 58
    .end local v1    # "$this$onMenuItemClick_u24lambda_u240":Landroid/widget/EditText;
    .end local v2    # "$i$a$-apply-WebviewFragment$onMenuItemClick$view$1":I
    nop

    .line 62
    .local v0, "view":Landroid/widget/EditText;
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/WebviewFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f130276

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 63
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 64
    new-instance v2, Lio/nekohasekai/sagernet/ui/WebviewFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0}, Lio/nekohasekai/sagernet/ui/WebviewFragment$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;Lio/nekohasekai/sagernet/ui/WebviewFragment;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 68
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 77
    .end local v0    # "view":Landroid/widget/EditText;
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0080 -> :sswitch_1
        0x7f0a00d2 -> :sswitch_0
    .end sparse-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-super {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/ToolbarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/WebviewFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f13019a

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 30
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/WebviewFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f0f0010

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->inflateMenu(I)V

    .line 31
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/WebviewFragment;->getToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    .line 33
    invoke-static {p1}, Lio/nekohasekai/sagernet/databinding/LayoutWebviewBinding;->bind(Landroid/view/View;)Lio/nekohasekai/sagernet/databinding/LayoutWebviewBinding;

    move-result-object v0

    const-string v1, "bind(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .local v0, "binding":Lio/nekohasekai/sagernet/databinding/LayoutWebviewBinding;
    sget-boolean v1, Lio/nekohasekai/sagernet/BuildConfig;->DEBUG:Z

    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 37
    iget-object v1, v0, Lio/nekohasekai/sagernet/databinding/LayoutWebviewBinding;->webview:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/WebviewFragment;->setMWebView(Landroid/webkit/WebView;)V

    .line 38
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/WebviewFragment;->getMWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 39
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/WebviewFragment;->getMWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 40
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/WebviewFragment;->getMWebView()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lio/nekohasekai/sagernet/ui/WebviewFragment$onViewCreated$1;

    invoke-direct {v2}, Lio/nekohasekai/sagernet/ui/WebviewFragment$onViewCreated$1;-><init>()V

    check-cast v2, Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 51
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/WebviewFragment;->getMWebView()Landroid/webkit/WebView;

    move-result-object v1

    sget-object v2, Lio/nekohasekai/sagernet/database/DataStore;->INSTANCE:Lio/nekohasekai/sagernet/database/DataStore;

    invoke-virtual {v2}, Lio/nekohasekai/sagernet/database/DataStore;->getYacdURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public final setMWebView(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/webkit/WebView;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/WebviewFragment;->mWebView:Landroid/webkit/WebView;

    return-void
.end method
