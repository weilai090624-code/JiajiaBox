.class public Lorg/objenesis/instantiator/android/AndroidSerializationInstantiator;
.super Ljava/lang/Object;
.source "AndroidSerializationInstantiator.java"

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

.annotation runtime Lorg/objenesis/instantiator/annotations/Instantiator;
    value = .enum Lorg/objenesis/instantiator/annotations/Typology;->SERIALIZATION:Lorg/objenesis/instantiator/annotations/Typology;
.end annotation


# instance fields
.field private final newInstanceMethod:Ljava/lang/reflect/Method;

.field private final objectStreamClass:Ljava/io/ObjectStreamClass;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/objenesis/instantiator/android/AndroidSerializationInstantiator;, "Lorg/objenesis/instantiator/android/AndroidSerializationInstantiator<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/objenesis/instantiator/android/AndroidSerializationInstantiator;->type:Ljava/lang/Class;

    .line 42
    invoke-static {}, Lorg/objenesis/instantiator/android/AndroidSerializationInstantiator;->getNewInstanceMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/objenesis/instantiator/android/AndroidSerializationInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    .line 45
    :try_start_0
    const-class v0, Ljava/io/ObjectStreamClass;

    const-string v1, "lookupAny"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 48
    .local v0, "m":Ljava/lang/reflect/Method;
    nop

    .line 50
    :try_start_1
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectStreamClass;

    iput-object v1, p0, Lorg/objenesis/instantiator/android/AndroidSerializationInstantiator;->objectStreamClass:Ljava/io/ObjectStreamClass;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 53
    nop

    .line 54
    return-void

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    new-instance v2, Lorg/objenesis/ObjenesisException;

    invoke-direct {v2, v1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 46
    .end local v0    # "m":Ljava/lang/reflect/Method;
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_2
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getNewInstanceMethod()Ljava/lang/reflect/Method;
    .locals 6

    .line 67
    :try_start_0
    const-class v0, Ljava/io/ObjectStreamClass;

    const-string v1, "newInstance"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 69
    .local v0, "newInstanceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-object v0

    .line 72
    .end local v0    # "newInstanceMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/objenesis/instantiator/android/AndroidSerializationInstantiator;, "Lorg/objenesis/instantiator/android/AndroidSerializationInstantiator<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/objenesis/instantiator/android/AndroidSerializationInstantiator;->type:Ljava/lang/Class;

    iget-object v1, p0, Lorg/objenesis/instantiator/android/AndroidSerializationInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/objenesis/instantiator/android/AndroidSerializationInstantiator;->objectStreamClass:Ljava/io/ObjectStreamClass;

    iget-object v3, p0, Lorg/objenesis/instantiator/android/AndroidSerializationInstantiator;->type:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
