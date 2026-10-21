.class public final synthetic Lmoe/matsuri/nb4a/ui/AppProxyCard$5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lmoe/matsuri/nb4a/ui/AppProxyCard;"
    method = "lambda$new$2"
    proto = "(Landroid/widget/AdapterView;Landroid/view/View;IJ)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;


# direct methods
.method public synthetic constructor <init>(Lmoe/matsuri/nb4a/ui/AppProxyCard;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$5;->f$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12

    .line 0
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$5;->f$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->lambda$new$2$moe-matsuri-nb4a-ui-AppProxyCard(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
