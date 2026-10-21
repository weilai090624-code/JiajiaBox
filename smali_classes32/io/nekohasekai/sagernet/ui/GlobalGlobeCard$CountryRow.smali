.class final Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;
.super Landroid/widget/LinearLayout;
.source "GlobalGlobeCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CountryRow"
.end annotation


# instance fields
.field code:Ljava/lang/String;

.field final exit:Z

.field final name:Landroid/widget/TextView;

.field final number:Landroid/widget/TextView;

.field final synthetic this$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;


# direct methods
.method constructor <init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 230
    invoke-direct {p0, p1, v0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;-><init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;Z)V

    return-void
.end method

.method constructor <init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->this$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    invoke-virtual {p1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->exit:Z

    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->setGravity(I)V

    const-string p2, ""

    const/16 v0, 0xa

    const/4 v1, 0x0

    # invokes: Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;
    invoke-static {p1, p2, v0, v1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->access$500(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->name:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    const/4 v3, 0x1

    # invokes: Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;
    invoke-static {p1, p2, v0, v3}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->access$500(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p2

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->number:Landroid/widget/TextView;

    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x2

    invoke-direct {v0, v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v2, v0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p2, 0x40400000    # 3.0f

    # invokes: Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->dp(F)I
    invoke-static {p1, p2}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->access$600(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;F)I

    move-result p1

    invoke-virtual {p0, v1, v1, p1, v1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->setPadding(IIII)V

    new-instance p1, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow$0;

    invoke-direct {p1, p0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow$0;-><init>(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;)V

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method bind(Lorg/json/JSONObject;)V
    .registers 6

    .line 232
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->exit:Z

    const-string v1, "code"

    if-eqz v0, :cond_9

    const-string v0, "id"

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->code:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/GlobeCountries;->name(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->exit:Z

    if-eqz v1, :cond_34

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u51fa\u53e3\u00b7"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_34
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->name:Landroid/widget/TextView;

    # invokes: Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V
    invoke-static {v1, v0}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->access$700(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->number:Landroid/widget/TextView;

    const-string v2, "count"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->setText(Landroid/widget/TextView;Ljava/lang/String;)V
    invoke-static {v1, v3}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->access$700(Landroid/widget/TextView;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff0c"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u4e2a\u8fde\u63a5"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->exit:Z

    if-eqz v0, :cond_7f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\uff0c\u590d\u7528 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "members"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u4e2a\u8282\u70b9"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_81

    :cond_7f
    const-string p1, ""

    :goto_81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u70b9\u51fb\u5207\u6362\u5730\u7403\u89c6\u89d2"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$new$0$io-nekohasekai-sagernet-ui-GlobalGlobeCard$CountryRow(Landroid/view/View;)V
    .registers 4

    .line 231
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->this$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    # getter for: Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->access$000(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->this$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    # getter for: Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->loaded:Z
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->access$100(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->this$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    # getter for: Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->live:Z
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->access$400(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->this$0:Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;

    # getter for: Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->web:Landroid/webkit/WebView;
    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;->access$000(Lio/nekohasekai/sagernet/ui/GlobalGlobeCard;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.Globe&&Globe."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->exit:Z

    if-eqz v1, :cond_2c

    const-string v1, "focusNode"

    goto :goto_2e

    :cond_2c
    const-string v1, "focusCountry"

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/GlobalGlobeCard$CountryRow;->code:Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_4c
    return-void
.end method
