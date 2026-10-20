.class public final synthetic Lio/nekohasekai/sagernet/ui/NodeActions$3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/NodeActions;"
    method = "lambda$show$3"
    proto = "(Landroid/content/Context;Ljava/lang/Object;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/NodeActions$3;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/NodeActions$3;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/NodeActions$3;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/NodeActions$3;->f$1:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/NodeActions;->lambda$show$3(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method
