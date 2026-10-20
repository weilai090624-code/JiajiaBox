.class final Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;
.super Ljava/lang/Object;
.source "ConnectionInspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/ConnectionInspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LiveDetail"
.end annotation


# instance fields
.field final c:Landroid/content/Context;

.field closed:Z

.field final dialog:Landroid/app/Dialog;

.field ended:Z

.field final id:Ljava/lang/String;

.field final info:Landroid/widget/TextView;

.field loading:Z

.field final main:Landroid/os/Handler;

.field row:Lorg/json/JSONObject;

.field final tick:Ljava/lang/Runnable;

.field types:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 6

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->main:Landroid/os/Handler;

    .line 80
    new-instance v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$1;

    invoke-direct {v0, p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$1;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;)V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->tick:Ljava/lang/Runnable;

    .line 82
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->c:Landroid/content/Context;

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->row:Lorg/json/JSONObject;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->types:Lorg/json/JSONObject;

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->row:Lorg/json/JSONObject;

    const-string p2, "id"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->id:Ljava/lang/String;

    new-instance p1, Landroid/app/Dialog;

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->c:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->dialog:Landroid/app/Dialog;

    .line 83
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->c:Landroid/content/Context;

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->column(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->panel(Landroid/view/View;)V

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->c:Landroid/content/Context;

    const-string p3, "\u8fde\u63a5\u8be6\u60c5"

    invoke-static {p2, p3}, Lio/nekohasekai/sagernet/ui/UiComponents;->title(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 84
    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->c:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->info:Landroid/widget/TextView;

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->info:Landroid/widget/TextView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->info:Landroid/widget/TextView;

    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    const-string p2, "\u6bcf 2 \u79d2\u5237\u65b0"

    invoke-virtual {p0, p2}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->render(Ljava/lang/String;)V

    .line 85
    new-instance p2, Landroid/widget/ScrollView;

    iget-object p3, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->c:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->info:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->c:Landroid/content/Context;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->c:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string p3, "\u5173\u95ed"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$2;

    invoke-direct {p3, p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$2;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/UiComponents;->action(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->dialog:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->dialog:Landroid/app/Dialog;

    new-instance p2, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$3;

    invoke-direct {p2, p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$3;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 88
    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$io-nekohasekai-sagernet-ui-ConnectionInspector$LiveDetail()V
    .registers 1

    .line 80
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->refresh()V

    return-void
.end method

.method synthetic lambda$new$1$io-nekohasekai-sagernet-ui-ConnectionInspector$LiveDetail(Landroid/view/View;)V
    .registers 2

    .line 86
    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$new$2$io-nekohasekai-sagernet-ui-ConnectionInspector$LiveDetail(Landroid/content/DialogInterface;)V
    .registers 3

    .line 87
    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->closed:Z

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->main:Landroid/os/Handler;

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->tick:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$refresh$3$io-nekohasekai-sagernet-ui-ConnectionInspector$LiveDetail(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 6

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->loading:Z

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->closed:Z

    if-eqz v0, :cond_8

    return-void

    .line 103
    :cond_8
    if-eqz p1, :cond_21

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\uff0c\u7a0d\u540e\u91cd\u8bd5\uff08\u4fdd\u7559\u4e0a\u6b21\u6570\u636e\uff09"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->render(Ljava/lang/String;)V

    goto :goto_60

    .line 104
    :cond_21
    if-nez p2, :cond_2c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->ended:Z

    const-string p1, "\u8fde\u63a5\u5df2\u7ed3\u675f \u00b7 \u4ee5\u4e0a\u4e3a\u6700\u540e\u4e00\u6b21\u91c7\u6837\u6570\u636e"

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->render(Ljava/lang/String;)V

    goto :goto_60

    .line 105
    :cond_2c
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->row:Lorg/json/JSONObject;

    iput-object p3, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->types:Lorg/json/JSONObject;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u6bcf 2 \u79d2\u5237\u65b0 \u00b7 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p2, p3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " \u66f4\u65b0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->render(Ljava/lang/String;)V

    .line 106
    :goto_60
    iget-boolean p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->ended:Z

    if-nez p1, :cond_6d

    iget-object p1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->main:Landroid/os/Handler;

    iget-object p2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->tick:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    :cond_6d
    return-void
.end method

.method synthetic lambda$refresh$4$io-nekohasekai-sagernet-ui-ConnectionInspector$LiveDetail()V
    .registers 8

    .line 94
    nop

    .line 95
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->snapshot(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "connections"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_58

    .line 97
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3b

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_38

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->id:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->id:Ljava/lang/String;

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_60

    if-eqz v4, :cond_38

    goto :goto_3c

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_3b
    move-object v3, v0

    .line 98
    :goto_3c
    :try_start_3c
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 99
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->c:Landroid/content/Context;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->currentTypes(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 100
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_78

    .line 98
    :cond_4e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "\u8fde\u63a5\u6807\u8bc6\u7f3a\u5931\uff0c\u65e0\u6cd5\u5b9e\u65f6\u66f4\u65b0"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_56} :catch_56

    .line 100
    :catch_56
    move-exception v1

    goto :goto_62

    .line 96
    :cond_58
    :try_start_58
    new-instance v1, Ljava/io/IOException;

    const-string v2, "\u8fde\u63a5\u5217\u8868\u6682\u4e0d\u53ef\u7528"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_60} :catch_60

    .line 100
    :catch_60
    move-exception v1

    move-object v3, v0

    :goto_62
    instance-of v2, v1, Ljava/net/ConnectException;

    if-eqz v2, :cond_69

    const-string v1, "\u4ee3\u7406\u672a\u8fd0\u884c\u6216\u6b63\u5728\u91cd\u8fde"

    goto :goto_74

    :cond_69
    instance-of v2, v1, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_70

    const-string v1, "\u8bfb\u53d6\u8fde\u63a5\u4fe1\u606f\u8d85\u65f6"

    goto :goto_74

    :cond_70
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_74
    if-nez v1, :cond_78

    const-string v1, "\u8bfb\u53d6\u8fde\u63a5\u4fe1\u606f\u5931\u8d25"

    .line 101
    :cond_78
    :goto_78
    nop

    .line 102
    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->main:Landroid/os/Handler;

    new-instance v4, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$0;

    invoke-direct {v4, p0, v1, v3, v0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$0;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method

.method open()V
    .registers 6

    .line 89
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_3a
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method refresh()V
    .registers 3

    .line 92
    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->closed:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->ended:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->loading:Z

    if-eqz v0, :cond_d

    goto :goto_1b

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->loading:Z

    .line 93
    sget-object v0, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->WORKER:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$4;

    invoke-direct {v1, p0}, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail$4;-><init>(Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 109
    return-void

    .line 92
    :cond_1b
    :goto_1b
    return-void
.end method

.method render(Ljava/lang/String;)V
    .registers 6

    .line 90
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->info:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->row:Lorg/json/JSONObject;

    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/ConnectionInspector$LiveDetail;->types:Lorg/json/JSONObject;

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/ui/ConnectionInspector;->detail(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
