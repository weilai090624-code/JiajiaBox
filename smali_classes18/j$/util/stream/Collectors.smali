.class public final Lj$/util/stream/Collectors;
.super Ljava/lang/Object;
.source "Collectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/Collectors$Partition;,
        Lj$/util/stream/Collectors$CollectorImpl;
    }
.end annotation


# static fields
.field static final CH_CONCURRENT_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj$/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_CONCURRENT_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj$/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj$/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj$/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_UNORDERED_ID:Ljava/util/Set;
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

    invoke-static {}, Lj$/util/stream/Collectors;->castingIdentity()Ljava/util/function/Function;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 106
    sget-object v0, Lj$/util/stream/Collector$Characteristics;->CONCURRENT:Lj$/util/stream/Collector$Characteristics;

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    sget-object v2, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    .line 107
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    .line 110
    sget-object v0, Lj$/util/stream/Collector$Characteristics;->CONCURRENT:Lj$/util/stream/Collector$Characteristics;

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    .line 111
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    .line 113
    sget-object v0, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    .line 114
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    .line 115
    sget-object v0, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    .line 116
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    .line 118
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 119
    sget-object v0, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    .line 120
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->CH_UNORDERED_NOID:Ljava/util/Set;

    .line 119
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static averagingDouble(Ljava/util/function/ToDoubleFunction;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 838
    .local p0, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda32;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda32;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda33;-><init>(Ljava/util/function/ToDoubleFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda34;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda34;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda35;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda35;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static averagingInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 781
    .local p0, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda36;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda36;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda37;-><init>(Ljava/util/function/ToIntFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda38;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda38;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda39;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda39;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static averagingLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 800
    .local p0, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda86;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda86;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda87;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda87;-><init>(Ljava/util/function/ToLongFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda88;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda88;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda89;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda89;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method private static boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/function/Supplier<",
            "[TT;>;"
        }
    .end annotation

    .line 878
    .local p0, "identity":Ljava/lang/Object;, "TT;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda18;-><init>(Ljava/lang/Object;)V

    return-object v0
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

    .line 186
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda65;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda65;-><init>()V

    return-object v0
.end method

.method public static collectingAndThen(Lj$/util/stream/Collector;Ljava/util/function/Function;)Lj$/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "RR:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/Collector<",
            "TT;TA;TR;>;",
            "Ljava/util/function/Function<",
            "TR;TRR;>;)",
            "Lj$/util/stream/Collector<",
            "TT;TA;TRR;>;"
        }
    .end annotation

    .line 586
    .local p0, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<TT;TA;TR;>;"
    .local p1, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TR;TRR;>;"
    invoke-interface {p0}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    .line 587
    .local v0, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/stream/Collector$Characteristics;>;"
    sget-object v1, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 589
    sget-object v0, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    goto :goto_0

    .line 591
    :cond_0
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    .line 592
    sget-object v1, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 593
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 596
    :cond_1
    :goto_0
    new-instance v7, Lj$/util/stream/Collectors$CollectorImpl;

    invoke-interface {p0}, Lj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    .line 597
    invoke-interface {p0}, Lj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v3

    .line 598
    invoke-interface {p0}, Lj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    .line 599
    invoke-interface {p0}, Lj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object v5

    move-object v1, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 596
    return-object v7
.end method

.method static computeFinalSum([D)D
    .locals 5
    .param p0, "summands"    # [D

    .line 761
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    add-double/2addr v0, v3

    .line 762
    .local v0, "tmp":D
    array-length v3, p0

    sub-int/2addr v3, v2

    aget-wide v2, p0, v3

    .line 763
    .local v2, "simpleSum":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 764
    return-wide v2

    .line 766
    :cond_0
    return-wide v0
.end method

.method public static counting()Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 619
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda75;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda75;-><init>()V

    invoke-static {v0}, Lj$/util/stream/Collectors;->summingLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method private static duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;
    .locals 3
    .param p0, "k"    # Ljava/lang/Object;
    .param p1, "u"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string v2, "Duplicate key %s (attempted merging values %s and %s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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

    .line 554
    .local p0, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p1, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TR;>;"
    invoke-interface {p1}, Lj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    .line 555
    .local v0, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    new-instance v7, Lj$/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Lj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda67;

    invoke-direct {v3, p0, v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda67;-><init>(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;)V

    .line 561
    invoke-interface {p1}, Lj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Lj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v5

    .line 562
    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 555
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

    .line 504
    .local p0, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+Ljava/util/stream/Stream<+TU;>;>;"
    .local p1, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<-TU;TA;TR;>;"
    invoke-interface {p1}, Lj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    .line 505
    .local v0, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TU;>;"
    new-instance v7, Lj$/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Lj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda77;

    invoke-direct {v3, p0, v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda77;-><init>(Ljava/util/function/Function;Ljava/util/function/BiConsumer;)V

    .line 512
    invoke-interface {p1}, Lj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Lj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v5

    .line 513
    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 505
    return-object v7
.end method

.method public static groupingBy(Ljava/util/function/Function;)Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1020
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Lj$/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingBy(Ljava/util/function/Function;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Lj$/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TD;>;>;"
        }
    .end annotation

    .line 1070
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda76;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda76;-><init>()V

    invoke-static {p0, v0, p1}, Lj$/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TD;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;",
            "Lj$/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1124
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "mapFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    .local p2, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    invoke-interface {p2}, Lj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    .line 1125
    .local v0, "downstreamSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    invoke-interface {p2}, Lj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v1

    .line 1126
    .local v1, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda59;

    invoke-direct {v2, p0, v0, v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda59;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    .line 1131
    .local v2, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/Map<TK;TA;>;TT;>;"
    invoke-interface {p2}, Lj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v3

    invoke-static {v3}, Lj$/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v9

    .line 1133
    .local v9, "merger":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/util/Map<TK;TA;>;>;"
    move-object v10, p1

    .line 1135
    .local v10, "mangledFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Map<TK;TA;>;>;"
    invoke-interface {p2}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1136
    new-instance v3, Lj$/util/stream/Collectors$CollectorImpl;

    sget-object v4, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v3, v10, v2, v9, v4}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v3

    .line 1140
    :cond_0
    invoke-interface {p2}, Lj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v11

    .line 1141
    .local v11, "downstreamFinisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TA;>;"
    new-instance v7, Lj$/util/stream/Collectors$$ExternalSyntheticLambda60;

    invoke-direct {v7, v11}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda60;-><init>(Ljava/util/function/Function;)V

    .line 1147
    .local v7, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/Map<TK;TA;>;TM;>;"
    new-instance v12, Lj$/util/stream/Collectors$CollectorImpl;

    sget-object v8, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v3, v12

    move-object v4, v10

    move-object v5, v2

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v12
.end method

.method public static groupingByConcurrent(Ljava/util/function/Function;)Lj$/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1187
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lj$/util/stream/Collectors;->groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingByConcurrent(Ljava/util/function/Function;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Lj$/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TD;>;>;"
        }
    .end annotation

    .line 1233
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, v0, p1}, Lj$/util/stream/Collectors;->groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingByConcurrent(Ljava/util/function/Function;Ljava/util/function/Supplier;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TD;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;",
            "Lj$/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1282
    .local p0, "classifier":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "mapFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    .local p2, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    invoke-interface {p2}, Lj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v0

    .line 1283
    .local v0, "downstreamSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TA;>;"
    invoke-interface {p2}, Lj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v1

    .line 1284
    .local v1, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    invoke-interface {p2}, Lj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v2

    invoke-static {v2}, Lj$/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v2

    .line 1286
    .local v2, "merger":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;>;"
    move-object v9, p1

    .line 1288
    .local v9, "mangledFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;>;"
    invoke-interface {p2}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lj$/util/stream/Collector$Characteristics;->CONCURRENT:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1289
    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v0, v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda7;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    move-object v10, v3

    .local v3, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    goto :goto_0

    .line 1296
    .end local v3    # "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    :cond_0
    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v0, v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda8;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    move-object v10, v3

    .line 1305
    .local v10, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    :goto_0
    invoke-interface {p2}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1306
    new-instance v3, Lj$/util/stream/Collectors$CollectorImpl;

    sget-object v4, Lj$/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v3, v9, v10, v2, v4}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v3

    .line 1310
    :cond_1
    invoke-interface {p2}, Lj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v11

    .line 1311
    .local v11, "downstreamFinisher":Ljava/util/function/Function;, "Ljava/util/function/Function<TA;TA;>;"
    new-instance v7, Lj$/util/stream/Collectors$$ExternalSyntheticLambda9;

    invoke-direct {v7, v11}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda9;-><init>(Ljava/util/function/Function;)V

    .line 1317
    .local v7, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TM;>;"
    new-instance v12, Lj$/util/stream/Collectors$CollectorImpl;

    sget-object v8, Lj$/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    move-object v3, v12

    move-object v4, v9

    move-object v5, v10

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v12
.end method

.method public static joining()Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 368
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda91;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda91;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda92;

    invoke-direct {v2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda92;-><init>()V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda93;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda93;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda94;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda94;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;
    .locals 1
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lj$/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 383
    const-string v0, ""

    invoke-static {p0, v0, v0}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lj$/util/stream/Collector;
    .locals 7
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "suffix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")",
            "Lj$/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 402
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda68;

    invoke-direct {v1, p0, p1, p2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda68;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda69;

    invoke-direct {v2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda69;-><init>()V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda70;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda70;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda71;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda71;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method static synthetic lambda$averagingDouble$38()[D
    .locals 1

    .line 839
    const/4 v0, 0x4

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$averagingDouble$39(Ljava/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .locals 7
    .param p0, "mapper"    # Ljava/util/function/ToDoubleFunction;
    .param p1, "a"    # [D
    .param p2, "t"    # Ljava/lang/Object;

    .line 840
    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .local v0, "val":D
    invoke-static {p1, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v2, 0x2

    aget-wide v3, p1, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    aput-wide v3, p1, v2

    const/4 v2, 0x3

    aget-wide v3, p1, v2

    add-double/2addr v3, v0

    aput-wide v3, p1, v2

    return-void
.end method

.method static synthetic lambda$averagingDouble$40([D[D)[D
    .locals 5
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 841
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$averagingDouble$41([D)Ljava/lang/Double;
    .locals 6
    .param p0, "a"    # [D

    .line 842
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lj$/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v1

    aget-wide v3, p0, v0

    div-double v3, v1, v3

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$averagingInt$30()[J
    .locals 1

    .line 782
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$averagingInt$31(Ljava/util/function/ToIntFunction;[JLjava/lang/Object;)V
    .locals 5
    .param p0, "mapper"    # Ljava/util/function/ToIntFunction;
    .param p1, "a"    # [J
    .param p2, "t"    # Ljava/lang/Object;

    .line 783
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic lambda$averagingInt$32([J[J)[J
    .locals 5
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 784
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$averagingInt$33([J)Ljava/lang/Double;
    .locals 6
    .param p0, "a"    # [J

    .line 785
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-wide v1, p0, v1

    long-to-double v1, v1

    aget-wide v3, p0, v0

    long-to-double v3, v3

    div-double v0, v1, v3

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$averagingLong$34()[J
    .locals 1

    .line 801
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$averagingLong$35(Ljava/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .locals 5
    .param p0, "mapper"    # Ljava/util/function/ToLongFunction;
    .param p1, "a"    # [J
    .param p2, "t"    # Ljava/lang/Object;

    .line 802
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v1, p1, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic lambda$averagingLong$36([J[J)[J
    .locals 5
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 803
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$averagingLong$37([J)Ljava/lang/Double;
    .locals 6
    .param p0, "a"    # [J

    .line 804
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-wide v1, p0, v1

    long-to-double v1, v1

    aget-wide v3, p0, v0

    long-to-double v3, v3

    div-double v0, v1, v3

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$boxSupplier$45(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p0, "identity"    # Ljava/lang/Object;

    .line 878
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method static synthetic lambda$castingIdentity$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "i"    # Ljava/lang/Object;

    .line 186
    return-object p0
.end method

.method static synthetic lambda$counting$17(Ljava/lang/Object;)J
    .locals 2
    .param p0, "e"    # Ljava/lang/Object;

    .line 619
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method static synthetic lambda$filtering$16(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "predicate"    # Ljava/util/function/Predicate;
    .param p1, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 557
    invoke-interface {p0, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-interface {p1, p2, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 560
    :cond_0
    return-void
.end method

.method static synthetic lambda$flatMapping$14(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "u"    # Ljava/lang/Object;

    .line 509
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$flatMapping$15(Ljava/util/function/Function;Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "mapper"    # Ljava/util/function/Function;
    .param p1, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 507
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Stream;

    .line 508
    .local v0, "result":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TU;>;"
    if-eqz v0, :cond_1

    .line 509
    :try_start_0
    invoke-interface {v0}, Lj$/util/stream/Stream;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v1

    check-cast v1, Lj$/util/stream/Stream;

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda14;

    invoke-direct {v2, p1, p2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda14;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 507
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

    .line 510
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lj$/util/stream/Stream;->close()V

    .line 511
    .end local v0    # "result":Lj$/util/stream/Stream;, "Ljava/util/stream/Stream<+TU;>;"
    :cond_2
    return-void
.end method

.method static synthetic lambda$groupingBy$52(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p1, "k"    # Ljava/lang/Object;

    .line 1128
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$groupingBy$53(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2
    .param p0, "classifier"    # Ljava/util/function/Function;
    .param p1, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p2, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p3, "m"    # Ljava/util/Map;
    .param p4, "t"    # Ljava/lang/Object;

    .line 1127
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element cannot be mapped to a null key"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1128
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda66;

    invoke-direct {v1, p1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda66;-><init>(Ljava/util/function/Supplier;)V

    invoke-static {p3, v0, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    .line 1129
    .local v1, "container":Ljava/lang/Object;, "TA;"
    invoke-interface {p2, v1, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1130
    return-void
.end method

.method static synthetic lambda$groupingBy$54(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "downstreamFinisher"    # Ljava/util/function/Function;
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 1142
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$groupingBy$55(Ljava/util/function/Function;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0, "downstreamFinisher"    # Ljava/util/function/Function;
    .param p1, "intermediate"    # Ljava/util/Map;

    .line 1142
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda42;

    invoke-direct {v0, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda42;-><init>(Ljava/util/function/Function;)V

    invoke-static {p1, v0}, Lj$/util/Map$-EL;->replaceAll(Ljava/util/Map;Ljava/util/function/BiFunction;)V

    .line 1144
    move-object v0, p1

    .line 1145
    .local v0, "castResult":Ljava/util/Map;, "TM;"
    return-object v0
.end method

.method static synthetic lambda$groupingByConcurrent$56(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p1, "k"    # Ljava/lang/Object;

    .line 1291
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$groupingByConcurrent$57(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .locals 2
    .param p0, "classifier"    # Ljava/util/function/Function;
    .param p1, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p2, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p3, "m"    # Ljava/util/concurrent/ConcurrentMap;
    .param p4, "t"    # Ljava/lang/Object;

    .line 1290
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element cannot be mapped to a null key"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1291
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Supplier;)V

    invoke-static {p3, v0, v1}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    .line 1292
    .local v1, "resultContainer":Ljava/lang/Object;, "TA;"
    invoke-interface {p2, v1, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1293
    return-void
.end method

.method static synthetic lambda$groupingByConcurrent$58(Ljava/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p1, "k"    # Ljava/lang/Object;

    .line 1298
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$groupingByConcurrent$59(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .locals 3
    .param p0, "classifier"    # Ljava/util/function/Function;
    .param p1, "downstreamSupplier"    # Ljava/util/function/Supplier;
    .param p2, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p3, "m"    # Ljava/util/concurrent/ConcurrentMap;
    .param p4, "t"    # Ljava/lang/Object;

    .line 1297
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element cannot be mapped to a null key"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1298
    .local v0, "key":Ljava/lang/Object;, "TK;"
    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda30;

    invoke-direct {v1, p1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda30;-><init>(Ljava/util/function/Supplier;)V

    invoke-static {p3, v0, v1}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    .line 1299
    .local v1, "resultContainer":Ljava/lang/Object;, "TA;"
    monitor-enter v1

    .line 1300
    :try_start_0
    invoke-interface {p2, v1, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1301
    monitor-exit v1

    .line 1302
    return-void

    .line 1301
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static synthetic lambda$groupingByConcurrent$60(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "downstreamFinisher"    # Ljava/util/function/Function;
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 1312
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$groupingByConcurrent$61(Ljava/util/function/Function;Ljava/util/concurrent/ConcurrentMap;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "downstreamFinisher"    # Ljava/util/function/Function;
    .param p1, "intermediate"    # Ljava/util/concurrent/ConcurrentMap;

    .line 1312
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda47;-><init>(Ljava/util/function/Function;)V

    invoke-static {p1, v0}, Lj$/util/concurrent/ConcurrentMap$-EL;->replaceAll(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiFunction;)V

    .line 1314
    move-object v0, p1

    .line 1315
    .local v0, "castResult":Ljava/util/concurrent/ConcurrentMap;, "TM;"
    return-object v0
.end method

.method static synthetic lambda$joining$10(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0
    .param p0, "r1"    # Ljava/lang/StringBuilder;
    .param p1, "r2"    # Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic lambda$joining$11(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lj$/util/StringJoiner;
    .locals 1
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "suffix"    # Ljava/lang/CharSequence;

    .line 403
    new-instance v0, Lj$/util/StringJoiner;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic lambda$mapMerger$12(Ljava/util/function/BinaryOperator;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .param p0, "mergeFunction"    # Ljava/util/function/BinaryOperator;
    .param p1, "m1"    # Ljava/util/Map;
    .param p2, "m2"    # Ljava/util/Map;

    .line 423
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 424
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3, p0}, Lj$/util/Map$-EL;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    .line 425
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-object p1
.end method

.method static synthetic lambda$mapping$13(Ljava/util/function/BiConsumer;Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p1, "mapper"    # Ljava/util/function/Function;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 461
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$partitioningBy$62(Ljava/util/function/BiConsumer;Ljava/util/function/Predicate;Lj$/util/stream/Collectors$Partition;Ljava/lang/Object;)V
    .locals 1
    .param p0, "downstreamAccumulator"    # Ljava/util/function/BiConsumer;
    .param p1, "predicate"    # Ljava/util/function/Predicate;
    .param p2, "result"    # Lj$/util/stream/Collectors$Partition;
    .param p3, "t"    # Ljava/lang/Object;

    .line 1381
    invoke-interface {p1, p3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lj$/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lj$/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    :goto_0
    invoke-interface {p0, v0, p3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$partitioningBy$63(Ljava/util/function/BinaryOperator;Lj$/util/stream/Collectors$Partition;Lj$/util/stream/Collectors$Partition;)Lj$/util/stream/Collectors$Partition;
    .locals 4
    .param p0, "op"    # Ljava/util/function/BinaryOperator;
    .param p1, "left"    # Lj$/util/stream/Collectors$Partition;
    .param p2, "right"    # Lj$/util/stream/Collectors$Partition;

    .line 1384
    new-instance v0, Lj$/util/stream/Collectors$Partition;

    iget-object v1, p1, Lj$/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    iget-object v2, p2, Lj$/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lj$/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    iget-object v3, p2, Lj$/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    .line 1385
    invoke-interface {p0, v2, v3}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lj$/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1384
    return-object v0
.end method

.method static synthetic lambda$partitioningBy$64(Lj$/util/stream/Collector;)Lj$/util/stream/Collectors$Partition;
    .locals 3
    .param p0, "downstream"    # Lj$/util/stream/Collector;

    .line 1387
    new-instance v0, Lj$/util/stream/Collectors$Partition;

    invoke-interface {p0}, Lj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1388
    invoke-interface {p0}, Lj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lj$/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1387
    return-object v0
.end method

.method static synthetic lambda$partitioningBy$65(Lj$/util/stream/Collector;Lj$/util/stream/Collectors$Partition;)Ljava/util/Map;
    .locals 4
    .param p0, "downstream"    # Lj$/util/stream/Collector;
    .param p1, "par"    # Lj$/util/stream/Collectors$Partition;

    .line 1394
    new-instance v0, Lj$/util/stream/Collectors$Partition;

    invoke-interface {p0}, Lj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v1

    iget-object v2, p1, Lj$/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1395
    invoke-interface {p0}, Lj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v2

    iget-object v3, p1, Lj$/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lj$/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1394
    return-object v0
.end method

.method static synthetic lambda$reducing$42(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "op"    # Ljava/util/function/BinaryOperator;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Object;

    .line 870
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-interface {p0, v1, p2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    return-void
.end method

.method static synthetic lambda$reducing$43(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p0, "op"    # Ljava/util/function/BinaryOperator;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "b"    # [Ljava/lang/Object;

    .line 871
    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    return-object p1
.end method

.method static synthetic lambda$reducing$44([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "a"    # [Ljava/lang/Object;

    .line 872
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method static synthetic lambda$reducing$46(Ljava/util/function/BinaryOperator;)Lj$/util/stream/Collectors$1OptionalBox;
    .locals 1
    .param p0, "op"    # Ljava/util/function/BinaryOperator;

    .line 928
    new-instance v0, Lj$/util/stream/Collectors$1OptionalBox;

    invoke-direct {v0, p0}, Lj$/util/stream/Collectors$1OptionalBox;-><init>(Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method static synthetic lambda$reducing$47(Lj$/util/stream/Collectors$1OptionalBox;Lj$/util/stream/Collectors$1OptionalBox;)Lj$/util/stream/Collectors$1OptionalBox;
    .locals 1
    .param p0, "a"    # Lj$/util/stream/Collectors$1OptionalBox;
    .param p1, "b"    # Lj$/util/stream/Collectors$1OptionalBox;

    .line 929
    iget-boolean v0, p1, Lj$/util/stream/Collectors$1OptionalBox;->present:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lj$/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lj$/util/stream/Collectors$1OptionalBox;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method static synthetic lambda$reducing$48(Lj$/util/stream/Collectors$1OptionalBox;)Lj$/util/Optional;
    .locals 1
    .param p0, "a"    # Lj$/util/stream/Collectors$1OptionalBox;

    .line 930
    iget-object v0, p0, Lj$/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$reducing$49(Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "op"    # Ljava/util/function/BinaryOperator;
    .param p1, "mapper"    # Ljava/util/function/Function;
    .param p2, "a"    # [Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 976
    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v0

    return-void
.end method

.method static synthetic lambda$reducing$50(Ljava/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p0, "op"    # Ljava/util/function/BinaryOperator;
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "b"    # [Ljava/lang/Object;

    .line 977
    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-interface {p0, v1, v2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    return-object p1
.end method

.method static synthetic lambda$reducing$51([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "a"    # [Ljava/lang/Object;

    .line 978
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method static synthetic lambda$summarizingDouble$74(Ljava/util/function/ToDoubleFunction;Lj$/util/DoubleSummaryStatistics;Ljava/lang/Object;)V
    .locals 2
    .param p0, "mapper"    # Ljava/util/function/ToDoubleFunction;
    .param p1, "r"    # Lj$/util/DoubleSummaryStatistics;
    .param p2, "t"    # Ljava/lang/Object;

    .line 1883
    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lj$/util/DoubleSummaryStatistics;->accept(D)V

    return-void
.end method

.method static synthetic lambda$summarizingDouble$75(Lj$/util/DoubleSummaryStatistics;Lj$/util/DoubleSummaryStatistics;)Lj$/util/DoubleSummaryStatistics;
    .locals 0
    .param p0, "l"    # Lj$/util/DoubleSummaryStatistics;
    .param p1, "r"    # Lj$/util/DoubleSummaryStatistics;

    .line 1884
    invoke-virtual {p0, p1}, Lj$/util/DoubleSummaryStatistics;->combine(Lj$/util/DoubleSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$summarizingInt$70(Ljava/util/function/ToIntFunction;Lj$/util/IntSummaryStatistics;Ljava/lang/Object;)V
    .locals 1
    .param p0, "mapper"    # Ljava/util/function/ToIntFunction;
    .param p1, "r"    # Lj$/util/IntSummaryStatistics;
    .param p2, "t"    # Ljava/lang/Object;

    .line 1843
    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lj$/util/IntSummaryStatistics;->accept(I)V

    return-void
.end method

.method static synthetic lambda$summarizingInt$71(Lj$/util/IntSummaryStatistics;Lj$/util/IntSummaryStatistics;)Lj$/util/IntSummaryStatistics;
    .locals 0
    .param p0, "l"    # Lj$/util/IntSummaryStatistics;
    .param p1, "r"    # Lj$/util/IntSummaryStatistics;

    .line 1844
    invoke-virtual {p0, p1}, Lj$/util/IntSummaryStatistics;->combine(Lj$/util/IntSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$summarizingLong$72(Ljava/util/function/ToLongFunction;Lj$/util/LongSummaryStatistics;Ljava/lang/Object;)V
    .locals 2
    .param p0, "mapper"    # Ljava/util/function/ToLongFunction;
    .param p1, "r"    # Lj$/util/LongSummaryStatistics;
    .param p2, "t"    # Ljava/lang/Object;

    .line 1863
    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lj$/util/LongSummaryStatistics;->accept(J)V

    return-void
.end method

.method static synthetic lambda$summarizingLong$73(Lj$/util/LongSummaryStatistics;Lj$/util/LongSummaryStatistics;)Lj$/util/LongSummaryStatistics;
    .locals 0
    .param p0, "l"    # Lj$/util/LongSummaryStatistics;
    .param p1, "r"    # Lj$/util/LongSummaryStatistics;

    .line 1864
    invoke-virtual {p0, p1}, Lj$/util/LongSummaryStatistics;->combine(Lj$/util/LongSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$summingDouble$26()[D
    .locals 1

    .line 723
    const/4 v0, 0x3

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$summingDouble$27(Ljava/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .locals 5
    .param p0, "mapper"    # Ljava/util/function/ToDoubleFunction;
    .param p1, "a"    # [D
    .param p2, "t"    # Ljava/lang/Object;

    .line 724
    invoke-interface {p0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 725
    .local v0, "val":D
    invoke-static {p1, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 726
    const/4 v2, 0x2

    aget-wide v3, p1, v2

    add-double/2addr v3, v0

    aput-wide v3, p1, v2

    return-void
.end method

.method static synthetic lambda$summingDouble$28([D[D)[D
    .locals 5
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 727
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 728
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 729
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Lj$/util/stream/Collectors;->sumWithCompensation([DD)[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$summingDouble$29([D)Ljava/lang/Double;
    .locals 2
    .param p0, "a"    # [D

    .line 730
    invoke-static {p0}, Lj$/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$summingInt$18()[I
    .locals 1

    .line 672
    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0
.end method

.method static synthetic lambda$summingInt$19(Ljava/util/function/ToIntFunction;[ILjava/lang/Object;)V
    .locals 3
    .param p0, "mapper"    # Ljava/util/function/ToIntFunction;
    .param p1, "a"    # [I
    .param p2, "t"    # Ljava/lang/Object;

    .line 673
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method

.method static synthetic lambda$summingInt$20([I[I)[I
    .locals 3
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 674
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$summingInt$21([I)Ljava/lang/Integer;
    .locals 1
    .param p0, "a"    # [I

    .line 675
    const/4 v0, 0x0

    aget v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$summingLong$22()[J
    .locals 1

    .line 690
    const/4 v0, 0x1

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$summingLong$23(Ljava/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .locals 5
    .param p0, "mapper"    # Ljava/util/function/ToLongFunction;
    .param p1, "a"    # [J
    .param p2, "t"    # Ljava/lang/Object;

    .line 691
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic lambda$summingLong$24([J[J)[J
    .locals 5
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 692
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$summingLong$25([J)Ljava/lang/Long;
    .locals 2
    .param p0, "a"    # [J

    .line 693
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toCollection$3(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .param p0, "r1"    # Ljava/util/Collection;
    .param p1, "r2"    # Ljava/util/Collection;

    .line 262
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toConcurrentMap$69(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyMapper"    # Ljava/util/function/Function;
    .param p1, "valueMapper"    # Ljava/util/function/Function;
    .param p2, "mergeFunction"    # Ljava/util/function/BinaryOperator;
    .param p3, "map"    # Ljava/util/concurrent/ConcurrentMap;
    .param p4, "element"    # Ljava/lang/Object;

    .line 1822
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1823
    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1822
    invoke-static {p3, v0, v1, p2}, Lj$/util/concurrent/ConcurrentMap$-EL;->merge(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$toList$4(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "left"    # Ljava/util/List;
    .param p1, "right"    # Ljava/util/List;

    .line 279
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toMap$68(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2
    .param p0, "keyMapper"    # Ljava/util/function/Function;
    .param p1, "valueMapper"    # Ljava/util/function/Function;
    .param p2, "mergeFunction"    # Ljava/util/function/BinaryOperator;
    .param p3, "map"    # Ljava/util/Map;
    .param p4, "element"    # Ljava/lang/Object;

    .line 1658
    invoke-interface {p0, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1659
    invoke-interface {p1, p4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1658
    invoke-static {p3, v0, v1, p2}, Lj$/util/Map$-EL;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$toSet$7(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
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

.method static synthetic lambda$toUnmodifiableList$5(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "left"    # Ljava/util/List;
    .param p1, "right"    # Ljava/util/List;

    .line 298
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toUnmodifiableList$6(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .line 299
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/time/Duration$DurationUnits$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toUnmodifiableMap$66(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p0, "map"    # Ljava/util/Map;

    .line 1501
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

.method static synthetic lambda$toUnmodifiableMap$67(Ljava/util/HashMap;)Ljava/util/Map;
    .locals 2
    .param p0, "map"    # Ljava/util/HashMap;

    .line 1609
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

.method static synthetic lambda$toUnmodifiableSet$8(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .param p0, "left"    # Ljava/util/Set;
    .param p1, "right"    # Ljava/util/Set;

    .line 350
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 351
    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 353
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toUnmodifiableSet$9(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p0, "set"    # Ljava/util/Set;

    .line 356
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/util/CollSer$$ExternalSyntheticBackport0;->m([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$uniqKeysMapAccumulator$1(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 4
    .param p0, "keyMapper"    # Ljava/util/function/Function;
    .param p1, "valueMapper"    # Ljava/util/function/Function;
    .param p2, "map"    # Ljava/util/Map;
    .param p3, "element"    # Ljava/lang/Object;

    .line 177
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    .local v0, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 179
    .local v1, "v":Ljava/lang/Object;, "TV;"
    invoke-static {p2, v0, v1}, Lj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 180
    .local v2, "u":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_0

    .line 181
    return-void

    .line 180
    :cond_0
    invoke-static {v0, v2, v1}, Lj$/util/stream/Collectors;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v3

    throw v3
.end method

.method static synthetic lambda$uniqKeysMapMerger$0(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .param p0, "m1"    # Ljava/util/Map;
    .param p1, "m2"    # Ljava/util/Map;

    .line 151
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 152
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 153
    .local v2, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 154
    .local v3, "v":Ljava/lang/Object;, "TV;"
    invoke-static {p0, v2, v3}, Lj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 155
    .local v4, "u":Ljava/lang/Object;, "TV;"
    if-nez v4, :cond_0

    .line 156
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "u":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 155
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v2    # "k":Ljava/lang/Object;, "TK;"
    .restart local v3    # "v":Ljava/lang/Object;, "TV;"
    .restart local v4    # "u":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-static {v2, v4, v3}, Lj$/util/stream/Collectors;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    .line 157
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "u":Ljava/lang/Object;, "TV;"
    :cond_1
    return-object p0
.end method

.method private static mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TV;>;>(",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava/util/function/BinaryOperator<",
            "TM;>;"
        }
    .end annotation

    .line 422
    .local p0, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda90;

    invoke-direct {v0, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda90;-><init>(Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public static mapping(Ljava/util/function/Function;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;
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
            "-TT;+TU;>;",
            "Lj$/util/stream/Collector<",
            "-TU;TA;TR;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 459
    .local p0, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p1, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<-TU;TA;TR;>;"
    invoke-interface {p1}, Lj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    .line 460
    .local v0, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TU;>;"
    new-instance v7, Lj$/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Lj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v2

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda41;

    invoke-direct {v3, v0, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda41;-><init>(Ljava/util/function/BiConsumer;Ljava/util/function/Function;)V

    .line 462
    invoke-interface {p1}, Lj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Lj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object v5

    .line 463
    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 460
    return-object v7
.end method

.method public static maxBy(Ljava/util/Comparator;)Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lj$/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 657
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Lj$/util/function/BinaryOperator$-CC;->maxBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Collectors;->reducing(Ljava/util/function/BinaryOperator;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static minBy(Ljava/util/Comparator;)Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lj$/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 638
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Lj$/util/function/BinaryOperator$-CC;->minBy(Ljava/util/Comparator;)Ljava/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Collectors;->reducing(Ljava/util/function/BinaryOperator;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static partitioningBy(Ljava/util/function/Predicate;)Lj$/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1344
    .local p0, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Lj$/util/stream/Collectors;->partitioningBy(Ljava/util/function/Predicate;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static partitioningBy(Ljava/util/function/Predicate;Lj$/util/stream/Collector;)Lj$/util/stream/Collector;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "-TT;>;",
            "Lj$/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "TD;>;>;"
        }
    .end annotation

    .line 1379
    .local p0, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p1, "downstream":Lj$/util/stream/Collector;, "Ljava/util/stream/Collector<-TT;TA;TD;>;"
    invoke-interface {p1}, Lj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v0

    .line 1380
    .local v0, "downstreamAccumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TA;-TT;>;"
    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda48;

    invoke-direct {v1, v0, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda48;-><init>(Ljava/util/function/BiConsumer;Ljava/util/function/Predicate;)V

    .line 1382
    .local v1, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/util/stream/Collectors$Partition<TA;>;TT;>;"
    invoke-interface {p1}, Lj$/util/stream/Collector;->combiner()Ljava/util/function/BinaryOperator;

    move-result-object v8

    .line 1383
    .local v8, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TA;>;"
    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda49;

    invoke-direct {v2, v8}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda49;-><init>(Ljava/util/function/BinaryOperator;)V

    move-object v9, v2

    .line 1386
    .local v9, "merger":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<Ljava/util/stream/Collectors$Partition<TA;>;>;"
    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda50;

    invoke-direct {v2, p1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda50;-><init>(Lj$/util/stream/Collector;)V

    move-object v10, v2

    .line 1389
    .local v10, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/stream/Collectors$Partition<TA;>;>;"
    invoke-interface {p1}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1390
    new-instance v2, Lj$/util/stream/Collectors$CollectorImpl;

    sget-object v3, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v2, v10, v1, v9, v3}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v2

    .line 1393
    :cond_0
    new-instance v6, Lj$/util/stream/Collectors$$ExternalSyntheticLambda51;

    invoke-direct {v6, p1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda51;-><init>(Lj$/util/stream/Collector;)V

    .line 1396
    .local v6, "finisher":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/util/stream/Collectors$Partition<TA;>;Ljava/util/Map<Ljava/lang/Boolean;TD;>;>;"
    new-instance v11, Lj$/util/stream/Collectors$CollectorImpl;

    sget-object v7, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v2, v11

    move-object v3, v10

    move-object v4, v1

    move-object v5, v9

    invoke-direct/range {v2 .. v7}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v11
.end method

.method public static reducing(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TT;>;"
        }
    .end annotation

    .line 868
    .local p0, "identity":Ljava/lang/Object;, "TT;"
    .local p1, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    .line 869
    invoke-static {p0}, Lj$/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object v1

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda52;

    invoke-direct {v2, p1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda52;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda53;

    invoke-direct {v3, p1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda53;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda54;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda54;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 868
    return-object v6
.end method

.method public static reducing(Ljava/lang/Object;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TU;>;"
        }
    .end annotation

    .line 974
    .local p0, "identity":Ljava/lang/Object;, "TU;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    .line 975
    invoke-static {p0}, Lj$/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object v1

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2, p1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/BinaryOperator;Ljava/util/function/Function;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda5;

    invoke-direct {v3, p2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda6;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    .line 974
    return-object v6
.end method

.method public static reducing(Ljava/util/function/BinaryOperator;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lj$/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 927
    .local p0, "op":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TT;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda82;

    invoke-direct {v1, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda82;-><init>(Ljava/util/function/BinaryOperator;)V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda83;

    invoke-direct {v2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda83;-><init>()V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda84;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda84;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda85;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda85;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method static sumWithCompensation([DD)[D
    .locals 10
    .param p0, "intermediateSum"    # [D
    .param p1, "value"    # D

    .line 746
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    sub-double v1, p1, v1

    .line 747
    .local v1, "tmp":D
    const/4 v3, 0x0

    aget-wide v4, p0, v3

    .line 748
    .local v4, "sum":D
    add-double v6, v4, v1

    .line 749
    .local v6, "velvel":D
    sub-double v8, v6, v4

    sub-double/2addr v8, v1

    aput-wide v8, p0, v0

    .line 750
    aput-wide v6, p0, v3

    .line 751
    return-object p0
.end method

.method public static summarizingDouble(Ljava/util/function/ToDoubleFunction;)Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lj$/util/DoubleSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 1881
    .local p0, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    new-instance v0, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda15;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda16;-><init>(Ljava/util/function/ToDoubleFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda17;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda17;-><init>()V

    sget-object v4, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summarizingInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lj$/util/IntSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 1841
    .local p0, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    new-instance v0, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda27;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda28;-><init>(Ljava/util/function/ToIntFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda29;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda29;-><init>()V

    sget-object v4, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summarizingLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Lj$/util/LongSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 1861
    .local p0, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    new-instance v0, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda61;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda61;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda62;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda62;-><init>(Ljava/util/function/ToLongFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda63;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda63;-><init>()V

    sget-object v4, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summingDouble(Ljava/util/function/ToDoubleFunction;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 722
    .local p0, "mapper":Ljava/util/function/ToDoubleFunction;, "Ljava/util/function/ToDoubleFunction<-TT;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda55;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda55;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda56;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda56;-><init>(Ljava/util/function/ToDoubleFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda57;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda57;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda58;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda58;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static summingInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToIntFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 671
    .local p0, "mapper":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<-TT;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda10;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda11;-><init>(Ljava/util/function/ToIntFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda12;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda13;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda13;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static summingLong(Ljava/util/function/ToLongFunction;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/ToLongFunction<",
            "-TT;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 689
    .local p0, "mapper":Ljava/util/function/ToLongFunction;, "Ljava/util/function/ToLongFunction<-TT;>;"
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda78;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda78;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda79;

    invoke-direct {v2, p0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda79;-><init>(Ljava/util/function/ToLongFunction;)V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda80;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda80;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda81;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda81;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TT;>;>(",
            "Ljava/util/function/Supplier<",
            "TC;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TC;>;"
        }
    .end annotation

    .line 261
    .local p0, "collectionFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TC;>;"
    new-instance v0, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda19;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda20;

    invoke-direct {v2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda20;-><init>()V

    sget-object v3, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2, v3}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;
    .locals 5
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
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1718
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    new-instance v0, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda40;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda40;-><init>()V

    .line 1719
    invoke-static {p0, p1}, Lj$/util/stream/Collectors;->uniqKeysMapAccumulator(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/BiConsumer;

    move-result-object v2

    .line 1720
    invoke-static {}, Lj$/util/stream/Collectors;->uniqKeysMapMerger()Ljava/util/function/BinaryOperator;

    move-result-object v3

    sget-object v4, Lj$/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    .line 1718
    return-object v0
.end method

.method public static toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Lj$/util/stream/Collector;
    .locals 1
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
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1779
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lj$/util/stream/Collectors;->toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toConcurrentMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1821
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    .local p3, "mapFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda25;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V

    .line 1824
    .local v0, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TM;TT;>;"
    new-instance v1, Lj$/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Lj$/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Lj$/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v1, p3, v0, v2, v3}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method

.method public static toList()Lj$/util/stream/Collector;
    .locals 5
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

    .line 278
    new-instance v0, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda21;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda22;

    invoke-direct {v2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda22;-><init>()V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda64;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda64;-><init>()V

    sget-object v4, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;
    .locals 5
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

    .line 1459
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    new-instance v0, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda76;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda76;-><init>()V

    .line 1460
    invoke-static {p0, p1}, Lj$/util/stream/Collectors;->uniqKeysMapAccumulator(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/BiConsumer;

    move-result-object v2

    .line 1461
    invoke-static {}, Lj$/util/stream/Collectors;->uniqKeysMapMerger()Ljava/util/function/BinaryOperator;

    move-result-object v3

    sget-object v4, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    .line 1459
    return-object v0
.end method

.method public static toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)Lj$/util/stream/Collector;
    .locals 1
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

    .line 1564
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda76;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda76;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lj$/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TU;>;>(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/function/BinaryOperator<",
            "TU;>;",
            "Ljava/util/function/Supplier<",
            "TM;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1657
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    .local p3, "mapFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TM;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda26;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;)V

    .line 1660
    .local v0, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TM;TT;>;"
    new-instance v1, Lj$/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Lj$/util/stream/Collectors;->mapMerger(Ljava/util/function/BinaryOperator;)Ljava/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Lj$/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v1, p3, v0, v2, v3}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method

.method public static toSet()Lj$/util/stream/Collector;
    .locals 5
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
    new-instance v0, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda43;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda43;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda44;

    invoke-direct {v2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda44;-><init>()V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda72;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda72;-><init>()V

    sget-object v4, Lj$/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

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

    .line 297
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda21;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda22;

    invoke-direct {v2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda22;-><init>()V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda23;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda23;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda24;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda24;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

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

    .line 1497
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    const-string v0, "keyMapper"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1498
    const-string v0, "valueMapper"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1499
    nop

    .line 1500
    invoke-static {p0, p1}, Lj$/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Lj$/util/stream/Collector;

    move-result-object v0

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda31;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda31;-><init>()V

    .line 1499
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

    .line 1604
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TU;>;"
    const-string v0, "keyMapper"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1605
    const-string v0, "valueMapper"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1606
    const-string v0, "mergeFunction"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1607
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda73;-><init>()V

    .line 1608
    invoke-static {p0, p1, p2, v0}, Lj$/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda74;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda74;-><init>()V

    .line 1607
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

    .line 348
    new-instance v6, Lj$/util/stream/Collectors$CollectorImpl;

    new-instance v1, Lj$/util/stream/Collectors$$ExternalSyntheticLambda43;

    invoke-direct {v1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda43;-><init>()V

    new-instance v2, Lj$/util/stream/Collectors$$ExternalSyntheticLambda44;

    invoke-direct {v2}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda44;-><init>()V

    new-instance v3, Lj$/util/stream/Collectors$$ExternalSyntheticLambda45;

    invoke-direct {v3}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda45;-><init>()V

    new-instance v4, Lj$/util/stream/Collectors$$ExternalSyntheticLambda46;

    invoke-direct {v4}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda46;-><init>()V

    sget-object v5, Lj$/util/stream/Collectors;->CH_UNORDERED_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/Collectors$CollectorImpl;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method private static uniqKeysMapAccumulator(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/Map<",
            "TK;TV;>;TT;>;"
        }
    .end annotation

    .line 176
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TV;>;"
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    return-object v0
.end method

.method private static uniqKeysMapMerger()Ljava/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TV;>;>()",
            "Ljava/util/function/BinaryOperator<",
            "TM;>;"
        }
    .end annotation

    .line 150
    new-instance v0, Lj$/util/stream/Collectors$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lj$/util/stream/Collectors$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method
