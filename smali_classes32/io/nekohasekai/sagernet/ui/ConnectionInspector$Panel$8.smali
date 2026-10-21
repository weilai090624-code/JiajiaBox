.class public final synthetic Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$8;->f$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$8;->f$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->lambda$refresh$4$io-nekohasekai-sagernet-ui-ConnectionInspector$Panel()V

    return-void
.end method
