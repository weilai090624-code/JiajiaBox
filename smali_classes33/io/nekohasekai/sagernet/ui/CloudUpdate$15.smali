.class public final synthetic Lio/nekohasekai/sagernet/ui/CloudUpdate$15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/CloudUpdate;"
    method = "lambda$onCreate$0"
    proto = "(Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$15;->f$0:Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/CloudUpdate$15;->f$0:Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/CloudUpdate;->lambda$onCreate$0(Lio/nekohasekai/sagernet/ui/CloudUpdate$Release;)V

    return-void
.end method
