.class public Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeMapSerializer;
.super Lcom/esotericsoftware/kryo/serializers/MapSerializer;
.source "DefaultSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/DefaultSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TreeMapSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/serializers/MapSerializer<",
        "Ljava/util/TreeMap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 626
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/MapSerializer;-><init>()V

    return-void
.end method

.method private createTreeMap(Ljava/lang/Class;Ljava/util/Comparator;)Ljava/util/TreeMap;
    .registers 7
    .param p2, "comparator"    # Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/TreeMap;",
            ">;",
            "Ljava/util/Comparator;",
            ")",
            "Ljava/util/TreeMap;"
        }
    .end annotation

    .line 640
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/TreeMap;>;"
    const-class v0, Ljava/util/TreeMap;

    if-eq p1, v0, :cond_30

    if-nez p1, :cond_7

    goto :goto_30

    .line 643
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/util/Comparator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 644
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v2
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_29

    if-nez v2, :cond_1e

    .line 646
    :try_start_19
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_19 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_29

    .line 648
    goto :goto_1e

    .line 647
    :catch_1d
    move-exception v2

    .line 650
    :cond_1e
    :goto_1e
    :try_start_1e
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_29

    return-object v0

    .line 651
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :catch_29
    move-exception v0

    .line 652
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 640
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_30
    :goto_30
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/Map;
    .registers 5

    .line 626
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeMapSerializer;->create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/TreeMap;

    move-result-object p1

    return-object p1
.end method

.method protected create(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;I)Ljava/util/TreeMap;
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
            "Ljava/util/TreeMap;",
            ">;I)",
            "Ljava/util/TreeMap;"
        }
    .end annotation

    .line 632
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/TreeMap;>;"
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-direct {p0, p3, v0}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeMapSerializer;->createTreeMap(Ljava/lang/Class;Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/Map;)Ljava/util/Map;
    .registers 3

    .line 626
    check-cast p2, Ljava/util/TreeMap;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeMapSerializer;->createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/TreeMap;)Ljava/util/TreeMap;

    move-result-object p1

    return-object p1
.end method

.method protected createCopy(Lcom/esotericsoftware/kryo/Kryo;Ljava/util/TreeMap;)Ljava/util/TreeMap;
    .registers 5
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "original"    # Ljava/util/TreeMap;

    .line 636
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeMapSerializer;->createTreeMap(Ljava/lang/Class;Ljava/util/Comparator;)Ljava/util/TreeMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/Map;)V
    .registers 4

    .line 626
    check-cast p3, Ljava/util/TreeMap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultSerializers$TreeMapSerializer;->writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/TreeMap;)V

    return-void
.end method

.method protected writeHeader(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/util/TreeMap;)V
    .registers 5
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .param p3, "treeSet"    # Ljava/util/TreeMap;

    .line 628
    invoke-virtual {p3}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 629
    return-void
.end method
