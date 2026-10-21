.class Lmoe/matsuri/nb4a/ui/AppProxyCard$1;
.super Landroid/widget/BaseAdapter;
.source "AppProxyCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmoe/matsuri/nb4a/ui/AppProxyCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;


# direct methods
.method constructor <init>(Lmoe/matsuri/nb4a/ui/AppProxyCard;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$1;->this$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 52
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$1;->this$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    # getter for: Lmoe/matsuri/nb4a/ui/AppProxyCard;->visible:Ljava/util/List;
    invoke-static {v0}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->access$000(Lmoe/matsuri/nb4a/ui/AppProxyCard;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 53
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$1;->this$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    # getter for: Lmoe/matsuri/nb4a/ui/AppProxyCard;->visible:Ljava/util/List;
    invoke-static {v0}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->access$000(Lmoe/matsuri/nb4a/ui/AppProxyCard;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    .line 55
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$1;->this$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    # getter for: Lmoe/matsuri/nb4a/ui/AppProxyCard;->visible:Ljava/util/List;
    invoke-static {v0}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->access$000(Lmoe/matsuri/nb4a/ui/AppProxyCard;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$1;->this$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    # getter for: Lmoe/matsuri/nb4a/ui/AppProxyCard;->ids:Ljava/util/Map;
    invoke-static {v0}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->access$100(Lmoe/matsuri/nb4a/ui/AppProxyCard;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 57
    if-nez v0, :cond_2f

    iget-object v0, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$1;->this$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    # operator++ for: Lmoe/matsuri/nb4a/ui/AppProxyCard;->nextId:J
    invoke-static {v0}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->access$208(Lmoe/matsuri/nb4a/ui/AppProxyCard;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$1;->this$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    # getter for: Lmoe/matsuri/nb4a/ui/AppProxyCard;->ids:Ljava/util/Map;
    invoke-static {v1}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->access$100(Lmoe/matsuri/nb4a/ui/AppProxyCard;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 62
    instance-of p3, p2, Lmoe/matsuri/nb4a/ui/AppProxyRow;

    if-eqz p3, :cond_7

    .line 63
    check-cast p2, Lmoe/matsuri/nb4a/ui/AppProxyRow;

    goto :goto_12

    :cond_7
    new-instance p2, Lmoe/matsuri/nb4a/ui/AppProxyRow;

    iget-object p3, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$1;->this$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    # getter for: Lmoe/matsuri/nb4a/ui/AppProxyCard;->activity:Landroid/app/Activity;
    invoke-static {p3}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->access$300(Lmoe/matsuri/nb4a/ui/AppProxyCard;)Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lmoe/matsuri/nb4a/ui/AppProxyRow;-><init>(Landroid/content/Context;)V

    .line 64
    :goto_12
    iget-object p3, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$1;->this$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    # getter for: Lmoe/matsuri/nb4a/ui/AppProxyCard;->visible:Ljava/util/List;
    invoke-static {p3}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->access$000(Lmoe/matsuri/nb4a/ui/AppProxyCard;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 65
    iget-object p3, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$1;->this$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    # getter for: Lmoe/matsuri/nb4a/ui/AppProxyCard;->labels:Ljava/util/Map;
    invoke-static {p3}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->access$400(Lmoe/matsuri/nb4a/ui/AppProxyCard;)Ljava/util/Map;

    move-result-object p3

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 66
    if-nez p3, :cond_30

    iget-object p3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_30
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lmoe/matsuri/nb4a/ui/AppProxyCard$1;->this$0:Lmoe/matsuri/nb4a/ui/AppProxyCard;

    # getter for: Lmoe/matsuri/nb4a/ui/AppProxyCard;->selected:Lmoe/matsuri/nb4a/ui/AppProxySelection;
    invoke-static {v1}, Lmoe/matsuri/nb4a/ui/AppProxyCard;->access$500(Lmoe/matsuri/nb4a/ui/AppProxyCard;)Lmoe/matsuri/nb4a/ui/AppProxySelection;

    move-result-object v1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lmoe/matsuri/nb4a/ui/AppProxySelection;->contains(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p2, p3, v0, p1}, Lmoe/matsuri/nb4a/ui/AppProxyRow;->bind(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    return-object p2
.end method

.method public hasStableIds()Z
    .registers 2

    .line 60
    const/4 v0, 0x1

    return v0
.end method
