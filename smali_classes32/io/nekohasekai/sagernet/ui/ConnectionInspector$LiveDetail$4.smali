.class public final synthetic Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;"
    method = "lambda$refresh$4"
    proto = "()V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$4;->f$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$4;->f$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->lambda$refresh$4$io-nekohasekai-sagernet-ui-ConnectionInspector$LiveDetail()V

    return-void
.end method
