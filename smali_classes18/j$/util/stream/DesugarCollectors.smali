.class public final Lj$/util/stream/DesugarCollectors;
.super Ljava/lang/Object;
.source "DesugarCollectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/DesugarCollectors$CollectorImpl;
    }
.end annotation


# static fields
.field static final CH_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj$/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_UNORDERED_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj$/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smcastingIdentity()Ljava/util/function/Function;
    .locals 1

    invoke-static {}, Lj$/util/stream/DesugarCollectors;->castingIdentity()Ljava/util/function/Function;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 91
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/DesugarCollectors;->CH_NOID:Ljava/util/Set;

    .line 92
    sget-object v0, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    .line 93
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/DesugarCollectors;->CH_UNORDERED_NOID:Ljava/util/Set;

    .line 92
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static castingIdentity()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Function<",
            "TI;TR;>;"
        }
    .end annotation

    .line 391
    new-instance v0, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda9;-><init>()V

    return-object v0
.end method

.method public static filtering(Ljava/util/function/Predicate;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "-TT;>;",
            "Lj$/util/stream/Collector<",
            "-TT;TA;TR;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 136
    .local p0, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p1, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TR;>;"
    invoke-interface {p1}, Lj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    .line 137
    .local v0, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    new-instance v7, Lj$/util/stream/DesugarCollectors$CollectorImpl;

    invoke-interface {p1}, Lj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    new-instance v3, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v0}, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    .line 143
    invoke-interface {p1}, Lj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Lj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v5

    .line 144
    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/DesugarCollectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 137
    return-object v7
.end method

.method public static flatMapping(Ljava/util/function/Function;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+",
            "Lj$/util/stream/Stream<",
            "+TU;>;>;",
            "Lj$/util/stream/Collector<",
            "-TU;TA;TR;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 185
    .local p0, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/stream/Stream<+TU;>;>;"
    .local p1, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<-TU;TA;TR;>;"
    invoke-interface {p1}, Lj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    .line 186
    .local v0, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TU;>;"
    new-instance v7, Lj$/util/stream/DesugarCollectors$CollectorImpl;

    invoke-interface {p1}, Lj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    new-instance v3, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v0}, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;)V

    .line 193
    invoke-interface {p1}, Lj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Lj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v5

    .line 194
    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/DesugarCollectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 186
    return-object v7
.end method

.method static synthetic lambda$castingIdentity$9(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "i"    # Ljava/lang/Object;

    .line 391
    return-object p0
.end method

.method static synthetic lambda$filtering$0(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "predicate"    # Ljava/util/function/Predicate;
    .param p1, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 139
    invoke-interface {p0, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    :cond_0
    return-void
.end method

.method static synthetic lambda$flatMapping$1(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "u"    # Ljava/lang/Object;

    .line 190
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$flatMapping$2(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "mapper"    # Ljava/util/function/Function;
    .param p1, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 188
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Stream;

    .line 189
    .local v0, "result":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TU;>;"
    if-eqz v0, :cond_1

    .line 190
    :try_start_0
    invoke-interface {v0}, Lj$/util/stream/Stream;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Lj$/util/stream/Stream;

    new-instance v2, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p2}, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 188
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Lj$/util/stream/Stream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1

    .line 191
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lj$/util/stream/Stream;->close()V

    .line 192
    .end local v0    # "result":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TU;>;"
    :cond_2
    return-void
.end method

.method static synthetic lambda$toUnmodifiableList$3(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "left"    # Ljava/util/List;
    .param p1, "right"    # Ljava/util/List;

    .line 212
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toUnmodifiableList$4(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .line 213
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/time/Duration$DurationUnits$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toUnmodifiableMap$5(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p0, "map"    # Ljava/util/Map;

    .line 253
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    invoke-static {v0}, Lj$/time/ZoneId$$ExternalSyntheticBackport1;->m([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toUnmodifiableMap$6(Ljava/util/HashMap;)Ljava/util/Map;
    .locals 2
    .param p0, "map"    # Ljava/util/HashMap;

    .line 298
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    invoke-static {v0}, Lj$/time/ZoneId$$ExternalSyntheticBackport1;->m([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toUnmodifiableSet$7(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .param p0, "left"    # Ljava/util/Set;
    .param p1, "right"    # Ljava/util/Set;

    .line 321
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 322
    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 324
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toUnmodifiableSet$8(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p0, "set"    # Ljava/util/Set;

    .line 327
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/util/CollSer$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static toUnmodifiableList()Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 211
    new-instance v6, Lj$/util/stream/DesugarCollectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda21;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda22;

    invoke-direct {v2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda22;-><init>()V

    new-instance v3, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda1;-><init>()V

    sget-object v5, Lj$/util/stream/DesugarCollectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/DesugarCollectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static toUnmodifiableMap(Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 249
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    const-string v0, "keyMapper"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    const-string v0, "valueMapper"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    nop

    .line 252
    invoke-static {p0, p1}, Lj$/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;

    move-result-object v0

    new-instance v1, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda6;-><init>()V

    .line 251
    invoke-static {v0, v1}, Lj$/util/stream/Collectors;->collectingAndThen(Lj$/util/stream/Collector;Ljava/util/function/Function;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toUnmodifiableMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Lj$/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 293
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    const-string v0, "keyMapper"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 294
    const-string v0, "valueMapper"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 295
    const-string v0, "mergeFunction"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda73;-><init>()V

    .line 297
    invoke-static {p0, p1, p2, v0}, Lj$/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    new-instance v1, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda7;-><init>()V

    .line 296
    invoke-static {v0, v1}, Lj$/util/stream/Collectors;->collectingAndThen(Lj$/util/stream/Collector;Ljava/util/function/Function;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toUnmodifiableSet()Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 319
    new-instance v6, Lj$/util/stream/DesugarCollectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda43;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda43;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda44;

    invoke-direct {v2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda44;-><init>()V

    new-instance v3, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda2;-><init>()V

    new-instance v4, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lj$/util/stream/DesugarCollectors$$ExternalSyntheticLambda3;-><init>()V

    sget-object v5, Lj$/util/stream/DesugarCollectors;->CH_UNORDERED_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/DesugarCollectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method
