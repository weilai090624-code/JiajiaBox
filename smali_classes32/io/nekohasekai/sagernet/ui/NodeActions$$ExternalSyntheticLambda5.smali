.class public final synthetic Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda5;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda5;->f$0:Landroid/app/Dialog;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1, p1}, Lio/nekohasekai/sagernet/ui/NodeActions;->lambda$confirm$9(Landroid/app/Dialog;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
