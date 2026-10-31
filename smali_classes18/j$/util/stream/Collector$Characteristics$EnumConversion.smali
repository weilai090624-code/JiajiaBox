.class public final synthetic Lj$/util/stream/Collector$Characteristics$EnumConversion;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic convert(Ljava/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector$Characteristics;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    if-ne p0, v0, :cond_b

    sget-object p0, Lj$/util/stream/Collector$Characteristics;->CONCURRENT:Lj$/util/stream/Collector$Characteristics;

    return-object p0

    :cond_b
    sget-object v0, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    if-ne p0, v0, :cond_12

    sget-object p0, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    return-object p0

    :cond_12
    sget-object p0, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    return-object p0
.end method

.method public static synthetic convert(Lj$/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector$Characteristics;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object v0, Lj$/util/stream/Collector$Characteristics;->CONCURRENT:Lj$/util/stream/Collector$Characteristics;

    if-ne p0, v0, :cond_b

    sget-object p0, Ljava/util/stream/Collector$Characteristics;->CONCURRENT:Ljava/util/stream/Collector$Characteristics;

    return-object p0

    :cond_b
    sget-object v0, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    if-ne p0, v0, :cond_12

    sget-object p0, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    return-object p0

    :cond_12
    sget-object p0, Ljava/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava/util/stream/Collector$Characteristics;

    return-object p0
.end method
