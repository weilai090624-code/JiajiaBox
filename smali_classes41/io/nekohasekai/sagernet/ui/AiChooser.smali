.class public final Lio/nekohasekai/sagernet/ui/AiChooser;
.super Ljava/lang/Object;
.source "AiChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/nekohasekai/sagernet/ui/AiChooser$Entry;
    }
.end annotation


# static fields
.field private static final MAIN:Landroid/os/Handler;

.field private static final OPEN:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private static final WORKER:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lio/nekohasekai/sagernet/ui/AiChooser$0;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/AiChooser$0;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/nekohasekai/sagernet/ui/AiChooser;->WORKER:Ljava/util/concurrent/ExecutorService;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/nekohasekai/sagernet/ui/AiChooser;->MAIN:Landroid/os/Handler;

    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/AiChooser;->OPEN:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static dao(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    const-string v0, "io.nekohasekai.sagernet.database.SagerDatabase"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Companion"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v2, v1}, Lio/nekohasekai/sagernet/ui/AiChooser;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$show$1(Landroid/view/View;Landroid/content/DialogInterface;)V
    .registers 2

    .line 38
    sget-object p1, Lio/nekohasekai/sagernet/ui/AiChooser;->OPEN:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$show$2(Landroid/widget/EditText;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/BaseAdapter;Landroid/widget/TextView;)V
    .registers 9

    .line 45
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/nekohasekai/sagernet/ui/AiChooser$Entry;

    if-eqz v0, :cond_32

    iget-object v2, v1, Lio/nekohasekai/sagernet/ui/AiChooser$Entry;->text:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    :cond_32
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_38
    invoke-virtual {p3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p2, 0x1

    if-gt p0, p2, :cond_45

    const-string p0, "\u6ca1\u6709\u5339\u914d\u7684\u8282\u70b9"

    goto :goto_5d

    :cond_45
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "\u8282\u70b9 "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u4e2a"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_5d
    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$show$3(Ljava/util/ArrayList;Landroid/view/View;Landroid/app/Dialog;Landroid/content/Context;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11

    .line 47
    const-string p4, "save"

    invoke-virtual {p0, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/nekohasekai/sagernet/ui/AiChooser$Entry;

    const/4 p5, 0x0

    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    const/4 p7, 0x1

    new-array p8, p7, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v0, p8, p5

    invoke-virtual {p6, p4, p8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p6

    invoke-virtual {p6, p7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-wide v0, p0, Lio/nekohasekai/sagernet/ui/AiChooser$Entry;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-array p7, p7, [Ljava/lang/Object;

    aput-object p0, p7, p5

    invoke-virtual {p6, p1, p7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p0

    const-string p1, "AiChooser"

    invoke-static {p1, p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, "\u4fdd\u5b58\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {p3, p0, p5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic lambda$show$4(Landroid/app/Dialog;Landroid/view/View;)V
    .registers 2

    .line 48
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$show$5(Landroid/app/Dialog;[JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .registers 7

    .line 53
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    const/4 p0, 0x0

    aput-wide p2, p1, p0

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$show$6(Landroid/app/Dialog;Landroid/widget/TextView;)V
    .registers 2

    .line 54
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "\u8bfb\u53d6\u8282\u70b9\u5931\u8d25\uff0c\u8bf7\u5173\u95ed\u540e\u91cd\u8bd5"

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method static synthetic lambda$show$7(Landroid/view/View;Ljava/lang/String;Landroid/app/Dialog;[JLjava/util/ArrayList;Ljava/lang/Runnable;Landroid/widget/TextView;)V
    .registers 17

    const-string v0, "\u5173\u95ed"

    .line 51
    :try_start_2
    const-string v1, "getProxyDao"

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/AiChooser;->dao(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getAll"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4, v5}, Lio/nekohasekai/sagernet/ui/AiChooser;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "getRulesDao"

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/AiChooser;->dao(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "rule"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v3

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v3

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-wide/16 v4, 0x0

    if-eqz p0, :cond_5e

    const-string v2, "getEnabled"

    new-array v6, v3, [Ljava/lang/Class;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v6, v7}, Lio/nekohasekai/sagernet/ui/AiChooser;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5e

    const-string v2, "getOutbound"

    new-array v6, v3, [Ljava/lang/Class;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v6, v7}, Lio/nekohasekai/sagernet/ui/AiChooser;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    goto :goto_5f

    :cond_5e
    move-wide v6, v4

    .line 52
    :goto_5f
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lio/nekohasekai/sagernet/ui/AiChooser$Entry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v4, v5, p1}, Lio/nekohasekai/sagernet/ui/AiChooser$Entry;-><init>(JLjava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lio/nekohasekai/sagernet/ui/AiChooser$Entry;

    const-string v2, "getId"

    new-array v4, v3, [Ljava/lang/Class;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4, v5}, Lio/nekohasekai/sagernet/ui/AiChooser;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-string v2, "displayName"

    new-array v8, v3, [Ljava/lang/Class;

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v8, v9}, Lio/nekohasekai/sagernet/ui/AiChooser;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v5, v0}, Lio/nekohasekai/sagernet/ui/AiChooser$Entry;-><init>(JLjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 53
    :cond_ad
    sget-object p1, Lio/nekohasekai/sagernet/ui/AiChooser;->MAIN:Landroid/os/Handler;

    new-instance v0, Lio/nekohasekai/sagernet/ui/AiChooser$8;

    move-object v1, p2

    move-object v2, p3

    move-object v5, p4

    move-wide v3, v6

    move-object v6, p0

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lio/nekohasekai/sagernet/ui/AiChooser$8;-><init>(Landroid/app/Dialog;[JJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_bd} :catch_be

    return-void

    :catch_be
    move-exception v0

    move-object p0, v0

    .line 54
    const-string p1, "AiChooser"

    const-string p3, "load"

    invoke-static {p1, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lio/nekohasekai/sagernet/ui/AiChooser;->MAIN:Landroid/os/Handler;

    new-instance p1, Lio/nekohasekai/sagernet/ui/AiChooser$9;

    move-object/from16 p3, p6

    invoke-direct {p1, p2, p3}, Lio/nekohasekai/sagernet/ui/AiChooser$9;-><init>(Landroid/app/Dialog;Landroid/widget/TextView;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 28
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "routing-chooser"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method public static show(Landroid/view/View;)V
    .registers 19

    move-object/from16 v1, p0

    .line 36
    const-string v2, "title"

    if-eqz v1, :cond_141

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_141

    :cond_e
    sget-object v0, Lio/nekohasekai/sagernet/ui/AiChooser;->OPEN:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Dialog;

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_20

    goto/16 :goto_141

    .line 37
    :cond_20
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    :try_start_24
    invoke-static {v1, v2}, Lio/nekohasekai/sagernet/ui/AiChooser;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_28} :catch_13b

    .line 38
    new-instance v4, Lio/nekohasekai/sagernet/ui/MorphDialog;

    invoke-direct {v4, v3, v1}, Lio/nekohasekai/sagernet/ui/MorphDialog;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lio/nekohasekai/sagernet/ui/AiChooser$3;

    invoke-direct {v0, v1}, Lio/nekohasekai/sagernet/ui/AiChooser$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 39
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->column(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/UiComponents;->panel(Landroid/view/View;)V

    invoke-static {v3, v2}, Lio/nekohasekai/sagernet/ui/UiComponents;->title(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 40
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    const-string v6, "\u641c\u7d22\u8282\u70b9\u540d\u79f0"

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-static {v7}, Lio/nekohasekai/sagernet/ui/UiComponents;->field(Landroid/widget/EditText;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v6, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v14, 0x41200000    # 10.0f

    invoke-static {v3, v14}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\u6b63\u5728\u8bfb\u53d6\u8282\u70b9\u2026"

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41500000    # 13.0f

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {v11}, Lio/nekohasekai/sagernet/ui/UiComponents;->secondary(Landroid/widget/TextView;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v3, v14}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v11, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    new-instance v15, Landroid/widget/ListView;

    invoke-direct {v15, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    const v9, 0x3eeb851f    # 0.46f

    mul-float v8, v8, v9

    float-to-int v8, v8

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-static {v3, v10}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-direct {v9, v12, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v3, v8}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v8

    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-array v5, v5, [J

    const-wide/16 v16, 0x0

    aput-wide v16, v5, v6

    .line 44
    new-instance v10, Lio/nekohasekai/sagernet/ui/AiChooser$1;

    invoke-direct {v10, v8, v3, v5}, Lio/nekohasekai/sagernet/ui/AiChooser$1;-><init>(Ljava/util/ArrayList;Landroid/content/Context;[J)V

    invoke-virtual {v15, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v16, 0x0

    .line 45
    new-instance v6, Lio/nekohasekai/sagernet/ui/AiChooser$4;

    invoke-direct/range {v6 .. v11}, Lio/nekohasekai/sagernet/ui/AiChooser$4;-><init>(Landroid/widget/EditText;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/BaseAdapter;Landroid/widget/TextView;)V

    .line 46
    new-instance v10, Lio/nekohasekai/sagernet/ui/AiChooser$2;

    invoke-direct {v10, v9, v6}, Lio/nekohasekai/sagernet/ui/AiChooser$2;-><init>(Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 47
    new-instance v7, Lio/nekohasekai/sagernet/ui/AiChooser$5;

    invoke-direct {v7, v8, v1, v4, v3}, Lio/nekohasekai/sagernet/ui/AiChooser$5;-><init>(Ljava/util/ArrayList;Landroid/view/View;Landroid/app/Dialog;Landroid/content/Context;)V

    invoke-virtual {v15, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    invoke-static {v3}, Lio/nekohasekai/sagernet/ui/UiComponents;->actions(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v10, "\u53d6\u6d88"

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v10, Lio/nekohasekai/sagernet/ui/AiChooser$6;

    invoke-direct {v10, v4}, Lio/nekohasekai/sagernet/ui/AiChooser$6;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v7, v8}, Lio/nekohasekai/sagernet/ui/UiComponents;->addAction(Landroid/widget/LinearLayout;Landroid/view/View;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v3, v14}, Lio/nekohasekai/sagernet/ui/UiComponents;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_129

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_129
    invoke-static {v4}, Lio/nekohasekai/sagernet/ui/AppMotion;->show(Landroid/app/Dialog;)V

    .line 50
    sget-object v8, Lio/nekohasekai/sagernet/ui/AiChooser;->WORKER:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lio/nekohasekai/sagernet/ui/AiChooser$7;

    move-object v3, v4

    move-object v4, v5

    move-object v5, v9

    move-object v7, v11

    invoke-direct/range {v0 .. v7}, Lio/nekohasekai/sagernet/ui/AiChooser$7;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/app/Dialog;[JLjava/util/ArrayList;Ljava/lang/Runnable;Landroid/widget/TextView;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_13b
    move-exception v0

    .line 37
    const-string v1, "AiChooser"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_141
    :goto_141
    return-void
.end method
