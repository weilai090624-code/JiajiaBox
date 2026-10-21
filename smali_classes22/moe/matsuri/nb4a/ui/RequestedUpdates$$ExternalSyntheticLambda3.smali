.class public final synthetic Lmoe/matsuri/nb4a/ui/RequestedUpdates$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/RequestedUpdates$$ExternalSyntheticLambda3;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Lmoe/matsuri/nb4a/ui/RequestedUpdates$$ExternalSyntheticLambda3;->f$1:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/RequestedUpdates$$ExternalSyntheticLambda3;->f$0:Landroid/app/Dialog;

    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/RequestedUpdates$$ExternalSyntheticLambda3;->f$1:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, p1}, Lmoe/matsuri/nb4a/ui/RequestedUpdates;->lambda$confirm$2(Landroid/app/Dialog;Landroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V

    return-void
.end method
