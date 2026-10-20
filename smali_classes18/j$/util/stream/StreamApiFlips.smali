.class public Lj$/util/stream/StreamApiFlips;
.super Ljava/lang/Object;
.source "StreamApiFlips.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exceptionCharacteristics(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "suffix"    # Ljava/lang/Object;

    .line 15
    const-string v0, "java.util.stream.Collector.Characteristics"

    invoke-static {v0, p0}, Lj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static flipCharacteristicSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;)",
            "Ljava/util/Set<",
            "*>;"
        }
    .end annotation

    .line 19
    .local p0, "characteristicSet":Ljava/util/Set;, "Ljava/util/Set<*>;"
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 22
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 23
    .local v0, "convertedSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 24
    .local v1, "guineaPig":Ljava/lang/Object;
    instance-of v2, v1, Lj$/util/stream/Collector$Characteristics;

    if-eqz v2, :cond_2

    .line 25
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 28
    .local v3, "item":Ljava/lang/Object;
    :try_start_0
    move-object v4, v3

    check-cast v4, Lj$/util/stream/Collector$Characteristics;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .local v4, "characteristics":Lj$/util/stream/Collector$Characteristics;
    nop

    .line 32
    invoke-static {v4}, Lj$/util/stream/Collector$Characteristics$EnumConversion;->convert(Lj$/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector$Characteristics;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    .end local v3    # "item":Ljava/lang/Object;
    .end local v4    # "characteristics":Lj$/util/stream/Collector$Characteristics;
    goto :goto_0

    .line 29
    .restart local v3    # "item":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 30
    .local v2, "cce":Ljava/lang/ClassCastException;
    invoke-static {v2}, Lj$/util/stream/StreamApiFlips;->exceptionCharacteristics(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 34
    .end local v2    # "cce":Ljava/lang/ClassCastException;
    .end local v3    # "item":Ljava/lang/Object;
    :cond_1
    return-object v0

    .line 36
    :cond_2
    instance-of v2, v1, Ljava/util/stream/Collector$Characteristics;

    if-eqz v2, :cond_4

    .line 37
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 40
    .restart local v3    # "item":Ljava/lang/Object;
    :try_start_1
    move-object v4, v3

    check-cast v4, Ljava/util/stream/Collector$Characteristics;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    .local v4, "characteristics":Ljava/util/stream/Collector$Characteristics;
    nop

    .line 44
    invoke-static {v4}, Lj$/util/stream/Collector$Characteristics$EnumConversion;->convert(Ljava/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector$Characteristics;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v3    # "item":Ljava/lang/Object;
    .end local v4    # "characteristics":Ljava/util/stream/Collector$Characteristics;
    goto :goto_1

    .line 41
    .restart local v3    # "item":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 42
    .restart local v2    # "cce":Ljava/lang/ClassCastException;
    invoke-static {v2}, Lj$/util/stream/StreamApiFlips;->exceptionCharacteristics(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 46
    .end local v2    # "cce":Ljava/lang/ClassCastException;
    .end local v3    # "item":Ljava/lang/Object;
    :cond_3
    return-object v0

    .line 48
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lj$/util/stream/StreamApiFlips;->exceptionCharacteristics(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 20
    .end local v0    # "convertedSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    .end local v1    # "guineaPig":Ljava/lang/Object;
    :cond_5
    :goto_2
    return-object p0
.end method
