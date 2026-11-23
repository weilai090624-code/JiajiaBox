.class public final Lio/nekohasekai/sagernet/ui/NodeLatencyClick;
.super Ljava/lang/Object;
.source "NodeLatencyClick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final fragment:Ljava/lang/Object;

.field private final proxy:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/nekohasekai/sagernet/ui/NodeLatencyClick;->fragment:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lio/nekohasekai/sagernet/ui/NodeLatencyClick;->proxy:Ljava/lang/Object;

    .line 18
    return-void
.end method

.method private static groupIdOf(Ljava/lang/Object;)J
    .registers 5

    .line 22
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getGroupId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 23
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1e

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1f

    return-wide v0

    .line 25
    :cond_1e
    goto :goto_20

    .line 24
    :catchall_1f
    move-exception p0

    .line 26
    :goto_20
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 16

    .line 31
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/NodeLatencyClick;->fragment:Ljava/lang/Object;

    if-eqz v0, :cond_88

    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/NodeLatencyClick;->proxy:Ljava/lang/Object;

    if-nez v0, :cond_a

    goto/16 :goto_88

    .line 33
    :cond_a
    const/4 v0, 0x0

    :try_start_b
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/NodeLatencyClick;->proxy:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    nop

    .line 36
    iget-object v3, p0, Lio/nekohasekai/sagernet/ui/NodeLatencyClick;->fragment:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_77

    const/4 v5, 0x0

    :goto_23
    const/4 v6, 0x2

    const/4 v7, 0x3

    const-string v8, "access$speedTest"

    const/4 v9, 0x0

    if-ge v5, v4, :cond_53

    :try_start_2a
    aget-object v10, v3, v5

    .line 37
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_37

    goto :goto_50

    .line 38
    :cond_37
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 39
    array-length v12, v11

    if-ne v12, v7, :cond_50

    const-class v12, Ljava/util/List;

    aget-object v13, v11, v2

    invoke-virtual {v12, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_50

    aget-object v11, v11, v6

    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v11, v12, :cond_50

    .line 40
    nop

    .line 41
    goto :goto_54

    .line 36
    :cond_50
    :goto_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_53
    move-object v10, v9

    .line 44
    :goto_54
    if-eqz v10, :cond_71

    .line 45
    invoke-virtual {v10, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 46
    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lio/nekohasekai/sagernet/ui/NodeLatencyClick;->fragment:Ljava/lang/Object;

    aput-object v4, v3, v0

    aput-object v1, v3, v2

    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/NodeLatencyClick;->proxy:Ljava/lang/Object;

    invoke-static {v1}, Lio/nekohasekai/sagernet/ui/NodeLatencyClick;->groupIdOf(Ljava/lang/Object;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v10, v9, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    goto :goto_87

    .line 44
    :cond_71
    new-instance v1, Ljava/lang/NoSuchMethodException;

    invoke-direct {v1, v8}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_77
    .catchall {:try_start_2a .. :try_end_77} :catchall_77

    .line 47
    :catchall_77
    move-exception v1

    .line 49
    :try_start_78
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "\u5355\u8282\u70b9\u6d4b\u901f\u4e0d\u53ef\u7528"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_86

    .line 51
    goto :goto_87

    .line 50
    :catchall_86
    move-exception p1

    .line 53
    :goto_87
    return-void

    .line 31
    :cond_88
    :goto_88
    return-void
.end method
