.class final Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;
.super Landroid/widget/LinearLayout;
.source "ConnectionCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/ConnectionCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Row"
.end annotation


# instance fields
.field final app:Landroid/widget/TextView;

.field final host:Landroid/widget/TextView;

.field final route:Landroid/widget/TextView;

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

.field value:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/ConnectionCard;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->setOrientation(I)V

    const/high16 v1, 0x40a00000    # 5.0f

    # invokes: Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I
    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$300(Lio/nekohasekai/sagernet/ui/ConnectionCard;F)I

    move-result v2

    # invokes: Lio/nekohasekai/sagernet/ui/ConnectionCard;->dp(F)I
    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$300(Lio/nekohasekai/sagernet/ui/ConnectionCard;F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, v3, v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->setPadding(IIII)V

    const/16 v1, 0xc

    const-string v2, ""

    # invokes: Lio/nekohasekai/sagernet/ui/ConnectionCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;
    invoke-static {p1, v2, v1, v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$400(Lio/nekohasekai/sagernet/ui/ConnectionCard;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->app:Landroid/widget/TextView;

    const/16 v4, 0xb

    # invokes: Lio/nekohasekai/sagernet/ui/ConnectionCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;
    invoke-static {p1, v2, v4, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$400(Lio/nekohasekai/sagernet/ui/ConnectionCard;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->host:Landroid/widget/TextView;

    const/16 v5, 0xa

    # invokes: Lio/nekohasekai/sagernet/ui/ConnectionCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;
    invoke-static {p1, v2, v5, v3}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$400(Lio/nekohasekai/sagernet/ui/ConnectionCard;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->route:Landroid/widget/TextView;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    invoke-virtual {p0, v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->setFocusable(Z)V

    new-instance p1, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row$0;

    invoke-direct {p1, p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row$0;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;)V

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method bind(Lorg/json/JSONObject;)V
    .registers 7

    .line 103
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->value:Lorg/json/JSONObject;

    const-string v0, "metadata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_f
    const-string v1, "processPath"

    const-string v2, "\u672a\u8bc6\u522b\u5e94\u7528"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    # getter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->labels:Ljava/util/Map;
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$500(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move-object v1, v2

    :cond_2d
    :goto_2d
    const-string v2, "host"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3f

    const-string v2, "destinationIP"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3f
    const-string v3, "rule"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->app:Landroid/widget/TextView;

    # invokes: Lio/nekohasekai/sagernet/ui/ConnectionCard;->set(Landroid/widget/TextView;Ljava/lang/String;)V
    invoke-static {v4, v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$600(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->host:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "destinationPort"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lio/nekohasekai/sagernet/ui/ConnectionCard;->set(Landroid/widget/TextView;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$600(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->route:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    # getter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->types:Lorg/json/JSONObject;
    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$700(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p1, v2}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->kind(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u00b7 "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "final"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8c

    const-string v3, "\u9ed8\u8ba4\u8def\u7531"

    :cond_8c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lio/nekohasekai/sagernet/ui/ConnectionCard;->set(Landroid/widget/TextView;Ljava/lang/String;)V
    invoke-static {v0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$600(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$new$0$io-nekohasekai-sagernet-ui-ConnectionCard$Row(Landroid/view/View;)V
    .registers 4

    .line 102
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->value:Lorg/json/JSONObject;

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->value:Lorg/json/JSONObject;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionCard$Row;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionCard;

    # getter for: Lio/nekohasekai/sagernet/ui/ConnectionCard;->types:Lorg/json/JSONObject;
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ConnectionCard;->access$700(Lio/nekohasekai/sagernet/ui/ConnectionCard;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->showDetail(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_13
    return-void
.end method
