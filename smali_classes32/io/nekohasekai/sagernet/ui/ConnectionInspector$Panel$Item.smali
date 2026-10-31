.class final Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item;
.super Landroid/widget/FrameLayout;
.source "ConnectionInspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Item"
.end annotation


# instance fields
.field final label:Landroid/widget/TextView;

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item;->setPadding(IIII)V

    new-instance v0, Landroid/widget/TextView;

    iget-object p1, p1, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item;->label:Landroid/widget/TextView;

    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->choice(Landroid/view/View;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method bind(Lorg/json/JSONObject;)V
    .registers 8

    .line 175
    const-string v0, "metadata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_d
    const-string v1, "host"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v1, "destinationIP"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1f
    const-string v2, "processPath"

    const-string v3, "\u672a\u8bc6\u522b"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rule"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    iget-object v4, v4, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->labels:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_3a

    goto :goto_3b

    :cond_3a
    move-object v2, v4

    :goto_3b
    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item;->label:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "destinationPort"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    iget-object v0, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->types:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->kind(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "final"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v3, "\u9ed8\u8ba4\u8def\u7531"

    :cond_78
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\u51fa\u53e3 "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "chains"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item;->label:Landroid/widget/TextView;

    new-instance v1, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item$0;

    invoke-direct {v1, p0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item$0;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$bind$0$io-nekohasekai-sagernet-ui-ConnectionInspector$Panel$Item(Lorg/json/JSONObject;Landroid/view/View;)V
    .registers 3

    .line 175
    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item;->this$0:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;

    invoke-virtual {p2, p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->details(Lorg/json/JSONObject;)V

    return-void
.end method
