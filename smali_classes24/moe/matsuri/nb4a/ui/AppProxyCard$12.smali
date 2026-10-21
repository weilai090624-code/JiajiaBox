.class public final synthetic Lmoe/matsuri/nb4a/ui/AppProxyCard$12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lmoe/matsuri/nb4a/ui/AppProxyCard;"
    method = "lambda$load$9"
    proto = "(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/Map;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lmoe/matsuri/nb4a/ui/AppProxyCard;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$12;->f$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    iput-object p2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$12;->f$1:Ljava/util/List;

    iput-object p3, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$12;->f$2:Ljava/util/Map;

    iput-object p4, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$12;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$12;->f$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$12;->f$1:Ljava/util/List;

    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$12;->f$2:Ljava/util/Map;

    iget-object v3, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$12;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->lambda$load$9$moe-matsuri-nb4a-ui-AppProxyCard(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method
