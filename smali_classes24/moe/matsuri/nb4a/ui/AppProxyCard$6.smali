.class public final synthetic Lmoe/matsuri/nb4a/ui/AppProxyCard$6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lmoe/matsuri/nb4a/ui/AppProxyCard;"
    method = "lambda$new$3"
    proto = "(Landroid/app/Activity;Landroid/view/View;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lmoe/matsuri/nb4a/ui/AppProxyCard;Landroid/app/Activity;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$6;->f$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    iput-object p2, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$6;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$6;->f$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$6;->f$1:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->lambda$new$3$moe-matsuri-nb4a-ui-AppProxyCard(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
