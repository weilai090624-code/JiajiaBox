.class public final synthetic Lio/nekohasekai/sagernet/ui/SubscriptionDownload$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/SubscriptionDownload;"
    method = "lambda$fetch$0"
    proto = "(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 3

    .line 0
    invoke-static {p1, p2}, Lio/nekohasekai/sagernet/ui/SubscriptionDownload;->lambda$fetch$0(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
