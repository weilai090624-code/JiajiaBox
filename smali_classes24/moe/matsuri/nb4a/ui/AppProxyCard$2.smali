.class Lmoe/matsuri/nb4a/ui/AppProxyCard$2;
.super Ljava/lang/Object;
.source "AppProxyCard.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/matsuri/nb4a/ui/AppProxyCard;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;


# direct methods
.method constructor <init>(Lmoe/matsuri/nb4a/ui/AppProxyCard;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$2;->this$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 143
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 141
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 142
    iget-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$2;->this$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    # invokes: Lmoe/matsuri/nb4a/ui/AppProxyCard;->filter()V
    invoke-static {p1}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->access$600(Lmoe/matsuri/nb4a/ui/AppProxyCard;)V

    return-void
.end method
