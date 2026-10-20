.class public final synthetic Lio/nekohasekai/sagernet/ui/NodeActions$6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/NodeActions;"
    method = "lambda$show$4"
    proto = "(Landroid/app/Dialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/NodeActions$6;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/NodeActions$6;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/NodeActions$6;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/NodeActions$6;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/NodeActions$6;->f$0:Landroid/app/Dialog;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/NodeActions$6;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/NodeActions$6;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/NodeActions$6;->f$3:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/NodeActions;->lambda$show$4(Landroid/app/Dialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
