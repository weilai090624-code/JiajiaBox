.class public Lj$/util/stream/StreamApiFlips;
.super Ljava/lang/Object;
.source "StreamApiFlips.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exceptionCharacteristics(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 2
    .param p0, "suffix"    # Ljava/lang/Object;

    .line 15
    const-string v0, "java.util.stream.Collector.Characteristics"

    invoke-static {v0, p0}, Lj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static flipCharacteristicSet(Ljava/util/Set;)Ljava/util/Set;
    .registers 7
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
    if-eqz p0, :cond_69

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_69

    .line 22
    :cond_9
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

    if-eqz v2, :cond_3b

    .line 25
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 28
    .local v3, "item":Ljava/lang/Object;
    :try_start_28
    move-object v4, v3

    check-cast v4, Lj$/util/stream/Collector$Characteristics;
    :try_end_2b
    .catch Ljava/lang/ClassCastException; {:try_start_28 .. :try_end_2b} :catch_34

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
    goto :goto_1e

    .line 29
    .restart local v3    # "item":Ljava/lang/Object;
    :catch_34
    move-exception v2

    .line 30
    .local v2, "cce":Ljava/lang/ClassCastException;
    invoke-static {v2}, Lj$/util/stream/StreamApiFlips;->exceptionCharacteristics(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 34
    .end local v2    # "cce":Ljava/lang/ClassCastException;
    .end local v3    # "item":Ljava/lang/Object;
    :cond_3a
    return-object v0

    .line 36
    :cond_3b
    instance-of v2, v1, Ljava/util/stream/Collector$Characteristics;

    if-eqz v2, :cond_60

    .line 37
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 40
    .restart local v3    # "item":Ljava/lang/Object;
    :try_start_4d
    move-object v4, v3

    check-cast v4, Ljava/util/stream/Collector$Characteristics;
    :try_end_50
    .catch Ljava/lang/ClassCastException; {:try_start_4d .. :try_end_50} :catch_59

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
    goto :goto_43

    .line 41
    .restart local v3    # "item":Ljava/lang/Object;
    :catch_59
    move-exception v2

    .line 42
    .restart local v2    # "cce":Ljava/lang/ClassCastException;
    invoke-static {v2}, Lj$/util/stream/StreamApiFlips;->exceptionCharacteristics(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 46
    .end local v2    # "cce":Ljava/lang/ClassCastException;
    .end local v3    # "item":Ljava/lang/Object;
    :cond_5f
    return-object v0

    .line 48
    :cond_60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lj$/util/stream/StreamApiFlips;->exceptionCharacteristics(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 20
    .end local v0    # "convertedSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    .end local v1    # "guineaPig":Ljava/lang/Object;
    :cond_69
    :goto_69
    return-object p0
.end method
