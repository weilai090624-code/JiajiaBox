.class public final synthetic Lio/nekohasekai/sagernet/ui/NodeActions$4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/NodeActions;"
    method = "lambda$show$1"
    proto = "(Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Z)V"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Z)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/NodeActions$4;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/NodeActions$4;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/NodeActions$4;->f$2:Landroid/content/Context;

    iput-boolean p4, p0, Lio/nekohasekai/sagernet/ui/NodeActions$4;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/NodeActions$4;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/NodeActions$4;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/NodeActions$4;->f$2:Landroid/content/Context;

    iget-boolean v3, p0, Lio/nekohasekai/sagernet/ui/NodeActions$4;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/NodeActions;->lambda$show$1(Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Z)V

    return-void
.end method
