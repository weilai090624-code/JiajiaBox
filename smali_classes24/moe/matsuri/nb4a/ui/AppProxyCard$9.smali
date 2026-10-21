.class public final synthetic Lmoe/matsuri/nb4a/ui/AppProxyCard$9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lmoe/matsuri/nb4a/ui/AppProxyCard;"
    method = "lambda$new$6"
    proto = "(Landroid/content/DialogInterface;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;


# direct methods
.method public synthetic constructor <init>(Lmoe/matsuri/nb4a/ui/AppProxyCard;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$9;->f$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$9;->f$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    invoke-virtual {v0, p1}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->lambda$new$6$moe-matsuri-nb4a-ui-AppProxyCard(Landroid/content/DialogInterface;)V

    return-void
.end method
