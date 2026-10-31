.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeSetSerializer;
.super Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;
.source "DefaultSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/DefaultSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TreeSetSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/CollectionSerializer<",
        "Ljava/util/TreeSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 699
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/CollectionSerializer;-><init>()V

    return-void
.end method

.method private createTreeSet(Ljava/lang/Class;Ljava/util/Comparator;)Ljava/util/TreeSet;
    .registers 7
    .param p2, "comparator"    # Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/util/Comparator;",
            ")",
            "Ljava/util/TreeSet;"
        }
    .end annotation

    .line 713
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Collection;>;"
    const-class v0, Ljava/util/TreeSet;

    if-eq p1, v0, :cond_30

    if-nez p1, :cond_7

    goto :goto_30

    .line 716
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/util/Comparator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 717
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_29

    if-nez v2, :cond_1e

    .line 719
    :try_start_19
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_29

    .line 721
    goto :goto_1e

    .line 720
    :catch_1d
    move-exception v2

    .line 723
    :cond_1e
    :goto_1e
    :try_start_1e
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_29

    return-object v0

    .line 724
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_29
    move-exception v0

    .line 725
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 713
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_30
    :goto_30
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/Collection;
    .registers 5

    .line 699
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeSetSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/TreeSet;

    move-result-object p1

    return-object p1
.end method

.method protected create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/TreeSet;
    .registers 6
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/TreeSet;",
            ">;I)",
            "Ljava/util/TreeSet;"
        }
    .end annotation

    .line 705
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/TreeSet;>;"
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-direct {p0, p3, v0}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeSetSerializer;->createTreeSet(Ljava/lang/Class;Ljava/util/Comparator;)Ljava/util/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3

    .line 699
    check-cast p2, Ljava/util/TreeSet;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeSetSerializer;->createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/TreeSet;)Ljava/util/TreeSet;

    move-result-object p1

    return-object p1
.end method

.method protected createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/TreeSet;)Ljava/util/TreeSet;
    .registers 5
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "original"    # Ljava/util/TreeSet;

    .line 709
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeSetSerializer;->createTreeSet(Ljava/lang/Class;Ljava/util/Comparator;)Ljava/util/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Collection;)V
    .registers 4

    .line 699
    check-cast p3, Ljava/util/TreeSet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeSetSerializer;->writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/TreeSet;)V

    return-void
.end method

.method protected writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/TreeSet;)V
    .registers 5
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "treeSet"    # Ljava/util/TreeSet;

    .line 701
    invoke-virtual {p3}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 702
    return-void
.end method
