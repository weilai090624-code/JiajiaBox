.class final Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;
.super Landroid/widget/BaseAdapter;
.source "ConnectionCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/ConnectionCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Rows"
.end annotation


# instance fields
.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;


# direct methods
.method private constructor <init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;Lio/nekohasekai/sagernet/ui/ConnectionCard$1;)V
    .registers 3

    .line 80
    invoke-direct {p0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .line 81
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    # getter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->data:Lio/nekohasekai/sagernet/ui/ConnectionRows;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$100(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Lio/nekohasekai/sagernet/ui/ConnectionRows;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    # getter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->data:Lio/nekohasekai/sagernet/ui/ConnectionRows;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$100(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Lio/nekohasekai/sagernet/ui/ConnectionRows;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/ui/ConnectionRows;->pages:[Ljava/util/List;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    # getter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->filter:I
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$200(Lio/nekohasekai/sagernet/ui/ConnectionCard;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

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

    .line 80
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;->getItem(I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/json/JSONObject;
    .registers 4

    .line 82
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    # getter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->data:Lio/nekohasekai/sagernet/ui/ConnectionRows;
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$100(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Lio/nekohasekai/sagernet/ui/ConnectionRows;

    move-result-object v0

    iget-object v0, v0, Lio/nekohasekai/sagernet/ui/ConnectionRows;->pages:[Ljava/util/List;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    # getter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->filter:I
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$200(Lio/nekohasekai/sagernet/ui/ConnectionCard;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    .line 84
    instance-of p3, p2, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;

    if-eqz p3, :cond_7

    check-cast p2, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;

    goto :goto_e

    :cond_7
    new-instance p2, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;

    iget-object p3, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    invoke-direct {p2, p3}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V

    :goto_e
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Rows;->getItem(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->bind(Lorg/json/JSONObject;)V

    return-object p2
.end method
