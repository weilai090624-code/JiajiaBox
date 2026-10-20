.class public Lorg/objenesis/instantiator/sun/UnsafeFactoryInstantiator;
.super Ljava/lang/Object;
.source "UnsafeFactoryInstantiator.java"

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
    value = .enum Lorg/objenesis/instantiator/annotations/Typology;->STANDARD:Lorg/objenesis/instantiator/annotations/Typology;
.end annotation


# instance fields
.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final unsafe:Lsun/misc/Unsafe;


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

    .line 40
    .local p0, "this":Lorg/objenesis/instantiator/sun/UnsafeFactoryInstantiator;, "Lorg/objenesis/instantiator/sun/UnsafeFactoryInstantiator<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lorg/objenesis/instantiator/util/UnsafeUtils;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    iput-object v0, p0, Lorg/objenesis/instantiator/sun/UnsafeFactoryInstantiator;->unsafe:Lsun/misc/Unsafe;

    .line 42
    iput-object p1, p0, Lorg/objenesis/instantiator/sun/UnsafeFactoryInstantiator;->type:Ljava/lang/Class;

    .line 43
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

    .line 47
    .local p0, "this":Lorg/objenesis/instantiator/sun/UnsafeFactoryInstantiator;, "Lorg/objenesis/instantiator/sun/UnsafeFactoryInstantiator<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/objenesis/instantiator/sun/UnsafeFactoryInstantiator;->type:Ljava/lang/Class;

    iget-object v1, p0, Lorg/objenesis/instantiator/sun/UnsafeFactoryInstantiator;->unsafe:Lsun/misc/Unsafe;

    iget-object v2, p0, Lorg/objenesis/instantiator/sun/UnsafeFactoryInstantiator;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Lorg/objenesis/ObjenesisException;

    invoke-direct {v1, v0}, Lorg/objenesis/ObjenesisException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
