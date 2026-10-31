.class public final synthetic Lio/nekohasekai/sagernet/ui/MorphDialog$9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$9;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog$9;->f$0:Ljava/lang/Object;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->lambda$groupConfirm$7(Ljava/lang/Object;)V

    return-void
.end method
