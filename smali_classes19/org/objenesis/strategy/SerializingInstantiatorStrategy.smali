.class public Lorg/objenesis/strategy/SerializingInstantiatorStrategy;
.super Lorg/objenesis/strategy/BaseInstantiatorStrategy;
.source "SerializingInstantiatorStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/objenesis/strategy/BaseInstantiatorStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/objenesis/instantiator/ObjectInstantiator<",
            "TT;>;"
        }
    .end annotation

    .line 57
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 60
    sget-object v0, Lorg/objenesis/strategy/PlatformDescription;->JVM_NAME:Ljava/lang/String;

    const-string v1, "Java HotSpot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "OpenJDK"

    invoke-static {v0}, Lorg/objenesis/strategy/PlatformDescription;->isThisJVM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    sget-object v0, Lorg/objenesis/strategy/PlatformDescription;->JVM_NAME:Ljava/lang/String;

    const-string v1, "Dalvik"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-static {}, Lorg/objenesis/strategy/PlatformDescription;->isAndroidOpenJDK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    new-instance v0, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/basic/ObjectStreamClassInstantiator;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 71
    :cond_1
    new-instance v0, Lorg/objenesis/instantiator/android/AndroidSerializationInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/android/AndroidSerializationInstantiator;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 73
    :cond_2
    sget-object v0, Lorg/objenesis/strategy/PlatformDescription;->JVM_NAME:Ljava/lang/String;

    const-string v1, "GNU libgcj"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    new-instance v0, Lorg/objenesis/instantiator/gcj/GCJSerializationInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/gcj/GCJSerializationInstantiator;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 76
    :cond_3
    sget-object v0, Lorg/objenesis/strategy/PlatformDescription;->JVM_NAME:Ljava/lang/String;

    const-string v1, "PERC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    new-instance v0, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/perc/PercSerializationInstantiator;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 80
    :cond_4
    new-instance v0, Lorg/objenesis/instantiator/sun/SunReflectionFactorySerializationInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/sun/SunReflectionFactorySerializationInstantiator;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 62
    :cond_5
    :goto_0
    invoke-static {}, Lorg/objenesis/strategy/PlatformDescription;->isGoogleAppEngine()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lorg/objenesis/strategy/PlatformDescription;->SPECIFICATION_VERSION:Ljava/lang/String;

    const-string v1, "1.7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63
    new-instance v0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 65
    :cond_6
    new-instance v0, Lorg/objenesis/instantiator/sun/SunReflectionFactorySerializationInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/sun/SunReflectionFactorySerializationInstantiator;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 58
    :cond_7
    new-instance v0, Lorg/objenesis/ObjenesisException;

    new-instance v1, Ljava/io/NotSerializableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not serializable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
