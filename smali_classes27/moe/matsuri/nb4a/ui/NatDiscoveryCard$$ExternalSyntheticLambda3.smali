.class public final synthetic Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lmoe/matsuri/nb4a/ui/NatDiscoveryCard;->lambda$open$4(Ljava/util/concurrent/ExecutorService;Landroid/content/DialogInterface;)V

    return-void
.end method
