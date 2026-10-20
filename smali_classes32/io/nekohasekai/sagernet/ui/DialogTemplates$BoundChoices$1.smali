.class Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices$1;
.super Landroid/database/DataSetObserver;
.source "DialogTemplates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;-><init>(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices$1;->this$0:Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .line 110
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices$1;->this$0:Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .line 110
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices$1;->this$0:Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;

    invoke-virtual {v0}, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;->notifyDataSetInvalidated()V

    return-void
.end method
