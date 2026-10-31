.class final Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Rows;
.super Landroid/widget/BaseAdapter;
.source "ConnectionInspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Rows"
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 166
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Rows;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 167
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Rows;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    iget-object v0, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->visible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 166
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Rows;->getItem(I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/json/JSONObject;
    .registers 3

    .line 168
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Rows;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    iget-object v0, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->visible:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 170
    instance-of p3, p2, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item;

    if-eqz p3, :cond_7

    check-cast p2, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item;

    goto :goto_e

    :cond_7
    new-instance p2, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item;

    iget-object p3, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Rows;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    invoke-direct {p2, p3}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V

    :goto_e
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Rows;->getItem(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item;->bind(Lorg/json/JSONObject;)V

    return-object p2
.end method
