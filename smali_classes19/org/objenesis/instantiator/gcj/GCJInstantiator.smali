.class public Lorg/objenesis/instantiator/gcj/GCJInstantiator;
.super Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;
.source "GCJInstantiator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lorg/objenesis/instantiator/annotations/Instantiator;
    value = .enum Lorg/objenesis/instantiator/annotations/Typology;->STANDARD:Lorg/objenesis/instantiator/annotations/Typology;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lorg/objenesis/instantiator/gcj/GCJInstantiator;, "Lorg/objenesis/instantiator/gcj/GCJInstantiator<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;-><init>(Ljava/lang/Class;)V

    .line 35
    return-void
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/objenesis/instantiator/gcj/GCJInstantiator;, "Lorg/objenesis/instantiator/gcj/GCJInstantiator<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/objenesis/instantiator/gcj/GCJInstantiator;->type:Ljava/lang/Class;

    sget-object v1, Lorg/objenesis/instantiator/gcj/GCJInstantiator;->newObjectMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lorg/objenesis/instantiator/gcj/GCJInstantiator;->dummyStream:Ljava/io/ObjectInputStream;

    iget-object v3, p0, Lorg/objenesis/instantiator/gcj/GCJInstantiator;->type:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-class v3, Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
