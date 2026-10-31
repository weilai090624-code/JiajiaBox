.class public final synthetic Lio/nekohasekai/sagernet/ui/AiChooser$9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;Landroid/widget/TextView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AiChooser$9;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AiChooser$9;->f$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AiChooser$9;->f$0:Landroid/app/Dialog;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AiChooser$9;->f$1:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/AiChooser;->lambda$show$6(Landroid/app/Dialog;Landroid/widget/TextView;)V

    return-void
.end method
