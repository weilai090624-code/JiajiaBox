.class public Lj$/util/stream/FlatMapApiFlips;
.super Ljava/lang/Object;
.source "FlatMapApiFlips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/FlatMapApiFlips$LongFunctionStreamWrapper;,
        Lj$/util/stream/FlatMapApiFlips$DoubleFunctionStreamWrapper;,
        Lj$/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper;,
        Lj$/util/stream/FlatMapApiFlips$FunctionStreamWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flipFunctionReturningStream(Ljava/util/function/DoubleFunction;)Ljava/util/function/DoubleFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/DoubleFunction<",
            "*>;)",
            "Ljava/util/function/DoubleFunction<",
            "*>;"
        }
    .end annotation

    .line 25
    .local p0, "function":Ljava/util/function/DoubleFunction;, "Ljava/util/function/DoubleFunction<*>;"
    new-instance v0, Lj$/util/stream/FlatMapApiFlips$DoubleFunctionStreamWrapper;

    invoke-direct {v0, p0}, Lj$/util/stream/FlatMapApiFlips$DoubleFunctionStreamWrapper;-><init>(Ljava/util/function/DoubleFunction;)V

    return-object v0
.end method

.method public static flipFunctionReturningStream(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "**>;)",
            "Ljava/util/function/Function<",
            "**>;"
        }
    .end annotation

    .line 17
    .local p0, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<**>;"
    new-instance v0, Lj$/util/stream/FlatMapApiFlips$FunctionStreamWrapper;

    invoke-direct {v0, p0}, Lj$/util/stream/FlatMapApiFlips$FunctionStreamWrapper;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static flipFunctionReturningStream(Ljava/util/function/IntFunction;)Ljava/util/function/IntFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "*>;)",
            "Ljava/util/function/IntFunction<",
            "*>;"
        }
    .end annotation

    .line 21
    .local p0, "function":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<*>;"
    new-instance v0, Lj$/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper;

    invoke-direct {v0, p0}, Lj$/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper;-><init>(Ljava/util/function/IntFunction;)V

    return-object v0
.end method

.method public static flipFunctionReturningStream(Ljava/util/function/LongFunction;)Ljava/util/function/LongFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/LongFunction<",
            "*>;)",
            "Ljava/util/function/LongFunction<",
            "*>;"
        }
    .end annotation

    .line 29
    .local p0, "function":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<*>;"
    new-instance v0, Lj$/util/stream/FlatMapApiFlips$LongFunctionStreamWrapper;

    invoke-direct {v0, p0}, Lj$/util/stream/FlatMapApiFlips$LongFunctionStreamWrapper;-><init>(Ljava/util/function/LongFunction;)V

    return-object v0
.end method
