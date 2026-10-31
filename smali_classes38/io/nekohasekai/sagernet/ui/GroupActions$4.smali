.class public final synthetic Lio/nekohasekai/sagernet/ui/GroupActions$4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/content/Context;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GroupActions$4;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/GroupActions$4;->f$1:Landroid/content/Context;

    iput-boolean p3, p0, Lio/nekohasekai/sagernet/ui/GroupActions$4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/GroupActions$4;->f$0:Ljava/lang/Object;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GroupActions$4;->f$1:Landroid/content/Context;

    iget-boolean v2, p0, Lio/nekohasekai/sagernet/ui/GroupActions$4;->f$2:Z

    invoke-static {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/GroupActions;->lambda$save$7(Ljava/lang/Object;Landroid/content/Context;Z)V

    return-void
.end method
