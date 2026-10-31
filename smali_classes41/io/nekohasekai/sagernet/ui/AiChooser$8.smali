.class public final synthetic Lio/nekohasekai/sagernet/ui/AiChooser$8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Dialog;

.field public final synthetic f$1:[J

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;[JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AiChooser$8;->f$0:Landroid/app/Dialog;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AiChooser$8;->f$1:[J

    iput-wide p3, p0, Lio/nekohasekai/sagernet/ui/AiChooser$8;->f$2:J

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/AiChooser$8;->f$3:Ljava/util/ArrayList;

    iput-object p6, p0, Lio/nekohasekai/sagernet/ui/AiChooser$8;->f$4:Ljava/util/ArrayList;

    iput-object p7, p0, Lio/nekohasekai/sagernet/ui/AiChooser$8;->f$5:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AiChooser$8;->f$0:Landroid/app/Dialog;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AiChooser$8;->f$1:[J

    iget-wide v2, p0, Lio/nekohasekai/sagernet/ui/AiChooser$8;->f$2:J

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/AiChooser$8;->f$3:Ljava/util/ArrayList;

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/AiChooser$8;->f$4:Ljava/util/ArrayList;

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/AiChooser$8;->f$5:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v6}, Lio/nekohasekai/sagernet/ui/AiChooser;->lambda$show$5(Landroid/app/Dialog;[JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method
