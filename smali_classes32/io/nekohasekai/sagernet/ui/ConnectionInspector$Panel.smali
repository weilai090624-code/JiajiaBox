.class final Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;
.super Ljava/lang/Object;
.source "ConnectionInspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/ConnectionInspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Panel"
.end annotation


# instance fields
.field final c:Landroid/content/Context;

.field closed:Z

.field final column:Landroid/widget/LinearLayout;

.field data:Lorg/json/JSONArray;

.field final dialog:Landroid/app/Dialog;

.field final filter:Landroid/widget/Spinner;

.field final labels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final list:Landroid/widget/LinearLayout;

.field loading:Z

.field final main:Landroid/os/Handler;

.field final search:Landroid/widget/EditText;

.field final status:Landroid/widget/TextView;

.field final tick:Ljava/lang/Runnable;

.field types:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 14

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->main:Landroid/os/Handler;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->data:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->types:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->labels:Ljava/util/Map;

    .line 113
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$4;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$4;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->tick:Ljava/lang/Runnable;

    .line 114
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->dialog:Landroid/app/Dialog;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->column(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->column:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->column:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->panel(Landroid/view/View;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->column:Landroid/widget/LinearLayout;

    const-string v1, "\u8fde\u63a5\u8be6\u60c5"

    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->title(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->search:Landroid/widget/EditText;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->search:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->search:Landroid/widget/EditText;

    const-string v2, "\u641c\u7d22\u57df\u540d\u3001\u5e94\u7528\u6216\u5305\u540d"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->search:Landroid/widget/EditText;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->field(Landroid/widget/EditText;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->column:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->search:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v0, Landroid/widget/Spinner;

    invoke-direct {v0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->filter:Landroid/widget/Spinner;

    new-instance v6, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$1;

    const-string v0, "\u4ee3\u7406"

    const-string v2, "\u76f4\u8fde"

    const-string v3, "\u5168\u90e8\u8fde\u63a5"

    const-string v4, "\u9ed8\u8ba4\u4ee3\u7406"

    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/String;

    move-result-object v10

    const v9, 0x1090009

    move-object v11, p1

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v6 .. v11}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$1;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;Landroid/content/Context;I[Ljava/lang/String;Landroid/content/Context;)V

    .line 119
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->filter:Landroid/widget/Spinner;

    invoke-virtual {p1, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->column:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->filter:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->status:Landroid/widget/TextView;

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->status:Landroid/widget/TextView;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->column:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->status:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, v8}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->list:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->list:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->column:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "\u5173\u95ed"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$5;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$5;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->action(Landroid/view/View;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->column:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->search:Landroid/widget/EditText;

    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$2;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$2;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->filter:Landroid/widget/Spinner;

    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$3;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$3;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 125
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->dialog:Landroid/app/Dialog;

    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$6;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$6;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 126
    return-void
.end method


# virtual methods
.method details(Lorg/json/JSONObject;)V
    .registers 4

    .line 137
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->types:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->showDetail(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method synthetic lambda$new$0$io-nekohasekai-sagernet-ui-ConnectionInspector$Panel()V
    .registers 5

    .line 113
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->refresh()V

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->closed:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->tick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    return-void
.end method

.method synthetic lambda$new$1$io-nekohasekai-sagernet-ui-ConnectionInspector$Panel(Landroid/view/View;)V
    .registers 2

    .line 122
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$new$2$io-nekohasekai-sagernet-ui-ConnectionInspector$Panel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 125
    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->closed:Z

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->main:Landroid/os/Handler;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->tick:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$refresh$3$io-nekohasekai-sagernet-ui-ConnectionInspector$Panel(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/util/Map;)V
    .registers 6

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->loading:Z

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->closed:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    if-eqz p1, :cond_1c

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->data:Lorg/json/JSONArray;

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->list:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->status:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1c
    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->ordered(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->data:Lorg/json/JSONArray;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->types:Lorg/json/JSONObject;

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->labels:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/16 p2, 0x100

    if-le p1, p2, :cond_33

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->labels:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_33
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->labels:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->render()V

    return-void
.end method

.method synthetic lambda$refresh$4$io-nekohasekai-sagernet-ui-ConnectionInspector$Panel()V
    .registers 11

    .line 128
    new-instance v5, Ljava/util/HashMap;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->labels:Ljava/util/Map;

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x0

    :try_start_8
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->snapshot(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "connections"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_72

    :try_start_14
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->currentTypes(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_6e

    .line 129
    const/4 v4, 0x0

    move v6, v4

    :goto_1c
    if-eqz v2, :cond_6a

    :try_start_1e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_6a

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "metadata"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_31

    :cond_30
    :goto_30
    goto :goto_65

    :cond_31
    const-string v7, "processPath"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3b} :catch_68

    if-nez v0, :cond_30

    :try_start_3d
    const-string v0, " "

    const/4 v8, 0x2

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    iget-object v8, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5e} :catch_5f

    goto :goto_61

    :catch_5f
    move-exception v0

    move-object v0, v7

    :goto_61
    :try_start_61
    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_68

    goto :goto_30

    :goto_65
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 130
    :catch_68
    move-exception v0

    goto :goto_70

    :cond_6a
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_89

    :catch_6e
    move-exception v0

    move-object v3, v1

    :goto_70
    move-object v1, v2

    goto :goto_74

    :catch_72
    move-exception v0

    move-object v3, v1

    :goto_74
    instance-of v2, v0, Ljava/net/ConnectException;

    if-eqz v2, :cond_7b

    const-string v0, "\u4ee3\u7406\u672a\u8fd0\u884c\u6216\u6b63\u5728\u91cd\u8fde"

    goto :goto_86

    :cond_7b
    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_82

    const-string v0, "\u8bfb\u53d6\u8fde\u63a5\u4fe1\u606f\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    goto :goto_86

    :cond_82
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_86
    move-object v2, v0

    move-object v4, v3

    move-object v3, v1

    :goto_89
    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->main:Landroid/os/Handler;

    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$7;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/util/Map;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$render$5$io-nekohasekai-sagernet-ui-ConnectionInspector$Panel(Lorg/json/JSONObject;Landroid/view/View;)V
    .registers 3

    .line 133
    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->details(Lorg/json/JSONObject;)V

    return-void
.end method

.method open()V
    .registers 7

    .line 127
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->column:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_48

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3fee147ae147ae14L    # 0.94

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fea3d70a3d70a3dL    # 0.82

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_48
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method refresh()V
    .registers 3

    .line 128
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->closed:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->loading:Z

    if-eqz v0, :cond_9

    goto :goto_17

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->loading:Z

    sget-object v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->WORKER:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$8;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$8;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 130
    return-void

    .line 128
    :cond_17
    :goto_17
    return-void
.end method

.method render()V
    .registers 12

    .line 131
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->filter:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 132
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_21
    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->data:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/16 v6, 0x96

    const-string v7, ""

    if-ge v3, v5, :cond_140

    iget-object v5, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->data:Lorg/json/JSONArray;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_7c

    iget-object v8, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->types:Lorg/json/JSONObject;

    invoke-static {v5, v8, v1, v7}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->matches(Lorg/json/JSONObject;Lorg/json/JSONObject;ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3e

    goto :goto_7c

    :cond_3e
    const-string v8, "metadata"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "processPath"

    if-nez v9, :cond_49

    goto :goto_55

    :cond_49
    iget-object v7, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->labels:Ljava/util/Map;

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_55
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_78

    iget-object v9, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->types:Lorg/json/JSONObject;

    invoke-static {v5, v9, v2, v0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->matches(Lorg/json/JSONObject;Lorg/json/JSONObject;ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_78

    if-eqz v7, :cond_7c

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_78

    goto :goto_7c

    :cond_78
    add-int/lit8 v4, v4, 0x1

    if-le v4, v6, :cond_7e

    :cond_7c
    :goto_7c
    goto/16 :goto_13c

    :cond_7e
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_85

    goto :goto_7c

    :cond_85
    const-string v7, "host"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_97

    const-string v7, "destinationIP"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_97
    const-string v8, "\u672a\u8bc6\u522b"

    invoke-virtual {v6, v10, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "rule"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->labels:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_ae

    goto :goto_af

    :cond_ae
    move-object v8, v10

    :goto_af
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "destinationPort"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->types:Lorg/json/JSONObject;

    invoke-static {v5, v7}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->kind(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u00b7 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "final"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f0

    const-string v9, "\u9ed8\u8ba4\u8def\u7531"

    :cond_f0
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\u51fa\u53e3 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "chains"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 133
    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41400000    # 12.0f

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-static {v7}, Lio/nekohasekai/sagernet/ui/UiComponents;->choice(Landroid/view/View;)V

    new-instance v6, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$0;

    invoke-direct {v6, p0, v5}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$0;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;Lorg/json/JSONObject;)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v8, -0x2

    invoke-direct {v5, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v6, v8}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    :goto_13c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_21

    .line 135
    :cond_140
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->status:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u8fde\u63a5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->data:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 \u5339\u914d "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-le v4, v6, :cond_165

    const-string v7, "\uff08\u663e\u793a\u524d150\u6761\uff09"

    :cond_165
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u6bcf2\u79d2\u5237\u65b0\uff1b\u77ed\u8fde\u63a5\u53ef\u80fd\u672a\u88ab\u91c7\u6837"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method
