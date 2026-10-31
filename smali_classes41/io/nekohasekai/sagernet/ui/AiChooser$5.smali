.class public final synthetic Lio/nekohasekai/sagernet/ui/AiChooser$5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/app/Dialog;

.field public final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/view/View;Landroid/app/Dialog;Landroid/content/Context;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AiChooser$5;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AiChooser$5;->f$1:Landroid/view/View;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/AiChooser$5;->f$2:Landroid/app/Dialog;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/AiChooser$5;->f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AiChooser$5;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AiChooser$5;->f$1:Landroid/view/View;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AiChooser$5;->f$2:Landroid/app/Dialog;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/AiChooser$5;->f$3:Landroid/content/Context;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-static/range {v0 .. v8}, Lio/nekohasekai/sagernet/ui/AiChooser;->lambda$show$3(Ljava/util/ArrayList;Landroid/view/View;Landroid/app/Dialog;Landroid/content/Context;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
