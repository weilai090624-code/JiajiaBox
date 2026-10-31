.class public final synthetic Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$0;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache;->lambda$load$0(Landroid/content/Context;)Lio/nekohasekai/sagernet/ui/ConnectionSnapshotCache$Snapshot;

    move-result-object v0

    return-object v0
.end method
