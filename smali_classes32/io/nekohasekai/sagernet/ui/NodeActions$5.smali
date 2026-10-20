.class public final synthetic Lio/nekohasekai/sagernet/ui/NodeActions$5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/NodeActions;"
    method = "lambda$show$2"
    proto = "(Landroid/app/Dialog;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/Object;

.field public final synthetic f$5:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/NodeActions$5;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/NodeActions$5;->f$1:Landroid/content/Context;

    iput-boolean p3, p0, Lio/nekohasekai/sagernet/ui/NodeActions$5;->f$2:Z

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/NodeActions$5;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/NodeActions$5;->f$4:Ljava/lang/Object;

    iput-object p6, p0, Lio/nekohasekai/sagernet/ui/NodeActions$5;->f$5:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/NodeActions$5;->f$0:Landroid/app/Dialog;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/NodeActions$5;->f$1:Landroid/content/Context;

    iget-boolean v2, p0, Lio/nekohasekai/sagernet/ui/NodeActions$5;->f$2:Z

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/NodeActions$5;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/NodeActions$5;->f$4:Ljava/lang/Object;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/NodeActions$5;->f$5:Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/NodeActions;->lambda$show$2(Landroid/app/Dialog;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
