.class public final synthetic Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/os/Handler;

.field public final synthetic f$2:Landroid/widget/LinearLayout;

.field public final synthetic f$3:Landroid/widget/TextView;

.field public final synthetic f$4:Landroid/widget/LinearLayout;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;I)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    iput-object p3, p0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda0;->f$2:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda0;->f$3:Landroid/widget/TextView;

    iput-object p5, p0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda0;->f$4:Landroid/widget/LinearLayout;

    iput p6, p0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda0;->f$1:Landroid/os/Handler;

    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda0;->f$2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda0;->f$3:Landroid/widget/TextView;

    iget-object v4, p0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda0;->f$4:Landroid/widget/LinearLayout;

    iget v5, p0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda0;->f$5:I

    invoke-static/range {v0 .. v5}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard;->lambda$buildPage$4(Landroid/content/Context;Landroid/os/Handler;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;I)V

    return-void
.end method
