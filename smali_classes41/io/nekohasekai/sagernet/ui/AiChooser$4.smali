.class public final synthetic Lio/nekohasekai/sagernet/ui/AiChooser$4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Landroid/widget/BaseAdapter;

.field public final synthetic f$4:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/BaseAdapter;Landroid/widget/TextView;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AiChooser$4;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AiChooser$4;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/AiChooser$4;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lio/nekohasekai/sagernet/ui/AiChooser$4;->f$3:Landroid/widget/BaseAdapter;

    iput-object p5, p0, Lio/nekohasekai/sagernet/ui/AiChooser$4;->f$4:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AiChooser$4;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/AiChooser$4;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AiChooser$4;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/AiChooser$4;->f$3:Landroid/widget/BaseAdapter;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/AiChooser$4;->f$4:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3, v4}, Lio/nekohasekai/sagernet/ui/AiChooser;->lambda$show$2(Landroid/widget/EditText;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/BaseAdapter;Landroid/widget/TextView;)V

    return-void
.end method
