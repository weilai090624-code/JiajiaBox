.class public final Lio/nekohasekai/sagernet/ui/NodeSortHelper;
.super Ljava/lang/Object;
.source "NodeSortHelper.java"


# static fields
.field private static final BY_ID:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY:Ljava/lang/String; = "by_latency"

.field private static final LATENCY:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFS:Ljava/lang/String; = "jj_node_sort"

.field private static byLatency:Z

.field private static initialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->byLatency:Z

    .line 15
    sput-boolean v0, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->initialized:Z

    .line 177
    new-instance v0, Lio/nekohasekai/sagernet/ui/NodeSortHelper$3;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/NodeSortHelper$3;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->BY_ID:Ljava/util/Comparator;

    .line 184
    new-instance v0, Lio/nekohasekai/sagernet/ui/NodeSortHelper$4;

    invoke-direct {v0}, Lio/nekohasekai/sagernet/ui/NodeSortHelper$4;-><init>()V

    sput-object v0, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->LATENCY:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)I
    .registers 1

    .line 11
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->pingOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljava/lang/Object;)J
    .registers 3

    .line 11
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->idOf(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static applyTo(Ljava/lang/Object;)Z
    .registers 8

    .line 95
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 97
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getList"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 98
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 99
    instance-of v2, v1, Ljava/util/List;

    if-nez v2, :cond_1b

    return v0

    .line 100
    :cond_1b
    new-instance v2, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    sget-boolean v1, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->byLatency:Z

    if-eqz v1, :cond_2f

    .line 102
    new-instance v1, Lio/nekohasekai/sagernet/ui/NodeSortHelper$1;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/ui/NodeSortHelper$1;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_37

    .line 115
    :cond_2f
    new-instance v1, Lio/nekohasekai/sagernet/ui/NodeSortHelper$2;

    invoke-direct {v1}, Lio/nekohasekai/sagernet/ui/NodeSortHelper$2;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 122
    :goto_37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "submit"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/util/List;

    aput-object v6, v5, v0

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v0

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catchall {:try_start_4 .. :try_end_4f} :catchall_50

    .line 123
    return v4

    .line 124
    :catchall_50
    move-exception p0

    .line 125
    return v0
.end method

.method public static byLatency()Z
    .registers 1

    .line 17
    sget-boolean v0, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->byLatency:Z

    return v0
.end method

.method private static ensureLoaded(Landroid/content/Context;)V
    .registers 2

    .line 21
    sget-boolean v0, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->initialized:Z

    if-nez v0, :cond_e

    if-nez p0, :cond_7

    goto :goto_e

    .line 22
    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->initialized:Z

    .line 23
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->load(Landroid/content/Context;)V

    .line 24
    return-void

    .line 21
    :cond_e
    :goto_e
    return-void
.end method

.method private static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 54
    :goto_4
    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 56
    :try_start_7
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 57
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 58
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_13} :catch_16
    .catchall {:try_start_7 .. :try_end_13} :catchall_14

    return-object p0

    .line 61
    :catchall_14
    move-exception p0

    .line 62
    return-object v1

    .line 59
    :catch_16
    move-exception v1

    .line 60
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 63
    goto :goto_4

    .line 65
    :cond_1c
    return-object v1
.end method

