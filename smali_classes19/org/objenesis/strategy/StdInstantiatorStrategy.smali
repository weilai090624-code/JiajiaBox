.class public Lorg/objenesis/strategy/StdInstantiatorStrategy;
.super Lorg/objenesis/strategy/BaseInstantiatorStrategy;
.source "StdInstantiatorStrategy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/objenesis/strategy/BaseInstantiatorStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstantiatorOf(Ljava/lang/Class;)Lorg/objenesis/instantiator/ObjectInstantiator;
    .locals 2
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

    .line 58
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "Java HotSpot"

    invoke-static {v0}, Lorg/objenesis/strategy/PlatformDescription;->isThisJVM(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "OpenJDK"

    invoke-static {v0}, Lorg/objenesis/strategy/PlatformDescription;->isThisJVM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    const-string v0, "Dalvik"

    invoke-static {v0}, Lorg/objenesis/strategy/PlatformDescription;->isThisJVM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    invoke-static {}, Lorg/objenesis/strategy/PlatformDescription;->isAndroidOpenJDK()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Lorg/objenesis/instantiator/sun/UnsafeFactoryInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/sun/UnsafeFactoryInstantiator;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 75
    :cond_1
    sget v0, Lorg/objenesis/strategy/PlatformDescription;->ANDROID_VERSION:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    .line 77
    new-instance v0, Lorg/objenesis/instantiator/android/Android10Instantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/android/Android10Instantiator;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 79
    :cond_2
    sget v0, Lorg/objenesis/strategy/PlatformDescription;->ANDROID_VERSION:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_3

    .line 81
    new-instance v0, Lorg/objenesis/instantiator/android/Android17Instantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/android/Android17Instantiator;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 84
    :cond_3
    new-instance v0, Lorg/objenesis/instantiator/android/Android18Instantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/android/Android18Instantiator;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 86
    :cond_4
    const-string v0, "GNU libgcj"

    invoke-static {v0}, Lorg/objenesis/strategy/PlatformDescription;->isThisJVM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 87
    new-instance v0, Lorg/objenesis/instantiator/gcj/GCJInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/gcj/GCJInstantiator;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 89
    :cond_5
    const-string v0, "PERC"

    invoke-static {v0}, Lorg/objenesis/strategy/PlatformDescription;->isThisJVM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    new-instance v0, Lorg/objenesis/instantiator/perc/PercInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/perc/PercInstantiator;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 94
    :cond_6
    new-instance v0, Lorg/objenesis/instantiator/sun/UnsafeFactoryInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/sun/UnsafeFactoryInstantiator;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 60
    :cond_7
    :goto_0
    invoke-static {}, Lorg/objenesis/strategy/PlatformDescription;->isGoogleAppEngine()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/objenesis/strategy/PlatformDescription;->SPECIFICATION_VERSION:Ljava/lang/String;

    const-string v1, "1.7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 61
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 62
    new-instance v0, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/basic/ObjectInputStreamInstantiator;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 64
    :cond_8
    new-instance v0, Lorg/objenesis/instantiator/basic/AccessibleInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/basic/AccessibleInstantiator;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 68
    :cond_9
    new-instance v0, Lorg/objenesis/instantiator/sun/SunReflectionFactoryInstantiator;

    invoke-direct {v0, p1}, Lorg/objenesis/instantiator/sun/SunReflectionFactoryInstantiator;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
