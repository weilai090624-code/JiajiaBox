.class public Lorg/objenesis/instantiator/gcj/GCJSerializationInstantiator;
.super Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;
.source "GCJSerializationInstantiator.java"


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
    value = .enum Lorg/objenesis/instantiator/annotations/Typology;->SERIALIZATION:Lorg/objenesis/instantiator/annotations/Typology;
.end annotation


# instance fields
.field private final superType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation
.end field


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

    .line 36
    .local p0, "this":Lorg/objenesis/instantiator/gcj/GCJSerializationInstantiator;, "Lorg/objenesis/instantiator/gcj/GCJSerializationInstantiator<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lorg/objenesis/instantiator/gcj/GCJInstantiatorBase;-><init>(Ljava/lang/Class;)V

    .line 37
    invoke-static {p1}, Lorg/objenesis/instantiator/SerializationInstantiatorHelper;->getNonSerializableSuperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/objenesis/instantiator/gcj/GCJSerializationInstantiator;->superType:Ljava/lang/Class;

    .line 38
    return-void
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/objenesis/instantiator/gcj/GCJSerializationInstantiator;, "Lorg/objenesis/instantiator/gcj/GCJSerializationInstantiator<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/objenesis/instantiator/gcj/GCJSerializationInstantiator;->type:Ljava/lang/Class;

    sget-object v1, Lorg/objenesis/instantiator/gcj/GCJSerializationInstantiator;->newObjectMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lorg/objenesis/instantiator/gcj/GCJSerializationInstantiator;->dummyStream:Ljava/io/ObjectInputStream;

    iget-object v3, p0, Lorg/objenesis/instantiator/gcj/GCJSerializationInstantiator;->type:Ljava/lang/Class;

    iget-object v4, p0, Lorg/objenesis/instantiator/gcj/GCJSerializationInstantiator;->superType:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
