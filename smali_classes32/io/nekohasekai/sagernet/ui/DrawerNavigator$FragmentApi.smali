.class final Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;
.super Ljava/lang/Object;
.source "DrawerNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/nekohasekai/sagernet/ui/DrawerNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentApi"
.end annotation


# instance fields
.field final add:Ljava/lang/reflect/Method;

.field final begin:Ljava/lang/reflect/Method;

.field final commit:Ljava/lang/reflect/Method;

.field final constructors:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field

.field final getView:Ljava/lang/reflect/Method;

.field final manager:Ljava/lang/reflect/Method;

.field final remove:Ljava/lang/reflect/Method;

.field final setArguments:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->constructors:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    const-class v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 41
    const-string v1, "androidx.fragment.app.Fragment"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 42
    const-string v3, "androidx.fragment.app.FragmentTransaction"

    invoke-static {v3, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 43
    const-string v4, "androidx.fragment.app.FragmentActivity"

    invoke-static {v4, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Class;

    const-string v5, "getSupportFragmentManager"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->manager:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    .line 44
    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v5, v2

    const-string v7, "setArguments"

    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->setArguments:Ljava/lang/reflect/Method;

    new-array v5, v2, [Ljava/lang/Class;

    const-string v5, "getView"

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->getView:Ljava/lang/reflect/Method;

    .line 45
    const-string v5, "androidx.fragment.app.FragmentManager"

    invoke-static {v5, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Class;

    const-string v5, "beginTransaction"

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->begin:Ljava/lang/reflect/Method;

    const/4 v0, 0x2

    .line 46
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v2

    aput-object v1, v0, v4

    const-string v5, "add"

    invoke-virtual {v3, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->add:Ljava/lang/reflect/Method;

    new-array v0, v4, [Ljava/lang/Class;

    aput-object v1, v0, v2

    const-string v1, "remove"

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->remove:Ljava/lang/reflect/Method;

    .line 47
    new-array v0, v2, [Ljava/lang/Class;

    const-string v0, "commitNowAllowingStateLoss"

    invoke-virtual {v3, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->commit:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method constructor(Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->constructors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_b

    return-object v0

    .line 51
    :cond_b
    const-class v0, Lio/nekohasekai/sagernet/ui/DrawerNavigator;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lio/nekohasekai/sagernet/ui/DrawerNavigator$FragmentApi;->constructors:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Constructor;

    if-nez p1, :cond_28

    return-object v0

    :cond_28
    return-object p1
.end method
