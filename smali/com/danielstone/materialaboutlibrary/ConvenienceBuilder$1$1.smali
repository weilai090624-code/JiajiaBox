.class Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1$1;
.super Ljava/lang/Object;
.source "ConvenienceBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;

.field final synthetic val$wv:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;

    .line 91
    iput-object p1, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1$1;->this$0:Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1;

    iput-object p2, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1$1;->val$wv:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 94
    iget-object v0, p0, Lcom/danielstone/materialaboutlibrary/ConvenienceBuilder$1$1;->val$wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 95
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 96
    return-void
.end method
