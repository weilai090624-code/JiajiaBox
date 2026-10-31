.class public final synthetic Lio/nekohasekai/sagernet/ui/MorphDialog$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;


# direct methods
.method public synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$0;->f$0:Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$0;->f$0:Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->lambda$beginGroup$4(Lio/nekohasekai/sagernet/ui/MorphDialog$Snapshot;)V

    return-void
.end method
