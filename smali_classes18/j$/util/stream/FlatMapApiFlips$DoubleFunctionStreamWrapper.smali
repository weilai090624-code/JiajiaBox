.class public Lj$/util/stream/FlatMapApiFlips$DoubleFunctionStreamWrapper;
.super Ljava/lang/Object;
.source "FlatMapApiFlips.java"

# interfaces
.implements Ljava/util/function/DoubleFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/FlatMapApiFlips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoubleFunctionStreamWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/DoubleFunction<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public function:Ljava/util/function/DoubleFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/DoubleFunction<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/DoubleFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/DoubleFunction<",
            "TR;>;)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lj$/util/stream/FlatMapApiFlips$DoubleFunctionStreamWrapper;, "Ljava/util/stream/FlatMapApiFlips$DoubleFunctionStreamWrapper<TR;>;"
    .local p1, "function":Ljava/util/function/DoubleFunction;, "Ljava/util/function/DoubleFunction<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lj$/util/stream/FlatMapApiFlips$DoubleFunctionStreamWrapper;->function:Ljava/util/function/DoubleFunction;

    .line 118
    return-void
.end method

.method private flipStream(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lj$/util/stream/FlatMapApiFlips$DoubleFunctionStreamWrapper;, "Ljava/util/stream/FlatMapApiFlips$DoubleFunctionStreamWrapper<TR;>;"
    .local p1, "maybeStream":Ljava/lang/Object;, "TR;"
    if-nez p1, :cond_0

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    instance-of v0, p1, Lj$/util/stream/DoubleStream;

    if-eqz v0, :cond_1

    .line 126
    move-object v0, p1

    check-cast v0, Lj$/util/stream/DoubleStream;

    .line 127
    invoke-static {v0}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    .line 126
    return-object v0

    .line 129
    :cond_1
    instance-of v0, p1, Ljava/util/stream/DoubleStream;

    if-eqz v0, :cond_2

    .line 130
    move-object v0, p1

    check-cast v0, Ljava/util/stream/DoubleStream;

    .line 131
    invoke-static {v0}, Lj$/util/stream/DoubleStream$VivifiedWrapper;->convert(Ljava/util/stream/DoubleStream;)Lj$/util/stream/DoubleStream;

    move-result-object v0

    .line 130
    return-object v0

    .line 133
    :cond_2
    const-string v0, "java.util.stream.DoubleStream"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public apply(D)Ljava/lang/Object;
    .locals 1
    .param p1, "arg"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TR;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lj$/util/stream/FlatMapApiFlips$DoubleFunctionStreamWrapper;, "Ljava/util/stream/FlatMapApiFlips$DoubleFunctionStreamWrapper<TR;>;"
    iget-object v0, p0, Lj$/util/stream/FlatMapApiFlips$DoubleFunctionStreamWrapper;->function:Ljava/util/function/DoubleFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/util/stream/FlatMapApiFlips$DoubleFunctionStreamWrapper;->flipStream(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
