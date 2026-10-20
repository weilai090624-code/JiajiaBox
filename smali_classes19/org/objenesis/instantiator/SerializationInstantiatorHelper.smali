.class public Lorg/objenesis/instantiator/SerializationInstantiatorHelper;
.super Ljava/lang/Object;
.source "SerializationInstantiatorHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNonSerializableSuperClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 39
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v0, p0

    .line 40
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    :goto_0
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Bad class hierarchy: No non-serializable parents"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_1
    return-object v0
.end method
