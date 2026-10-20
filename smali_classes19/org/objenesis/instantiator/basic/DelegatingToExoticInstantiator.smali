.class public abstract Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator;
.super Ljava/lang/Object;
.source "DelegatingToExoticInstantiator.java"

# interfaces
.implements Lorg/objenesis/instantiator/ObjectInstantiator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/objenesis/instantiator/ObjectInstantiator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final wrapped:Lorg/objenesis/instantiator/ObjectInstantiator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/objenesis/instantiator/ObjectInstantiator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator;, "Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-direct {p0, p1}, Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator;->instantiatorClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/objenesis/instantiator/ObjectInstantiator<TT;>;>;"
    invoke-direct {p0, p1, v0}, Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator;->instantiatorConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 52
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lorg/objenesis/instantiator/ObjectInstantiator<TT;>;>;"
    invoke-direct {p0, p1, p2, v1}, Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator;->instantiator(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)Lorg/objenesis/instantiator/ObjectInstantiator;

    move-result-object v2

    iput-object v2, p0, Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator;->wrapped:Lorg/objenesis/instantiator/ObjectInstantiator;

    .line 53
    return-void
.end method

.method private instantiator(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)Lorg/objenesis/instantiator/ObjectInstantiator;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Constructor<",
            "Lorg/objenesis/instantiator/ObjectInstantiator<",
            "TT;>;>;)",
            "Lorg/objenesis/instantiator/ObjectInstantiator<",
            "TT;>;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator;, "Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lorg/objenesis/instantiator/ObjectInstantiator<TT;>;>;"
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objenesis/instantiator/ObjectInstantiator;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call constructor of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private instantiatorClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "Lorg/objenesis/instantiator/ObjectInstantiator<",
            "TT;>;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator;, "Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator<TT;>;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/objenesis/instantiator/ObjectInstantiator<TT;>;>;"
    return-object v0

    .line 68
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/objenesis/instantiator/ObjectInstantiator<TT;>;>;"
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now requires objenesis-exotic to be in the classpath"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private instantiatorConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "Lorg/objenesis/instantiator/ObjectInstantiator<",
            "TT;>;>;)",
            "Ljava/lang/reflect/Constructor<",
            "Lorg/objenesis/instantiator/ObjectInstantiator<",
            "TT;>;>;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator;, "Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lorg/objenesis/instantiator/ObjectInstantiator<TT;>;>;"
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to find constructor taking a Class<T> in parameter on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but can\'t find it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator;, "Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator<TT;>;"
    iget-object v0, p0, Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator;->wrapped:Lorg/objenesis/instantiator/ObjectInstantiator;

    invoke-interface {v0}, Lorg/objenesis/instantiator/ObjectInstantiator;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
