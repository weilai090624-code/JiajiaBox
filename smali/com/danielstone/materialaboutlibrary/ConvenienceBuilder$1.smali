.class final Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;
.super Ljava/lang/Object;
.source "ConvenienceBuilder.java"

# interfaces
.implements Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder;->createWebViewDialogOnClickAction(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Lcom/danielstone/materialaboutlibrary/items/MaterialAboutItemOnClickAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$dialogNegativeButton:Ljava/lang/CharSequence;

.field final synthetic val$dialogTitle:Ljava/lang/CharSequence;

.field final synthetic val$htmlString:Ljava/lang/String;

.field final synthetic val$isStringUrl:Z

.field final synthetic val$supportZoom:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZLjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;->val$c:Landroid/content/Context;

    iput-object p2, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;->val$dialogTitle:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;->val$supportZoom:Z

    iput-boolean p4, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;->val$isStringUrl:Z

    iput-object p5, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;->val$htmlString:Ljava/lang/String;

    iput-object p6, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;->val$dialogNegativeButton:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    .line 75
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;->val$c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, "alertBuilder":Landroidx/appcompat/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;->val$dialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 78
    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;->val$c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, "wv":Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    iget-boolean v3, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;->val$supportZoom:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 80
    iget-boolean v2, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;->val$supportZoom:Z

    if-nez v2, :cond_0

    .line 81
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 82
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 84
    :cond_0
    iget-boolean v2, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;->val$isStringUrl:Z

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;->val$htmlString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;->val$htmlString:Ljava/lang/String;

    const-string/jumbo v3, "text/html; charset=utf-8"

    const-string v4, "UTF-8"

    invoke-virtual {v1, v2, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 91
    iget-object v2, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;->val$dialogNegativeButton:Ljava/lang/CharSequence;

    new-instance v3, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1$1;

    invoke-direct {v3, p0, v1}, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1$1;-><init>(Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 100
    .local v2, "dialog":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 101
    return-void
.end method
