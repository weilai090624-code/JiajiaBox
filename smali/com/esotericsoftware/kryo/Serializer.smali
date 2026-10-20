.class public abstract Lcom/esotericsoftware/kryo/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private acceptsNull:Z

.field private immutable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    .local p0, "this":Lcom/esotericsoftware/kryo/Serializer;, "Lcom/esotericsoftware/kryo/Serializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "acceptsNull"    # Z

    .line 34
    .local p0, "this":Lcom/esotericsoftware/kryo/Serializer;, "Lcom/esotericsoftware/kryo/Serializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Serializer;->acceptsNull:Z

    .line 36
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "acceptsNull"    # Z
    .param p2, "immutable"    # Z

    .line 40
    .local p0, "this":Lcom/esotericsoftware/kryo/Serializer;, "Lcom/esotericsoftware/kryo/Serializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Serializer;->acceptsNull:Z

    .line 42
    iput-boolean p2, p0, Lcom/esotericsoftware/kryo/Serializer;->immutable:Z

    .line 43
    return-void
.end method


# virtual methods
.method public copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "TT;)TT;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/esotericsoftware/kryo/Serializer;, "Lcom/esotericsoftware/kryo/Serializer<TT;>;"
    .local p2, "original":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Serializer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 96
    :cond_0
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Serializer does not support copy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAcceptsNull()Z
    .locals 1

    .line 64
    .local p0, "this":Lcom/esotericsoftware/kryo/Serializer;, "Lcom/esotericsoftware/kryo/Serializer<TT;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Serializer;->acceptsNull:Z

    return v0
.end method

.method public isImmutable()Z
    .locals 1

    .line 77
    .local p0, "this":Lcom/esotericsoftware/kryo/Serializer;, "Lcom/esotericsoftware/kryo/Serializer<TT;>;"
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/Serializer;->immutable:Z

    return v0
.end method

.method public abstract read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation
.end method

.method public setAcceptsNull(Z)V
    .locals 0
    .param p1, "acceptsNull"    # Z

    .line 73
    .local p0, "this":Lcom/esotericsoftware/kryo/Serializer;, "Lcom/esotericsoftware/kryo/Serializer<TT;>;"
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Serializer;->acceptsNull:Z

    .line 74
    return-void
.end method

.method public setImmutable(Z)V
    .locals 0
    .param p1, "immutable"    # Z

    .line 83
    .local p0, "this":Lcom/esotericsoftware/kryo/Serializer;, "Lcom/esotericsoftware/kryo/Serializer<TT;>;"
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/Serializer;->immutable:Z

    .line 84
    return-void
.end method

.method public abstract write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Output;",
            "TT;)V"
        }
    .end annotation
.end method
