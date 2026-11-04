.class public Lio/nekohasekai/sagernet/ui/GroupActions;
.super Ljava/lang/Object;
.source "GroupActions.java"


# static fields
.field static final PREFIX:Ljava/lang/String; = "io.nekohasekai.sagernet."


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static attached(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 38
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isAdded"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_19

    return p0

    :catch_19
    return v0
.end method

.method static varargs call(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
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

    .line 27
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, p2, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static cls(Ljava/lang/String;)Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static column(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 3

    .line 40
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->column(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->panel(Landroid/view/View;)V

    .line 41
    invoke-static {p0, p1}, Lio/nekohasekai/sagernet/ui/UiComponents;->title(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method static context(Ljava/lang/Object;)Landroid/content/Context;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v1, "requireContext"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method static dp(Landroid/content/Context;F)I
    .registers 2

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method static fragmentCall(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10

    .line 32
    :try_start_0
    const-string v0, "io.nekohasekai.sagernet.ui.JJHomeFragment"

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/GroupActions;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1b

    .line 33
    new-array p2, v3, [Ljava/lang/Class;

    aput-object v0, p2, v2

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {p2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1b
    const/4 v4, 0x2

    .line 34
    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v2

    const-string v6, "io.nekohasekai.sagernet.database.ProxyGroup"

    invoke-static {v6}, Lio/nekohasekai/sagernet/ui/GroupActions;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v0, p1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p2, v4, v3

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    return-void

    :catch_36
    move-exception p0

    .line 35
    const-string p2, "GroupActions"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic lambda$rename$4(Lio/nekohasekai/sagernet/ui/MorphDialog;Landroid/view/View;)V
    .registers 2

    .line 73
    invoke-virtual {p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$rename$5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    .line 74
    invoke-static {p0, p1, p2}, Lio/nekohasekai/sagernet/ui/GroupActions;->save(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$rename$6(Landroid/widget/EditText;Landroid/widget/TextView;Lio/nekohasekai/sagernet/ui/MorphDialog;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;)V
    .registers 7

    .line 74
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p1, "\u8bf7\u8f93\u5165\u5206\u7ec4\u540d\u79f0"

    const-string p2, "Enter a group name"

    invoke-static {p1, p2}, Lio/nekohasekai/sagernet/ui/GroupActions;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_1e
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance p0, Lio/nekohasekai/sagernet/ui/GroupActions$6;

    invoke-direct {p0, p3, p4, p5}, Lio/nekohasekai/sagernet/ui/GroupActions$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->finishAll(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$save$7(Ljava/lang/Object;Landroid/content/Context;Z)V
    .registers 5

    .line 94
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/GroupActions;->attached(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-eqz p2, :cond_d

    const-string v0, "\u5206\u7ec4\u540d\u79f0\u5df2\u66f4\u65b0"

    const-string v1, "Group renamed"

    goto :goto_11

    :cond_d
    const-string v0, "\u91cd\u547d\u540d\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    const-string v1, "Could not rename group"

    :goto_11
    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/GroupActions;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    if-eqz p2, :cond_25

    const-string p2, "access$reload"

    invoke-static {p0, p2, p1}, Lio/nekohasekai/sagernet/ui/GroupActions;->fragmentCall(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_25
    const-string p2, "access$showGroupSwitcher"

    invoke-static {p0, p2, p1}, Lio/nekohasekai/sagernet/ui/GroupActions;->fragmentCall(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method static synthetic lambda$save$8(Ljava/lang/String;JLjava/lang/Object;Landroid/content/Context;)V
    .registers 19

    .line 82
    const-string v1, "GroupActions"

    const-string v2, "endTransaction"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 84
    :try_start_6
    const-string v0, "io.nekohasekai.sagernet.database.SagerDatabase"

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/GroupActions;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "Companion"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getInstance"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_26} :catch_10b
    .catchall {:try_start_6 .. :try_end_26} :catchall_105

    .line 85
    :try_start_26
    const-string v0, "androidx.room.RoomDatabase"

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/GroupActions;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2c} :catch_101
    .catchall {:try_start_26 .. :try_end_2c} :catchall_fd

    :try_start_2c
    const-string v0, "beginTransaction"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_37} :catch_fa
    .catchall {:try_start_2c .. :try_end_37} :catchall_f7

    const/4 v7, 0x1

    .line 86
    :try_start_38
    const-string v0, "getOpenHelper"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v8, "androidx.sqlite.db.SupportSQLiteOpenHelper"

    invoke-static {v8}, Lio/nekohasekai/sagernet/ui/GroupActions;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getWritableDatabase"

    new-array v10, v3, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    const-string v8, "androidx.sqlite.db.SupportSQLiteDatabase"

    invoke-static {v8}, Lio/nekohasekai/sagernet/ui/GroupActions;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "compileStatement"

    new-array v10, v7, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    const-string v10, "UPDATE proxy_groups SET name = ? WHERE id = ?"

    aput-object v10, v9, v3

    invoke-virtual {v8, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    const-string v8, "androidx.sqlite.db.SupportSQLiteProgram"

    invoke-static {v8}, Lio/nekohasekai/sagernet/ui/GroupActions;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "androidx.sqlite.db.SupportSQLiteStatement"

    invoke-static {v9}, Lio/nekohasekai/sagernet/ui/GroupActions;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 89
    const-string v10, "bindString"

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v12, v3

    const-class v13, Ljava/lang/String;

    aput-object v13, v12, v7

    invoke-virtual {v8, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v13, v11, [Ljava/lang/Object;

    aput-object v12, v13, v3

    aput-object p0, v13, v7

    invoke-virtual {v10, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "bindLong"

    new-array v10, v11, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v3

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v7

    invoke-virtual {v8, p0, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v10, v11, v3

    aput-object v12, v11, v7

    invoke-virtual {p0, v0, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string p0, "executeUpdateDelete"

    new-array v10, v3, [Ljava/lang/Class;

    invoke-virtual {v9, p0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v9, "close"

    new-array v10, v3, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p0, v7, :cond_e8

    .line 91
    const-string p0, "setTransactionSuccessful"

    new-array v0, v3, [Ljava/lang/Class;

    invoke-virtual {v6, p0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_e7} :catch_f4
    .catchall {:try_start_38 .. :try_end_e7} :catchall_13c

    goto :goto_e9

    :cond_e8
    const/4 v7, 0x0

    .line 93
    :goto_e9
    :try_start_e9
    new-array p0, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_f2} :catch_121

    move v3, v7

    goto :goto_126

    :catch_f4
    move-exception v0

    move-object p0, v0

    goto :goto_110

    :catchall_f7
    move-exception v0

    move-object p0, v0

    goto :goto_109

    :catch_fa
    move-exception v0

    move-object p0, v0

    goto :goto_10f

    :catchall_fd
    move-exception v0

    move-object p0, v0

    move-object v6, v4

    goto :goto_109

    :catch_101
    move-exception v0

    move-object p0, v0

    move-object v6, v4

    goto :goto_10f

    :catchall_105
    move-exception v0

    move-object p0, v0

    move-object v5, v4

    move-object v6, v5

    :goto_109
    const/4 v7, 0x0

    goto :goto_13e

    :catch_10b
    move-exception v0

    move-object p0, v0

    move-object v5, v4

    move-object v6, v5

    :goto_10f
    const/4 v7, 0x0

    .line 92
    :goto_110
    :try_start_110
    const-string v0, "save"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_115
    .catchall {:try_start_110 .. :try_end_115} :catchall_13c

    if-eqz v7, :cond_126

    .line 93
    :try_start_117
    new-array p0, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_120} :catch_121

    goto :goto_126

    :catch_121
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :cond_126
    :goto_126
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lio/nekohasekai/sagernet/ui/GroupActions$4;

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v3}, Lio/nekohasekai/sagernet/ui/GroupActions$4;-><init>(Ljava/lang/Object;Landroid/content/Context;Z)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_13c
    move-exception v0

    move-object p0, v0

    :goto_13e
    if-eqz v7, :cond_14e

    .line 93
    :try_start_140
    new-array v0, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_149} :catch_14a

    goto :goto_14e

    :catch_14a
    move-exception v0

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14e
    :goto_14e
    throw p0
.end method

.method static synthetic lambda$show$0(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;)V
    .registers 4

    .line 57
    invoke-static {p3, p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->anchor(Landroid/view/View;Landroid/app/Dialog;)V

    invoke-static {p1, p2}, Lio/nekohasekai/sagernet/ui/GroupActions;->rename(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$show$1(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;)V
    .registers 4

    .line 58
    invoke-static {p3, p0}, Lio/nekohasekai/sagernet/ui/MorphDialog;->beginGroup(Landroid/view/View;Landroid/app/Dialog;)V

    const-string p0, "access$confirmDeleteGroup"

    invoke-static {p1, p0, p2}, Lio/nekohasekai/sagernet/ui/GroupActions;->fragmentCall(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$show$2(Ljava/lang/Object;)V
    .registers 3

    .line 59
    const-string v0, "access$showGroupSwitcher"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/nekohasekai/sagernet/ui/GroupActions;->fragmentCall(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$show$3(Landroid/app/Dialog;Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    .line 59
    new-instance p2, Lio/nekohasekai/sagernet/ui/GroupActions$0;

    invoke-direct {p2, p1}, Lio/nekohasekai/sagernet/ui/GroupActions$0;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, p2}, Lio/nekohasekai/sagernet/ui/MorphDialog;->returnToParent(Landroid/app/Dialog;Ljava/lang/Runnable;)V

    return-void
.end method

.method static open(Landroid/app/Dialog;Landroid/widget/LinearLayout;)V
    .registers 6

    .line 49
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/AppMotion;->show(Landroid/app/Dialog;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_46

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of p0, p0, Lio/nekohasekai/sagernet/ui/MorphDialog;

    if-nez p0, :cond_46

    const/high16 p0, 0x43480000    # 200.0f

    invoke-static {v0, p0}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p0

    const/high16 v1, 0x43d20000    # 420.0f

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v0, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x2

    invoke-virtual {p1, p0, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_46
    return-void
.end method

.method static rename(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 14

    .line 64
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/GroupActions;->attached(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 66
    :cond_7
    :try_start_7
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/GroupActions;->context(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    new-instance v4, Lio/nekohasekai/sagernet/ui/MorphDialog;

    invoke-direct {v4, v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lio/nekohasekai/sagernet/ui/MorphDialog;->preserveParentPositions()V

    const-string v1, "\u91cd\u547d\u540d\u5206\u7ec4"

    const-string v2, "Rename group"

    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ui/GroupActions;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/GroupActions;->column(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 67
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/16 v3, 0x4001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    const-string v3, "\u8bf7\u8f93\u5165\u5206\u7ec4\u540d\u79f0"

    const-string v5, "Enter a group name"

    invoke-static {v3, v5}, Lio/nekohasekai/sagernet/ui/GroupActions;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "displayName"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->field(Landroid/widget/EditText;)V

    .line 69
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x1

    invoke-direct {v1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v0, v6}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->actions(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v9, -0x2

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\u53d6\u6d88"

    const-string v11, "Cancel"

    invoke-static {v10, v11}, Lio/nekohasekai/sagernet/ui/GroupActions;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v10, "\u4fdd\u5b58"

    const-string v11, "Save"

    invoke-static {v10, v11}, Lio/nekohasekai/sagernet/ui/GroupActions;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-static {v1, v8}, Lio/nekohasekai/sagernet/ui/UiComponents;->addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V

    invoke-static {v1, v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 72
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v0, v6}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7, v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v0, Lio/nekohasekai/sagernet/ui/GroupActions$7;

    invoke-direct {v0, v4}, Lio/nekohasekai/sagernet/ui/GroupActions$7;-><init>(Lio/nekohasekai/sagernet/ui/MorphDialog;)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance v1, Lio/nekohasekai/sagernet/ui/GroupActions$8;

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lio/nekohasekai/sagernet/ui/GroupActions$8;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;Lio/nekohasekai/sagernet/ui/MorphDialog;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-static {v4, v7}, Lio/nekohasekai/sagernet/ui/GroupActions;->open(Landroid/app/Dialog;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b8} :catch_b9

    return-void

    :catch_b9
    move-exception v0

    move-object p0, v0

    .line 76
    const-string p1, "GroupActions"

    const-string v0, "rename"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static row(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 6

    .line 44
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 45
    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/UiComponents;->choice(Landroid/view/View;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, p2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p2, 0x41000000    # 8.0f

    invoke-static {v0, p2}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static save(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 10

    .line 80
    :try_start_0
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/GroupActions;->context(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_32

    .line 81
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lio/nekohasekai/sagernet/ui/GroupActions$5;

    move-object v5, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lio/nekohasekai/sagernet/ui/GroupActions$5;-><init>(Ljava/lang/String;JLjava/lang/Object;Landroid/content/Context;)V

    const-string p0, "group-rename"

    invoke-direct {p1, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :catch_32
    move-exception v0

    move-object p0, v0

    .line 80
    const-string p1, "GroupActions"

    const-string p2, "group"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static synthetic lambda$copy$0(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/View;)V
    .registers 12
    .param p0, "$dialog"    # Landroid/app/Dialog;
    .param p1, "fragment"    # Ljava/lang/Object;
    .param p2, "$group"    # Ljava/lang/Object;
    .param p3, "it"    # Landroid/view/View;

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {p1}, Lio/nekohasekai/sagernet/ui/GroupActions;->context(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getSubscription"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :no_link

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "link"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :no_link

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :no_link

    const-string v5, "clipboard"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ClipboardManager;

    const-string v6, "subscription"

    invoke-static {v6, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string v5, "已复制订阅链接"

    const-string v6, "Subscription link copied"

    invoke-static {v5, v6}, Lio/nekohasekai/sagernet/ui/GroupActions;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :no_link
    const-string v3, "没有订阅链接"

    const-string v4, "No subscription link"

    invoke-static {v3, v4}, Lio/nekohasekai/sagernet/ui/GroupActions;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    const-string v3, "GroupActions"

    const-string v4, "copy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static show(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 53
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/GroupActions;->attached(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 55
    :cond_7
    :try_start_7
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/GroupActions;->context(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "displayName"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    new-instance v2, Lio/nekohasekai/sagernet/ui/MorphDialog;

    invoke-direct {v2, v0}, Lio/nekohasekai/sagernet/ui/MorphDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lio/nekohasekai/sagernet/ui/GroupActions;->column(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 57
    const-string v1, "\u91cd\u547d\u540d"

    const-string v3, "Rename"

    invoke-static {v1, v3}, Lio/nekohasekai/sagernet/ui/GroupActions;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lio/nekohasekai/sagernet/ui/GroupActions$1;

    invoke-direct {v3, v2, p0, p1}, Lio/nekohasekai/sagernet/ui/GroupActions$1;-><init>(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v3}, Lio/nekohasekai/sagernet/ui/GroupActions;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    const-string v1, "复制订阅"

    const-string v3, "Copy subscription"

    invoke-static {v1, v3}, Lio/nekohasekai/sagernet/ui/GroupActions;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lio/nekohasekai/sagernet/ui/GroupActions$9;

    invoke-direct {v3, v2, p0, p1}, Lio/nekohasekai/sagernet/ui/GroupActions$9;-><init>(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v3}, Lio/nekohasekai/sagernet/ui/GroupActions;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 58
    const-string v1, "\u5220\u9664"

    const-string v3, "Delete"

    invoke-static {v1, v3}, Lio/nekohasekai/sagernet/ui/GroupActions;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lio/nekohasekai/sagernet/ui/GroupActions$2;

    invoke-direct {v3, v2, p0, p1}, Lio/nekohasekai/sagernet/ui/GroupActions$2;-><init>(Landroid/app/Dialog;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v3}, Lio/nekohasekai/sagernet/ui/GroupActions;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 59
    const-string p1, "\u53d6\u6d88"

    const-string v1, "Cancel"

    invoke-static {p1, v1}, Lio/nekohasekai/sagernet/ui/GroupActions;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lio/nekohasekai/sagernet/ui/GroupActions$3;

    invoke-direct {v1, v2, p0}, Lio/nekohasekai/sagernet/ui/GroupActions$3;-><init>(Landroid/app/Dialog;Ljava/lang/Object;)V

    invoke-static {v0, p1, v1}, Lio/nekohasekai/sagernet/ui/GroupActions;->row(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-static {v2, v0}, Lio/nekohasekai/sagernet/ui/GroupActions;->open(Landroid/app/Dialog;Landroid/widget/LinearLayout;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5b} :catch_5c

    return-void

    :catch_5c
    move-exception p0

    .line 61
    const-string p1, "GroupActions"

    const-string v0, "show"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 25
    invoke-static {}, Lio/nekohasekai/sagernet/ui/GroupActions;->zh()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    return-object p1
.end method

.method static zh()Z
    .registers 2

    .line 24
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
