.class public final Lio/nekohasekai/sagernet/ui/NodeActions;
.super Ljava/lang/Object;
.source "NodeActions.java"


# static fields
.field private static lastSavedPort:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$1masqMmnVK1_xRyeRxSpm2z91v4(Landroid/app/Dialog;)V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 202
    const-string v0, ""

    sput-object v0, Lio/nekohasekai/sagernet/ui/NodeActions;->lastSavedPort:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
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

    .line 36
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

    .line 34
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

    .line 72
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->column(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->panel(Landroid/view/View;)V

    .line 73
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->title(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private static confirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 9

    .line 89
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

    .line 90
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

    .line 91
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->actions(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object p2

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "\u53d6\u6d88"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0}, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda4;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 92
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p0, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda5;

    invoke-direct {p0, v0, p3}, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda5;-><init>(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/NodeActions;->open(Landroid/app/Dialog;Landroid/widget/LinearLayout;)V

    .line 93
    return-void
.end method

.method private static deleteConfirm(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    .line 96
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

    .line 97
    goto :goto_27

    :catch_1f
    move-exception p0

    const-string p1, "NodeActions"

    const-string v0, "Cannot confirm node deletion"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :goto_27
    return-void
.end method

.method private static edit(Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;)V
    .registers 19

    .line 108
    move-object/from16 v11, p2

    const-string v0, "password"

    :try_start_4
    const-string v1, "requireBean"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v7, p1

    invoke-static {v7, v1, v3, v2}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 109
    new-instance v12, Landroid/app/Dialog;

    invoke-direct {v12, v11}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string v1, "\u7f16\u8f91\u8282\u70b9"

    invoke-static {v11, v1}, Lio/nekohasekai/sagernet/ui/NodeActions;->column(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v13

    .line 111
    const-string v1, "\u5907\u6ce8\u540d"

    const-string v2, "name"

    invoke-static {v4, v2}, Lio/nekohasekai/sagernet/ui/NodeActions;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/NodeActions;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v13, v1, v2}, Lio/nekohasekai/sagernet/ui/NodeActions;->field(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v5

    .line 112
    const-string v1, "\u670d\u52a1\u5668\u5730\u5740"

    const-string v2, "serverAddress"

    invoke-static {v4, v2}, Lio/nekohasekai/sagernet/ui/NodeActions;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/NodeActions;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v13, v1, v2}, Lio/nekohasekai/sagernet/ui/NodeActions;->field(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v2

    .line 113
    const-string v1, "\u7aef\u53e3"

    const-string v3, "serverPort"

    invoke-static {v4, v3}, Lio/nekohasekai/sagernet/ui/NodeActions;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/NodeActions;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v13, v1, v3}, Lio/nekohasekai/sagernet/ui/NodeActions;->field(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v3

    .line 114
    invoke-static {v4, v0}, Lio/nekohasekai/sagernet/ui/NodeActions;->hasField(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    const-string v1, "\u5bc6\u7801"

    invoke-static {v4, v0}, Lio/nekohasekai/sagernet/ui/NodeActions;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NodeActions;->str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v13, v1, v0}, Lio/nekohasekai/sagernet/ui/NodeActions;->field(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v0

    goto :goto_62

    :cond_61
    const/4 v0, 0x0

    :goto_62
    move-object v6, v0

    .line 116
    invoke-static/range {p2 .. p2}, Lio/nekohasekai/sagernet/ui/UiComponents;->actions(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 117
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v8, "\u53d6\u6d88"

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 118
    new-instance v8, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda1;

    invoke-direct {v8, v12}, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4fdd\u5b58"

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0, v14}, Lio/nekohasekai/sagernet/ui/UiComponents;->addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 120
    new-instance v15, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda2;

    move-object v1, v15

    move-object/from16 v7, p1

    move-object/from16 v8, p0

    move-object v9, v12

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v10}, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda2;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Object;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Object;Ljava/lang/Object;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    invoke-static {v12, v13}, Lio/nekohasekai/sagernet/ui/NodeActions;->open(Landroid/app/Dialog;Landroid/widget/LinearLayout;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9f} :catch_a0

    .line 149
    goto :goto_ee

    .line 145
    :catch_a0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_b0

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_b4

    :cond_b0
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 147
    :goto_b4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65e0\u6cd5\u7f16\u8f91\u6b64\u8282\u70b9"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_c4

    const-string v1, ""

    goto :goto_d7

    :cond_c4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_d7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v11, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 148
    const-string v1, "NodeActions"

    const-string v2, "Edit failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    :goto_ee
    return-void
.end method

.method private static export(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 8

    .line 231
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "toStdLink"

    new-array v2, v0, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_50

    .line 233
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v3, "displayName"

    new-array v5, v4, [Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, v3, v5, v4}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string p1, "\u5bfc\u51fa\u8282\u70b9"

    invoke-static {v2, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 236
    goto :goto_69

    .line 232
    :cond_50
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "\u8282\u70b9\u4e0d\u652f\u6301\u94fe\u63a5\u5bfc\u51fa"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_58} :catch_58

    .line 236
    :catch_58
    move-exception p1

    const-string v1, "\u65e0\u6cd5\u5bfc\u51fa\u6b64\u8282\u70b9"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, "NodeActions"

    const-string v0, "Export failed"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    :goto_69
    return-void
.end method

.method private static field(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;
    .registers 8

    .line 168
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    .line 169
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p0, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance p2, Landroid/widget/EditText;

    invoke-direct {p2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lio/nekohasekai/sagernet/ui/UiComponents;->field(Landroid/widget/EditText;)V

    .line 171
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p0

    iput p0, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    return-object p2
.end method

.method private static getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 153
    :goto_4
    if-eqz v0, :cond_15

    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 154
    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private static hasField(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 3

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 158
    :goto_4
    if-eqz p0, :cond_11

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_9} :catch_b

    const/4 p0, 0x1

    return p0

    :catch_b
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_4

    .line 159
    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private static id(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
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

    .line 39
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

.method static synthetic lambda$confirm$8(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 91
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$confirm$9(Landroid/app/Dialog;Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 3

    .line 92
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$edit$10(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 118
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$edit$11(Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Object;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/Object;Ljava/lang/Object;Landroid/app/Dialog;Landroid/content/Context;Landroid/view/View;)V
    .registers 11

    .line 122
    const/4 p9, 0x1

    :try_start_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_b2

    if-nez v0, :cond_aa

    .line 125
    :try_start_13
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_23} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_23} :catch_b2

    .line 126
    nop

    .line 127
    if-lt p1, p9, :cond_99

    const v0, 0xffff

    if-gt p1, v0, :cond_99

    .line 128
    :try_start_2b
    const-string v0, "name"

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v0, p3}, Lio/nekohasekai/sagernet/ui/NodeActions;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string p3, "serverAddress"

    invoke-static {p2, p3, p0}, Lio/nekohasekai/sagernet/ui/NodeActions;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string p0, "serverPort"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lio/nekohasekai/sagernet/ui/NodeActions;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    if-eqz p4, :cond_59

    const-string p0, "password"

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lio/nekohasekai/sagernet/ui/NodeActions;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    :cond_59
    const-string p0, "putBean"

    new-array p1, p9, [Ljava/lang/Class;

    const-string p3, "io.nekohasekai.sagernet.fmt.AbstractBean"

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p1, p4

    new-array p3, p9, [Ljava/lang/Object;

    aput-object p2, p3, p4

    invoke-static {p5, p0, p1, p3}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {p5}, Lio/nekohasekai/sagernet/ui/NodeActions;->saveNode(Ljava/lang/Object;)V

    .line 134
    const-string p0, "refreshList"

    new-array p1, p4, [Ljava/lang/Class;

    new-array p2, p4, [Ljava/lang/Object;

    invoke-static {p6, p0, p1, p2}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p7}, Landroid/app/Dialog;->dismiss()V

    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u5df2\u4fdd\u5b58 \u00b7 \u7aef\u53e3 "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lio/nekohasekai/sagernet/ui/NodeActions;->lastSavedPort:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p8, p0, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 141
    goto :goto_103

    .line 127
    :cond_99
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u7aef\u53e3\u8d85\u51fa\u8303\u56f4"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 126
    :catch_a1
    move-exception p0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u7aef\u53e3\u5fc5\u987b\u662f\u6570\u5b57"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_aa
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u670d\u52a1\u5668\u5730\u5740\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_b2} :catch_b2

    .line 137
    :catch_b2
    move-exception p0

    .line 138
    instance-of p1, p0, Ljava/lang/IllegalStateException;

    if-eqz p1, :cond_bc

    :cond_b7
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_ca

    :cond_bc
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_b7

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 139
    :goto_ca
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u4fdd\u5b58\u5931\u8d25"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-nez p1, :cond_da

    const-string p1, ""

    goto :goto_ed

    :cond_da
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\uff1a"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_ed
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p8, p1, p9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 140
    const-string p1, "NodeActions"

    const-string p2, "Save node failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :goto_103
    return-void
.end method

.method static synthetic lambda$row$7(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 77
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$show$1(Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Z)V
    .registers 4

    .line 63
    xor-int/lit8 p3, p3, 0x1

    invoke-static {p0, p1, p2, p3}, Lio/nekohasekai/sagernet/ui/NodeActions;->pin(Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic lambda$show$2(Landroid/app/Dialog;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    .line 63
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p2, :cond_8

    const-string p0, "\u53d6\u6d88\u7f6e\u9876"

    goto :goto_a

    :cond_8
    const-string p0, "\u7f6e\u9876"

    :goto_a
    new-instance v0, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda6;

    invoke-direct {v0, p4, p5, p1, p2}, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Z)V

    invoke-static {p1, p0, p3, v0}, Lio/nekohasekai/sagernet/ui/NodeActions;->confirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method static synthetic lambda$show$3(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;)V
    .registers 4

    .line 65
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {p1, p2, p3}, Lio/nekohasekai/sagernet/ui/NodeActions;->edit(Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$show$4(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 2

    .line 66
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/NodeActions;->export(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$show$5(Landroid/app/Dialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 66
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

    new-instance p2, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda13;

    invoke-direct {p2, p1, p3}, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda13;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const-string p3, "\u5bfc\u51fa"

    invoke-static {p1, p3, p0, p2}, Lio/nekohasekai/sagernet/ui/NodeActions;->confirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$show$6(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 67
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {p1, p2}, Lio/nekohasekai/sagernet/ui/NodeActions;->deleteConfirm(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$sort$0(Landroid/content/SharedPreferences;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 50
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

    .line 51
    :catch_16
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static methodSet(Ljava/lang/reflect/Method;Z)V
    .registers 2

    .line 217
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_5

    :catch_4
    move-exception p0

    :goto_5
    return-void
.end method

.method private static notifyUpdate(Ljava/lang/Object;)V
    .registers 10

    .line 206
    :try_start_0
    const-string v0, "io.nekohasekai.sagernet.database.ProfileManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 207
    const-string v1, "INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 208
    const-string v3, "io.nekohasekai.sagernet.database.ProxyEntity"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 209
    const-string v4, "kotlin.coroutines.Continuation"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 210
    const-string v5, "updateProfile"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v4, v7, v3

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 211
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 212
    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v8

    aput-object v2, v4, v3

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_0 .. :try_end_38} :catchall_39

    .line 215
    goto :goto_3a

    .line 213
    :catchall_39
    move-exception p0

    .line 216
    :goto_3a
    return-void
.end method

.method private static open(Landroid/app/Dialog;Landroid/widget/LinearLayout;)V
    .registers 6

    .line 81
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 82
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 83
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
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

    .line 85
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

    .line 87
    :cond_52
    return-void
.end method

.method private static openSettings(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 8

    .line 220
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "settingIntent"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v0

    invoke-static {p1, v1, v3, v2}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 221
    if-eqz p1, :cond_23

    .line 222
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 227
    goto :goto_78

    .line 221
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "\u8be5\u8282\u70b9\u6ca1\u6709\u53ef\u7f16\u8f91\u7684\u8bbe\u7f6e\u9875"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2b

    .line 223
    :catch_2b
    move-exception p1

    .line 224
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3b

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_3f

    :cond_3b
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 225
    :goto_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65e0\u6cd5\u6253\u5f00\u7f16\u8f91\u9875\u9762"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_4f

    const-string v1, ""

    goto :goto_62

    :cond_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 226
    const-string p0, "NodeActions"

    const-string v0, "Open settings failed"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    :goto_78
    return-void
.end method

.method private static pin(Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;Z)V
    .registers 7

    .line 101
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

    .line 102
    const-string p1, "refreshList"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v1, v2}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    if-eqz p3, :cond_25

    const-string p0, "\u5df2\u7f6e\u9876"

    goto :goto_27

    :cond_25
    const-string p0, "\u5df2\u53d6\u6d88\u7f6e\u9876"

    :goto_27
    invoke-static {p2, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 104
    goto :goto_49

    .line 101
    :cond_2f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u65e0\u6cd5\u4fdd\u5b58\u7f6e\u9876\u72b6\u6001"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_37

    .line 104
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

    .line 105
    :goto_49
    return-void
.end method

.method private static preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 37
    const-string v0, "node-pins"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .line 76
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 77
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->choice(Landroid/view/View;)V

    new-instance p1, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2}, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
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

    .line 79
    return-void
.end method

.method private static saveNode(Ljava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    const-string v0, "io.nekohasekai.sagernet.database.SagerDatabase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 176
    const-string v1, "Companion"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "getProxyDao"

    invoke-static {v0, v5, v3, v4}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    nop

    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move-object v5, v1

    move-object v6, v5

    const/4 v7, 0x0

    :goto_29
    const/4 v8, 0x1

    if-ge v7, v4, :cond_59

    aget-object v9, v3, v7

    .line 180
    const-string v10, "updateProxy"

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_56

    invoke-static {v9}, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v10

    if-eq v10, v8, :cond_41

    goto :goto_56

    .line 181
    :cond_41
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    aget-object v8, v8, v2

    .line 182
    const-class v10, Ljava/util/List;

    if-ne v8, v10, :cond_4d

    move-object v5, v9

    goto :goto_56

    .line 183
    :cond_4d
    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_55

    move-object v6, v9

    goto :goto_56

    .line 184
    :cond_55
    move-object v1, v9

    .line 179
    :cond_56
    :goto_56
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 186
    :cond_59
    if-eqz v1, :cond_66

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_95

    .line 187
    :cond_66
    if-eqz v5, :cond_77

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v5, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_95

    .line 188
    :cond_77
    if-eqz v6, :cond_db

    .line 189
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 190
    invoke-static {v1, v2, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 191
    invoke-virtual {v6, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v6, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    nop

    .line 194
    :goto_95
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NodeActions;->notifyUpdate(Ljava/lang/Object;)V

    .line 195
    new-array v1, v8, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NodeActions;->id(Ljava/lang/Object;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p0, v3, v2

    const-string p0, "getById"

    invoke-static {v0, p0, v1, v3}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 196
    if-eqz p0, :cond_d3

    .line 197
    new-array v0, v2, [Ljava/lang/Class;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "requireBean"

    invoke-static {p0, v2, v0, v1}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 198
    const-string v0, "serverPort"

    invoke-static {p0, v0}, Lio/nekohasekai/sagernet/ui/NodeActions;->getField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 199
    if-eqz p0, :cond_cb

    .line 200
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/nekohasekai/sagernet/ui/NodeActions;->lastSavedPort:Ljava/lang/String;

    .line 201
    return-void

    .line 199
    :cond_cb
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\u6570\u636e\u5e93\u91cc\u7aef\u53e3\u4e3a\u7a7a"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_d3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\u4fdd\u5b58\u540e\u672a\u80fd\u8bfb\u56de\u8282\u70b9"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 193
    :cond_db
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "\u627e\u4e0d\u5230\u53ef\u7528\u7684\u8282\u70b9\u66f4\u65b0\u63a5\u53e3"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 163
    :goto_4
    if-eqz v0, :cond_14

    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 164
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5b57\u6bb5\u4e0d\u53ef\u5199\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static show(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 15

    .line 58
    :try_start_0
    const-string v0, "requireContext"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 59
    const-string v2, "displayName"

    new-array v3, v1, [Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v3, v4}, Lio/nekohasekai/sagernet/ui/NodeActions;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 60
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NodeActions;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/NodeActions;->key(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 61
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v9}, Lio/nekohasekai/sagernet/ui/NodeActions;->column(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 62
    if-eqz v5, :cond_34

    const-string v2, "\u53d6\u6d88\u7f6e\u9876"

    goto :goto_36

    :cond_34
    const-string v2, "\u7f6e\u9876"

    :goto_36
    move-object v11, v2

    new-instance v12, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda7;

    move-object v2, v12

    move-object v3, v1

    move-object v4, v0

    move-object v6, v9

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda7;-><init>(Landroid/app/Dialog;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v10, v11, v12}, Lio/nekohasekai/sagernet/ui/NodeActions;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 65
    const-string v2, "\u7f16\u8f91"

    new-instance v3, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda8;

    invoke-direct {v3, v1, p0, p1, v0}, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda8;-><init>(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;Landroid/content/Context;)V

    invoke-static {v10, v2, v3}, Lio/nekohasekai/sagernet/ui/NodeActions;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 66
    const-string v2, "\u5bfc\u51fa"

    new-instance v3, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1, v0, v9, p1}, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda9;-><init>(Landroid/app/Dialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v10, v2, v3}, Lio/nekohasekai/sagernet/ui/NodeActions;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 67
    const-string v0, "\u5220\u9664"

    new-instance v2, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1, p0, p1}, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda10;-><init>(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v10, v0, v2}, Lio/nekohasekai/sagernet/ui/NodeActions;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 68
    const-string p0, "\u53d6\u6d88"

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda11;

    invoke-direct {p1, v1}, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda11;-><init>(Landroid/app/Dialog;)V

    invoke-static {v10, p0, p1}, Lio/nekohasekai/sagernet/ui/NodeActions;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v1, v10}, Lio/nekohasekai/sagernet/ui/NodeActions;->open(Landroid/app/Dialog;Landroid/widget/LinearLayout;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_73} :catch_74

    .line 69
    goto :goto_7c

    :catch_74
    move-exception p0

    const-string p1, "NodeActions"

    const-string v0, "Cannot show node actions"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :goto_7c
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

    .line 46
    :try_start_0
    invoke-static {}, Lio/nekohasekai/sagernet/ui/NodeActions;->app()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NodeActions;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    new-instance v2, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0}, Lio/nekohasekai/sagernet/ui/NodeActions$$ExternalSyntheticLambda12;-><init>(Landroid/content/SharedPreferences;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 53
    return-object v1

    .line 54
    :catch_16
    move-exception v0

    const-string v1, "NodeActions"

    const-string v2, "Cannot sort pinned nodes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method private static str(Ljava/lang/Object;)Ljava/lang/String;
    .registers 1

    .line 166
    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    :cond_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method public static subtitle(Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    .line 41
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

    .line 42
    :catch_27
    move-exception p0

    const-string v0, "NodeActions"

    const-string v1, "Cannot read pin badge"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method
