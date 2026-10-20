.class public Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;
.super Ljava/lang/Object;
.source "ObjectStreamClassInstantiator.java"

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


# static fields
.field private static newInstanceMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final objStreamClass:Ljava/io/ObjectStreamClass;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;, "Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->initialize()V

    .line 57
    invoke-static {p1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    iput-object v0, p0, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->objStreamClass:Ljava/io/ObjectStreamClass;

    .line 58
    return-void
.end method

.method private static initialize()V
    .locals 3

    .line 42
    sget-object v0, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 44
    :try_start_0
    const-class v0, Ljava/io/ObjectStreamClass;

    const-string v1, "newInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    .line 45
    sget-object v0, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_1

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;, "Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator<TT;>;"
    :try_start_0
    sget-object v0, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->newInstanceMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;->objStreamClass:Ljava/io/ObjectStreamClass;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
