.class Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$1;
.super Landroid/webkit/WebViewClient;
.source "GlobalGlobeCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->createWeb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$1;->this$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private blocked()Landroid/webkit/WebResourceResponse;
    .registers 5

    .line 215
    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "text/plain"

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0
.end method

.method private resource(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 3

    if-eqz p1, :cond_c

    .line 214
    const-string v0, "data:image/webp;base64,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    invoke-direct {p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$1;->blocked()Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .line 216
    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$1;->this$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    # getter for: Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;
    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->access$000(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)Landroid/webkit/WebView;

    move-result-object p2

    if-ne p2, p1, :cond_24

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$1;->this$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    const/4 v0, 0x1

    # setter for: Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->loaded:Z
    invoke-static {p2, v0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->access$102(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;Z)Z

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$1;->this$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    const/4 v0, 0x0

    # setter for: Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->lastState:Ljava/lang/String;
    invoke-static {p2, v0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->access$202(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$1;->this$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    # invokes: Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->sendState()V
    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->access$300(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)V

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$1;->this$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    # getter for: Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->live:Z
    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->access$400(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)Z

    move-result p2

    if-nez p2, :cond_24

    invoke-virtual {p1}, Landroid/webkit/WebView;->onPause()V

    :cond_24
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 3

    .line 213
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$1;->resource(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 3

    .line 212
    invoke-direct {p0, p2}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$1;->resource(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method
