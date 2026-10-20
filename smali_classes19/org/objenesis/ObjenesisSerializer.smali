.class public Lorg/objenesis/ObjenesisSerializer;
.super Lorg/objenesis/ObjenesisBase;
.source "ObjenesisSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/objenesis/strategy/SerializingInstantiatorStrategy;

    invoke-direct {v0}, Lorg/objenesis/strategy/SerializingInstantiatorStrategy;-><init>()V

    invoke-direct {p0, v0}, Lorg/objenesis/ObjenesisBase;-><init>(Lorg/objenesis/strategy/InstantiatorStrategy;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "useCache"    # Z

    .line 41
    new-instance v0, Lorg/objenesis/strategy/SerializingInstantiatorStrategy;

    invoke-direct {v0}, Lorg/objenesis/strategy/SerializingInstantiatorStrategy;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/objenesis/ObjenesisBase;-><init>(Lorg/objenesis/strategy/InstantiatorStrategy;Z)V

    .line 42
    return-void
.end method
