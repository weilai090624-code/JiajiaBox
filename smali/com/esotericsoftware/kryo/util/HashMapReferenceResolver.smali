.class public Lcom/esotericsoftware/kryo/util/HashMapReferenceResolver;
.super Ljava/lang/Object;
.source "HashMapReferenceResolver.java"

# interfaces
.implements Lcom/esotericsoftware/kryo/ReferenceResolver;


# instance fields
.field protected kryo:Lcom/esotericsoftware/kryo/Kryo;

.field protected final readObjects:Ljava/util/ArrayList;

.field protected final writtenObjects:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/HashMapReferenceResolver;->writtenObjects:Ljava/util/IdentityHashMap;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/HashMapReferenceResolver;->readObjects:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addWrittenObject(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/HashMapReferenceResolver;->writtenObjects:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->size()I

    move-result v0

    .line 43
    .local v0, "id":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/HashMapReferenceResolver;->writtenObjects:Ljava/util/IdentityHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return v0
.end method

.method public getReadObject(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "id"    # I

    .line 64
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/HashMapReferenceResolver;->readObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWrittenId(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/HashMapReferenceResolver;->writtenObjects:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 49
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public nextReadId(Ljava/lang/Class;)I
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;

    .line 54
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/HashMapReferenceResolver;->readObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 55
    .local v0, "id":I
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/HashMapReferenceResolver;->readObjects:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    return v0
.end method

.method public reset()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/HashMapReferenceResolver;->readObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 69
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/HashMapReferenceResolver;->writtenObjects:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 70
    return-void
.end method

.method public setKryo(Lcom/esotericsoftware/kryo/Kryo;)V
    .locals 0
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;

    .line 38
    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/HashMapReferenceResolver;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    .line 39
    return-void
.end method

.method public setReadObject(ILjava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/HashMapReferenceResolver;->readObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public useReferences(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 74
    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->isWrapperClass(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->isEnum(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
