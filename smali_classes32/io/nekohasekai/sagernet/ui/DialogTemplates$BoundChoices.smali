.class final Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;
.super Landroid/widget/BaseAdapter;
.source "DialogTemplates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DialogTemplates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BoundChoices"
.end annotation


# instance fields
.field private final original:Landroid/widget/ListAdapter;


# direct methods
.method constructor <init>(Landroid/widget/ListAdapter;)V
    .registers 3

    .line 124
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;->original:Landroid/widget/ListAdapter;

    new-instance v0, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices$1;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices$1;-><init>(Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;)V

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .line 131
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;->original:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 2

    .line 125
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;->original:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 126
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;->original:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 127
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;->original:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 129
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;->original:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 133
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;->original:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->choice(Landroid/view/View;)V

    return-object p1
.end method

.method public getViewTypeCount()I
    .registers 2

    .line 130
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;->original:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .line 128
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;->original:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3

    .line 132
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DialogTemplates$BoundChoices;->original:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method
