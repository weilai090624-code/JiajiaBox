.class public Lj$/util/stream/FlatMapApiFlips$FunctionStreamWrapper;
.super Ljava/lang/Object;
.source "FlatMapApiFlips.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/FlatMapApiFlips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FunctionStreamWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public function:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "TT;TR;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lj$/util/stream/FlatMapApiFlips$FunctionStreamWrapper;, "Ljava/util/stream/FlatMapApiFlips$FunctionStreamWrapper<TT;TR;>;"
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lj$/util/stream/FlatMapApiFlips$FunctionStreamWrapper;->function:Ljava/util/function/Function;

    .line 38
    return-void
.end method

.method private flipStream(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lj$/util/stream/FlatMapApiFlips$FunctionStreamWrapper;, "Ljava/util/stream/FlatMapApiFlips$FunctionStreamWrapper<TT;TR;>;"
    .local p1, "maybeStream":Ljava/lang/Object;, "TR;"
    if-nez p1, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    instance-of v0, p1, Lj$/util/stream/Stream;

    if-eqz v0, :cond_1

    .line 47
    move-object v0, p1

    check-cast v0, Lj$/util/stream/Stream;

    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 49
    :cond_1
    instance-of v0, p1, Ljava/util/stream/Stream;

    if-eqz v0, :cond_2

    .line 50
    move-object v0, p1

    check-cast v0, Ljava/util/stream/Stream;

    invoke-static {v0}, Lj$/util/stream/Stream$VivifiedWrapper;->convert(Ljava/util/stream/Stream;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 53
    :cond_2
    instance-of v0, p1, Lj$/util/stream/IntStream;

    if-eqz v0, :cond_3

    .line 54
    move-object v0, p1

    check-cast v0, Lj$/util/stream/IntStream;

    invoke-static {v0}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 56
    :cond_3
    instance-of v0, p1, Ljava/util/stream/IntStream;

    if-eqz v0, :cond_4

    .line 57
    move-object v0, p1

    check-cast v0, Ljava/util/stream/IntStream;

    invoke-static {v0}, Lj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 60
    :cond_4
    instance-of v0, p1, Lj$/util/stream/DoubleStream;

    if-eqz v0, :cond_5

    .line 61
    move-object v0, p1

    check-cast v0, Lj$/util/stream/DoubleStream;

    .line 62
    invoke-static {v0}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    .line 61
    return-object v0

    .line 64
    :cond_5
    instance-of v0, p1, Ljava/util/stream/DoubleStream;

    if-eqz v0, :cond_6

    .line 65
    move-object v0, p1

    check-cast v0, Ljava/util/stream/DoubleStream;

    .line 66
    invoke-static {v0}, Lj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Lj$/util/stream/DoubleStream;

    move-result-object v0

    .line 65
    return-object v0

    .line 69
    :cond_6
    instance-of v0, p1, Lj$/util/stream/LongStream;

    if-eqz v0, :cond_7

    .line 70
    move-object v0, p1

    check-cast v0, Lj$/util/stream/LongStream;

    .line 71
    invoke-static {v0}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 70
    return-object v0

    .line 73
    :cond_7
    instance-of v0, p1, Ljava/util/stream/LongStream;

    if-eqz v0, :cond_8

    .line 74
    move-object v0, p1

    check-cast v0, Ljava/util/stream/LongStream;

    invoke-static {v0}, Lj$/util/stream/LongStream$VivifiedWrapper;->convert(Ljava/util/stream/LongStream;)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 77
    :cond_8
    const-string v0, "java.util.stream.*Stream"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lj$/util/stream/FlatMapApiFlips$FunctionStreamWrapper;, "Ljava/util/stream/FlatMapApiFlips$FunctionStreamWrapper<TT;TR;>;"
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lj$/util/stream/FlatMapApiFlips$FunctionStreamWrapper;->function:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/util/stream/FlatMapApiFlips$FunctionStreamWrapper;->flipStream(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
