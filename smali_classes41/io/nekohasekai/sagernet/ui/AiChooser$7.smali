.class public final synthetic Lio/nekohasekai/sagernet/ui/AiChooser$7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/app/Dialog;

.field public final synthetic f$3:[J

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:Ljava/lang/Runnable;

.field public final synthetic f$6:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Ljava/lang/String;Landroid/app/Dialog;[JLjava/util/ArrayList;Ljava/lang/Runnable;Landroid/widget/TextView;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AiChooser$7;->f$0:Landroid/view/View;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AiChooser$7;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/AiChooser$7;->f$2:Landroid/app/Dialog;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/AiChooser$7;->f$3:[J

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/AiChooser$7;->f$4:Ljava/util/ArrayList;

    iput-object p6, p0, Lio/nekohasekai/sagernet/ui/AiChooser$7;->f$5:Ljava/lang/Runnable;

    iput-object p7, p0, Lio/nekohasekai/sagernet/ui/AiChooser$7;->f$6:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AiChooser$7;->f$0:Landroid/view/View;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AiChooser$7;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AiChooser$7;->f$2:Landroid/app/Dialog;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/AiChooser$7;->f$3:[J

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/AiChooser$7;->f$4:Ljava/util/ArrayList;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/AiChooser$7;->f$5:Ljava/lang/Runnable;

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/AiChooser$7;->f$6:Landroid/widget/TextView;

    invoke-static/range {v0 .. v6}, Lio/nekohasekai/sagernet/ui/AiChooser;->lambda$show$7(Landroid/view/View;Ljava/lang/String;Landroid/app/Dialog;[JLjava/util/ArrayList;Ljava/lang/Runnable;Landroid/widget/TextView;)V

    return-void
.end method
