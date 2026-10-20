.class public Lorg/objenesis/instantiator/sun/SunReflectionFactorySerializationInstantiator;
.super Ljava/lang/Object;
.source "SunReflectionFactorySerializationInstantiator.java"

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
.field private final mungedConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
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

    .line 42
    .local p0, "this":Lorg/objenesis/instantiator/sun/SunReflectionFactorySerializationInstantiator;, "Lorg/objenesis/instantiator/sun/SunReflectionFactorySerializationInstantiator<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    nop

    .line 44
    invoke-static {p1}, Lorg/objenesis/instantiator/SerializationInstantiatorHelper;->getNonSerializableSuperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    .local v0, "nonSerializableAncestor":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const/4 v1, 0x0

    :try_start_0
    move-object v2, v1

    check-cast v2, [Ljava/lang/Class;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .local v1, "nonSerializableAncestorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<-TT;>;"
    nop

    .line 55
    invoke-static {p1, v1}, Lorg/objenesis/instantiator/sun/SunReflectionFactoryHelper;->newConstructorForSerialization(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iput-object v2, p0, Lorg/objenesis/instantiator/sun/SunReflectionFactorySerializationInstantiator;->mungedConstructor:Ljava/lang/reflect/Constructor;

    .line 57
    iget-object v2, p0, Lorg/objenesis/instantiator/sun/SunReflectionFactorySerializationInstantiator;->mungedConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 58
    return-void

    .line 51
    .end local v1    # "nonSerializableAncestorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<-TT;>;"
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lorg/objenesis/ObjenesisException;

    new-instance v3, Ljava/io/NotSerializableException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no suitable superclass constructor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/objenesis/instantiator/sun/SunReflectionFactorySerializationInstantiator;, "Lorg/objenesis/instantiator/sun/SunReflectionFactorySerializationInstantiator<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/objenesis/instantiator/sun/SunReflectionFactorySerializationInstantiator;->mungedConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
