.class public final synthetic Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:Landroid/widget/TextView;

.field public final synthetic f$3:Ljava/util/concurrent/ExecutorService;

.field public final synthetic f$4:Landroid/os/Handler;

.field public final synthetic f$5:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Landroid/app/Dialog;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda2;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda2;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda2;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda2;->f$3:Ljava/util/concurrent/ExecutorService;

    iput-object p5, p0, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda2;->f$4:Landroid/os/Handler;

    iput-object p6, p0, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda2;->f$5:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9

    .line 0
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda2;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda2;->f$1:Landroid/widget/TextView;

    iget-object v2, p0, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda2;->f$2:Landroid/widget/TextView;

    iget-object v3, p0, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda2;->f$3:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda2;->f$4:Landroid/os/Handler;

    iget-object v5, p0, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda2;->f$5:Landroid/app/Dialog;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard;->lambda$open$3(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