.method public static findAdapter(Landroid/app/Activity;)Ljava/lang/Object;
    .registers 2

    .line 131
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 133
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 134
    if-nez p0, :cond_b

    return-object v0

    .line 135
    :cond_b
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->search(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_14

    return-object p0

    .line 136
    :catchall_14
    move-exception p0

    .line 137
    return-object v0
.end method

.method private static idOf(Ljava/lang/Object;)J
    .registers 5

    .line 70
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getId"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 71
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1e

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1f

    return-wide v0

    .line 73
    :cond_1e
    goto :goto_20

    .line 72
    :catchall_1f
    move-exception p0

    .line 74
    :goto_20
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public static label()Ljava/lang/String;
    .registers 1

    .line 44
    sget-boolean v0, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->byLatency:Z

    if-eqz v0, :cond_7

    const-string v0, "\u5ef6\u8fdf\u6392\u5e8f"

    goto :goto_9

    :cond_7
    const-string v0, "\u8ba2\u9605\u987a\u5e8f"

    :goto_9
    return-object v0
.end method

.method private static load(Landroid/content/Context;)V
    .registers 3

    .line 27
    if-nez p0, :cond_3

    return-void

    .line 29
    :cond_3
    :try_start_3
    const-string v0, "jj_node_sort"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "by_latency"

    .line 30
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->byLatency:Z
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    .line 32
    goto :goto_14

    .line 31
    :catchall_13
    move-exception p0

    .line 33
    :goto_14
    return-void
.end method

.method private static pingOf(Ljava/lang/Object;)I
    .registers 5

    .line 79
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getPing"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 80
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1e

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1f

    return p0

    .line 82
    :cond_1e
    goto :goto_20

    .line 81
    :catchall_1f
    move-exception p0

    .line 83
    :goto_20
    const/4 p0, -0x1

    return p0
.end method

.method public static restore(Landroid/app/Activity;)V
    .registers 1

    .line 199
    if-nez p0, :cond_3

    return-void

    .line 200
    :cond_3
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->load(Landroid/content/Context;)V

    .line 201
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->findAdapter(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object p0

    .line 202
    if-eqz p0, :cond_f

    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->applyTo(Ljava/lang/Object;)Z

    .line 203
    :cond_f
    return-void
.end method

.method private static save(Landroid/content/Context;)V
    .registers 3

    .line 36
    if-nez p0, :cond_3

    return-void

    .line 38
    :cond_3
    :try_start_3
    const-string v0, "jj_node_sort"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 39
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "by_latency"

    sget-boolean v1, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->byLatency:Z

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1a

    .line 41
    goto :goto_1b

    .line 40
    :catchall_1a
    move-exception p0

    .line 42
    :goto_1b
    return-void
.end method

.method private static search(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 142
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 144
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getAdapter"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NodeAdapter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_2b

    if-eqz v3, :cond_2a

    .line 146
    return-object v2

    .line 149
    :cond_2a
    goto :goto_2c

    .line 148
    :catchall_2b
    move-exception v2

    .line 150
    :goto_2c
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_31

    return-object v0

    .line 151
    :cond_31
    check-cast p0, Landroid/view/ViewGroup;

    .line 152
    nop

    :goto_34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 153
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->search(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 154
    if-eqz v2, :cond_45

    return-object v2

    .line 152
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 156
    :cond_48
    return-object v0
.end method

.method public static sortList(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 3

    .line 162
    if-nez p1, :cond_3

    return-object p1

    .line 163
    :cond_3
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->ensureLoaded(Landroid/content/Context;)V

    .line 165
    :try_start_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 166
    sget-boolean v0, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->byLatency:Z

    if-eqz v0, :cond_15

    .line 167
    sget-object v0, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->LATENCY:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1a

    .line 169
    :cond_15
    sget-object v0, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->BY_ID:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    .line 171
    :goto_1a
    return-object p0

    .line 172
    :catchall_1b
    move-exception p0

    .line 173
    return-object p1
.end method

.method public static title(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 48
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->ensureLoaded(Landroid/content/Context;)V

    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8282\u70b9\u6392\u5e8f \u00b7 "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toggle(Ljava/lang/Object;)Z
    .registers 2

    .line 88
    sget-boolean v0, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->byLatency:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->byLatency:Z

    .line 89
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->applyTo(Ljava/lang/Object;)Z

    .line 90
    sget-boolean p0, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->byLatency:Z

    return p0
.end method

.method public static toggleFromActivity(Landroid/app/Activity;)Z
    .registers 5

    .line 207
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->load(Landroid/content/Context;)V

    .line 208
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->findAdapter(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    const/4 v1, 0x0

    if-nez v0, :cond_b

    return v1

    .line 210
    :cond_b
    sget-boolean v2, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->byLatency:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    sput-boolean v2, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->byLatency:Z

    .line 211
    invoke-static {v0}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->applyTo(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 212
    invoke-static {p0}, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->save(Landroid/content/Context;)V

    .line 213
    return v3

    .line 215
    :cond_1b
    sget-boolean p0, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->byLatency:Z

    xor-int/2addr p0, v3

    sput-boolean p0, Lio/nekohasekai/sagernet/ui/NodeSortHelper;->byLatency:Z

    .line 216
    return v1
.end method
