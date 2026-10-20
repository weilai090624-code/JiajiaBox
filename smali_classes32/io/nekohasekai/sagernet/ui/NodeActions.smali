.class public final Lio/nekohasekai/sagernet/ui/NodeActions;
.super Ljava/lang/Object;
.source "NodeActions.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static app()Landroid/content/Context;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    const-string v0, "io.nekohasekai.sagernet.ktx.UtilsKt"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getApp"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static column(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 3

    .line 54
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->column(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->panel(Landroid/view/View;)V

    .line 55
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->title(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private static confirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 9

    .line 71
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u786e\u8ba4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/nekohasekai/sagernet/ui/NodeActions;->column(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 72
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p0, p2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, p2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v4, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->text(Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->actions(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p2

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u53d6\u6d88"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lio/nekohasekai/sagernet/ui/NodeActions$1;

    invoke-direct {v3, v0}, Lio/nekohasekai/sagernet/ui/NodeActions$1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 74
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p0, Lio/nekohasekai/sagernet/ui/NodeActions$2;

    invoke-direct {p0, v0, p3}, Lio/nekohasekai/sagernet/ui/NodeActions$2;-><init>(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/NodeActions;->open(Landroid/app/Dialog;Landroid/widget/LinearLayout;)V

    .line 75
    return-void
.end method

.method private static deleteConfirm(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    .line 78
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "confirmDeleteNode"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 79
    goto :goto_27

    :catch_1f
    move-exception p0

    const-string p1, "NodeActions"

    const-string v0, "Cannot confirm node deletion"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :goto_27
    return-void
.end method

.method private static export(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 8

    .line 90
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "toStdLink"

    new-array v2, v0, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v4

    invoke-static {p1, v1, v2, v5}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_50

    .line 92
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v3, "displayName"

    new-array v5, v4, [Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v3, v5, v4}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string p1, "\u5bfc\u51fa\u8282\u70b9"

    invoke-static {v2, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    goto :goto_69

    .line 91
    :cond_50
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "\u8282\u70b9\u4e0d\u652f\u6301\u94fe\u63a5\u5bfc\u51fa"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_58} :catch_58

    .line 95
    :catch_58
    move-exception p1

    const-string v1, "\u65e0\u6cd5\u5bfc\u51fa\u6b64\u8282\u70b9"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, "NodeActions"

    const-string v0, "Export failed"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :goto_69
    return-void
.end method

.method private static id(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "getId"

    invoke-static {p0, v2, v1, v0}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static key(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "node-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NodeActions;->id(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$confirm$7(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 73
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$confirm$8(Landroid/app/Dialog;Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 3

    .line 74
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$row$6(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 59
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$show$1(Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Z)V
    .registers 4

    .line 46
    xor-int/lit8 p3, p3, 0x1

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/NodeActions;->pin(Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic lambda$show$2(Landroid/app/Dialog;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    .line 46
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p2, :cond_8

    const-string p0, "\u53d6\u6d88\u7f6e\u9876"

    goto :goto_a

    :cond_8
    const-string p0, "\u7f6e\u9876"

    :goto_a
    new-instance v0, Lio/nekohasekai/sagernet/ui/NodeActions$4;

    invoke-direct {v0, p4, p5, p1, p2}, Lio/nekohasekai/sagernet/ui/NodeActions$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Z)V

    invoke-static {p1, p0, p3, v0}, Lio/nekohasekai/sagernet/ui/NodeActions;->confirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method

.method static synthetic lambda$show$3(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 2

    .line 48
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/NodeActions;->export(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$show$4(Landroid/app/Dialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 48
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5bfc\u51fa\u201c"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "\u201d\u7684\u8282\u70b9\u94fe\u63a5\u5e76\u9009\u62e9\u5206\u4eab\u65b9\u5f0f\uff1f"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lio/nekohasekai/sagernet/ui/NodeActions$3;

    invoke-direct {p2, p1, p3}, Lio/nekohasekai/sagernet/ui/NodeActions$3;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const-string p3, "\u5bfc\u51fa"

    invoke-static {p1, p3, p0, p2}, Lio/nekohasekai/sagernet/ui/NodeActions;->confirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$show$5(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 49
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {p1, p2}, Lio/nekohasekai/sagernet/ui/NodeActions;->deleteConfirm(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$sort$0(Landroid/content/SharedPreferences;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 33
    :try_start_0
    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/NodeActions;->key(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p0, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/NodeActions;->key(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return p0

    .line 34
    :catch_16
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static open(Landroid/app/Dialog;Landroid/widget/LinearLayout;)V
    .registers 6

    .line 63
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 64
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 65
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43d20000    # 420.0f

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 67
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, -0x2

    invoke-virtual {p0, p1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 69
    :cond_52
    return-void
.end method

.method private static pin(Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Z)V
    .registers 7

    .line 83
    :try_start_0
    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/NodeActions;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/NodeActions;->key(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 84
    const-string p1, "refreshList"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1, v2}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    if-eqz p3, :cond_25

    const-string p0, "\u5df2\u7f6e\u9876"

    goto :goto_27

    :cond_25
    const-string p0, "\u5df2\u53d6\u6d88\u7f6e\u9876"

    :goto_27
    invoke-static {p2, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 86
    goto :goto_49

    .line 83
    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u4fdd\u5b58\u7f6e\u9876\u72b6\u6001"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_37

    .line 86
    :catch_37
    move-exception p0

    const-string p1, "\u7f6e\u9876\u64cd\u4f5c\u5931\u8d25"

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "NodeActions"

    const-string p2, "Pin failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :goto_49
    return-void
.end method

.method private static preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 20
    const-string v0, "node-pins"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .line 58
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 59
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->choice(Landroid/view/View;)V

    new-instance p1, Lio/nekohasekai/sagernet/ui/NodeActions$0;

    invoke-direct {p1, p2}, Lio/nekohasekai/sagernet/ui/NodeActions$0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p2, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    return-void
.end method

.method public static show(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 11

    .line 41
    :try_start_0
    const-string v0, "requireContext"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Context;

    .line 42
    const-string v0, "displayName"

    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2, v3}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 43
    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/NodeActions;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/NodeActions;->key(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 44
    new-instance v3, Landroid/app/Dialog;

    invoke-direct {v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v6}, Lio/nekohasekai/sagernet/ui/NodeActions;->column(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 45
    if-eqz v5, :cond_35

    const-string v1, "\u53d6\u6d88\u7f6e\u9876"

    goto :goto_37

    :cond_35
    const-string v1, "\u7f6e\u9876"

    :goto_37
    new-instance v2, Lio/nekohasekai/sagernet/ui/NodeActions$5;

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lio/nekohasekai/sagernet/ui/NodeActions$5;-><init>(Landroid/app/Dialog;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lio/nekohasekai/sagernet/ui/NodeActions;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 48
    const-string p0, "\u5bfc\u51fa"

    new-instance p1, Lio/nekohasekai/sagernet/ui/NodeActions$6;

    invoke-direct {p1, v3, v4, v6, v8}, Lio/nekohasekai/sagernet/ui/NodeActions$6;-><init>(Landroid/app/Dialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, p0, p1}, Lio/nekohasekai/sagernet/ui/NodeActions;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 49
    const-string p0, "\u5220\u9664"

    new-instance p1, Lio/nekohasekai/sagernet/ui/NodeActions$7;

    invoke-direct {p1, v3, v7, v8}, Lio/nekohasekai/sagernet/ui/NodeActions$7;-><init>(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, p0, p1}, Lio/nekohasekai/sagernet/ui/NodeActions;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 50
    const-string p0, "\u53d6\u6d88"

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lio/nekohasekai/sagernet/ui/NodeActions$8;

    invoke-direct {p1, v3}, Lio/nekohasekai/sagernet/ui/NodeActions$8;-><init>(Landroid/app/Dialog;)V

    invoke-static {v0, p0, p1}, Lio/nekohasekai/sagernet/ui/NodeActions;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v3, v0}, Lio/nekohasekai/sagernet/ui/NodeActions;->open(Landroid/app/Dialog;Landroid/widget/LinearLayout;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_66

    .line 51
    goto :goto_6f

    :catch_66
    move-exception v0

    move-object p0, v0

    const-string p1, "NodeActions"

    const-string v0, "Cannot show node actions"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :goto_6f
    return-void
.end method

.method public static sort(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 29
    :try_start_0
    invoke-static {}, Lio/nekohasekai/sagernet/ui/NodeActions;->app()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NodeActions;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    new-instance v2, Lio/nekohasekai/sagernet/ui/NodeActions$9;

    invoke-direct {v2, v0}, Lio/nekohasekai/sagernet/ui/NodeActions$9;-><init>(Landroid/content/SharedPreferences;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 36
    return-object v1

    .line 37
    :catch_16
    move-exception v0

    const-string v1, "NodeActions"

    const-string v2, "Cannot sort pinned nodes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public static subtitle(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    .line 24
    :try_start_0
    invoke-static {}, Lio/nekohasekai/sagernet/ui/NodeActions;->app()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NodeActions;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NodeActions;->key(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_26

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5df2\u7f6e\u9876 \u00b7 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    :cond_26
    return-object p1

    .line 25
    :catch_27
    move-exception p0

    const-string v0, "NodeActions"

    const-string v1, "Cannot read pin badge"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method
