.class public final synthetic Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/LinearLayout;

.field public final synthetic f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda4;->f$0:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda4;->f$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda4;->f$0:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard$$ExternalSyntheticLambda4;->f$1:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lmoe/matsuri/nb4a/ui/ProxyTrafficCard;->lambda$buildPage$3(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-void
.end method
