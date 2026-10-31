.class Lio/nekohasekai/sagernet/ui/AiChooser$1;
.super Landroid/widget/BaseAdapter;
.source "AiChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/nekohasekai/sagernet/ui/AiChooser;->show(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$filtered:Ljava/util/ArrayList;

.field final synthetic val$selected:[J


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;[J)V
    .registers 4

    .line 44
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/AiChooser$1;->val$filtered:Ljava/util/ArrayList;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/AiChooser$1;->val$c:Landroid/content/Context;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/AiChooser$1;->val$selected:[J

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 44
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AiChooser$1;->val$filtered:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 44
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AiChooser$1;->val$filtered:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 44
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AiChooser$1;->val$filtered:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/nekohasekai/sagernet/ui/AiChooser$Entry;

    iget-wide v0, p1, Lio/nekohasekai/sagernet/ui/AiChooser$Entry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .line 44
    instance-of p3, p2, Landroid/widget/TextView;

    if-eqz p3, :cond_8

    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    goto :goto_f

    :cond_8
    new-instance p3, Landroid/widget/TextView;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/AiChooser$1;->val$c:Landroid/content/Context;

    invoke-direct {p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    :goto_f
    if-nez p2, :cond_19

    const/high16 p2, 0x41700000    # 15.0f

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p3}, Lio/nekohasekai/sagernet/ui/UiComponents;->choice(Landroid/view/View;)V

    :cond_19
    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/AiChooser$1;->val$filtered:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/nekohasekai/sagernet/ui/AiChooser$Entry;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, p1, Lio/nekohasekai/sagernet/ui/AiChooser$Entry;->id:J

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/AiChooser$1;->val$selected:[J

    const/4 v3, 0x0

    aget-wide v3, v2, v3

    cmp-long v2, v0, v3

    if-nez v2, :cond_34

    const-string v0, "\u2713 "

    goto :goto_36

    :cond_34
    const-string v0, ""

    :goto_36
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lio/nekohasekai/sagernet/ui/AiChooser$Entry;->text:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method
