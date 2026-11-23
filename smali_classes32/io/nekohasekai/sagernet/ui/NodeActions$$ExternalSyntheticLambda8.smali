.class public final synthetic Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda8;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda8;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda8;->f$0:Landroid/app/Dialog;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda8;->f$3:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/NodeActions;->lambda$show$3(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;)V

    return-void
.end method
