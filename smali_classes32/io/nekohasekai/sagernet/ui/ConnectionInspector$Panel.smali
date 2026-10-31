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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Rows;,
        Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Item;
    }
.end annotation


# instance fields
.field final adapter:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Rows;

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

.field lastRowsSignature:J

.field final list:Landroid/widget/ListView;

.field loading:Z

.field final main:Landroid/os/Handler;

.field final search:Landroid/widget/EditText;

.field final status:Landroid/widget/TextView;

.field final tick:Ljava/lang/Runnable;

.field types:Lorg/json/JSONObject;

.field final visible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 15

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
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

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->visible:Ljava/util/ArrayList;

    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Rows;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Rows;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->adapter:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Rows;

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->lastRowsSignature:J

    .line 131
    new-instance v1, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$0;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$0;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->tick:Ljava/lang/Runnable;

    .line 132
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->dialog:Landroid/app/Dialog;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->column(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    iput-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->column:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->panel(Landroid/view/View;)V

    const-string v3, "\u8fde\u63a5\u8be6\u60c5"

    invoke-static {p1, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->title(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->search:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    const-string v4, "\u641c\u7d22\u57df\u540d\u3001\u5e94\u7528\u6216\u5305\u540d"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->field(Landroid/widget/EditText;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v4, Landroid/widget/Spinner;

    invoke-direct {v4, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->filter:Landroid/widget/Spinner;

    new-instance v7, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$1;

    const-string v5, "\u4ee3\u7406"

    const-string v8, "\u76f4\u8fde"

    const-string v9, "\u5168\u90e8\u8fde\u63a5"

    const-string v10, "\u9ed8\u8ba4\u4ee3\u7406"

    filled-new-array {v9, v10, v5, v8}, [Ljava/lang/String;

    move-result-object v11

    const v10, 0x1090009

    move-object v12, p1

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v7 .. v12}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$1;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;Landroid/content/Context;I[Ljava/lang/String;Landroid/content/Context;)V

    .line 137
    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->status:Landroid/widget/TextView;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    new-instance p1, Landroid/widget/ListView;

    invoke-direct {p1, v9}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->list:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v7}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "\u5173\u95ed"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$4;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$4;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->action(Landroid/view/View;)V

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    new-instance p1, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$2;

    invoke-direct {p1, p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$2;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    new-instance p1, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$3;

    invoke-direct {p1, p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$3;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V

    invoke-virtual {v4, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 143
    new-instance p1, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$5;

    invoke-direct {p1, p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$5;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V

    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static mix(JLjava/lang/String;)J
    .registers 8

    const-wide v0, 0x100000001b3L

    if-nez p2, :cond_a

    mul-long p0, p0, v0

    return-wide p0

    :cond_a
    const/4 v2, 0x0

    .line 177
    :goto_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1c

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    xor-long/2addr p0, v3

    mul-long p0, p0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1c
    return-wide p0
.end method


# virtual methods
.method details(Lorg/json/JSONObject;)V
    .registers 4

    .line 178
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->types:Lorg/json/JSONObject;

    invoke-static {v0, p1, v1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->showDetail(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method synthetic lambda$new$0$io-nekohasekai-sagernet-ui-ConnectionInspector$Panel()V
    .registers 5

    .line 131
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

    .line 140
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$new$2$io-nekohasekai-sagernet-ui-ConnectionInspector$Panel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 0
    const/4 p1, 0x1

    .line 143
    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->closed:Z

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->main:Landroid/os/Handler;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->tick:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->list:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method synthetic lambda$refresh$3$io-nekohasekai-sagernet-ui-ConnectionInspector$Panel(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/util/Map;)V
    .registers 6

    .line 0
    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->loading:Z

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->closed:Z

    if-eqz v0, :cond_8

    return-void

    :cond_8
    if-eqz p1, :cond_23

    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3}, Lorg/json/JSONArray;-><init>()V

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->data:Lorg/json/JSONArray;

    if-nez p2, :cond_18

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_18
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->types:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->render()V

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->status:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_23
    invoke-static {p3}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->ordered(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->data:Lorg/json/JSONArray;

    if-nez p2, :cond_30

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_30
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->types:Lorg/json/JSONObject;

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->labels:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/16 p2, 0x100

    if-le p1, p2, :cond_41

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->labels:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_41
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->labels:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->render()V

    return-void
.end method

.method synthetic lambda$refresh$4$io-nekohasekai-sagernet-ui-ConnectionInspector$Panel()V
    .registers 11

    .line 146
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
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_6f

    :try_start_14
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->currentTypes(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_6b

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1c
    if-eqz v2, :cond_68

    .line 147
    :try_start_1e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_68

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "metadata"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_31

    goto :goto_63

    :cond_31
    const-string v7, "processPath"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3b} :catch_66

    if-nez v7, :cond_63

    :try_start_3d
    const-string v7, " "

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v0

    iget-object v8, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v7, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_5e} :catch_5f

    goto :goto_60

    :catch_5f
    move-object v7, v6

    :goto_60
    :try_start_60
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_66

    :cond_63
    :goto_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :catch_66
    move-exception v0

    goto :goto_6d

    :cond_68
    move-object v4, v2

    move-object v2, v1

    goto :goto_85

    :catch_6b
    move-exception v0

    move-object v3, v1

    :goto_6d
    move-object v1, v2

    goto :goto_71

    :catch_6f
    move-exception v0

    move-object v3, v1

    .line 148
    :goto_71
    instance-of v2, v0, Ljava/net/ConnectException;

    if-eqz v2, :cond_78

    const-string v0, "\u4ee3\u7406\u672a\u8fd0\u884c\u6216\u6b63\u5728\u91cd\u8fde"

    goto :goto_83

    :cond_78
    instance-of v2, v0, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_7f

    const-string v0, "\u8bfb\u53d6\u8fde\u63a5\u4fe1\u606f\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    goto :goto_83

    :cond_7f
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_83
    move-object v2, v0

    move-object v4, v1

    :goto_85
    iget-object v6, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->main:Landroid/os/Handler;

    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$6;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/util/Map;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method open()V
    .registers 7

    .line 145
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->column:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4a

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

    mul-double v1, v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v2, v2

    const-wide v4, 0x3fea3d70a3d70a3dL    # 0.82

    mul-double v2, v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_4a
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method refresh()V
    .registers 3

    .line 146
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->closed:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->loading:Z

    if-eqz v0, :cond_9

    goto :goto_16

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->loading:Z

    sget-object v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->WORKER:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$7;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$7;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_16
    :goto_16
    return-void
.end method

.method render()V
    .registers 17

    move-object/from16 v0, p0

    .line 150
    iget-boolean v1, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->closed:Z

    if-eqz v1, :cond_7

    return-void

    .line 151
    :cond_7
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->search:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->filter:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    int-to-long v3, v2

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 152
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->data:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/16 v7, 0x96

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 153
    :goto_38
    iget-object v10, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->data:Lorg/json/JSONArray;

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v10

    const-string v11, ""

    if-ge v8, v10, :cond_100

    .line 154
    iget-object v10, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->data:Lorg/json/JSONArray;

    invoke-virtual {v10, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_fc

    iget-object v12, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->types:Lorg/json/JSONObject;

    invoke-static {v10, v12, v2}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->matchesFilter(Lorg/json/JSONObject;Lorg/json/JSONObject;I)Z

    move-result v12

    if-nez v12, :cond_54

    goto/16 :goto_fc

    .line 155
    :cond_54
    const-string v12, "metadata"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "processPath"

    if-nez v12, :cond_5f

    goto :goto_6b

    :cond_5f
    iget-object v11, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->labels:Ljava/util/Map;

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 156
    :goto_6b
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_90

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_90

    if-eqz v11, :cond_fc

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_90

    goto :goto_fc

    :cond_90
    add-int/lit8 v9, v9, 0x1

    .line 157
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v11, v7, :cond_fc

    if-nez v12, :cond_9b

    goto :goto_fc

    .line 158
    :cond_9b
    const-string v11, "host"

    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_ad

    const-string v11, "destinationIP"

    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_ad
    const-string v14, "\u672a\u8bc6\u522b"

    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "rule"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->labels:Ljava/util/Map;

    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    iget-object v6, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->types:Lorg/json/JSONObject;

    invoke-static {v10, v6}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->kind(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    if-nez v15, :cond_ca

    goto :goto_cb

    :cond_ca
    move-object v13, v15

    .line 160
    :goto_cb
    const-string v15, "id"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v4, v15}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->mix(JLjava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4, v13}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->mix(JLjava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4, v11}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->mix(JLjava/lang/String;)J

    move-result-wide v3

    const-string v11, "destinationPort"

    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v4, v11}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->mix(JLjava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4, v6}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->mix(JLjava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4, v14}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->mix(JLjava/lang/String;)J

    move-result-wide v3

    const-string v6, "chains"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->mix(JLjava/lang/String;)J

    move-result-wide v3

    .line 161
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fc
    :goto_fc
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_38

    .line 163
    :cond_100
    iget-wide v1, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->lastRowsSignature:J

    cmp-long v6, v3, v1

    if-eqz v6, :cond_108

    const/4 v6, 0x1

    goto :goto_109

    :cond_108
    const/4 v6, 0x0

    :goto_109
    iput-wide v3, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->lastRowsSignature:J

    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->visible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->visible:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v6, :cond_11c

    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->adapter:Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Rows;

    invoke-virtual {v1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel$Rows;->notifyDataSetChanged()V

    .line 164
    :cond_11c
    iget-object v1, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->status:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5f53\u524d\u8fde\u63a5 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$Panel;->data:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " \u00b7 \u5339\u914d "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-le v9, v7, :cond_13a

    const-string v11, "\uff08\u663e\u793a\u524d150\u6761\uff09"

    :cond_13a
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\u6bcf2\u79d2\u5237\u65b0\uff1b\u77ed\u8fde\u63a5\u53ef\u80fd\u672a\u88ab\u91c7\u6837"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
