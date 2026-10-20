.class public Lj$/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper;
.super Ljava/lang/Object;
.source "FlatMapApiFlips.java"

# interfaces
.implements Ljava/util/function/IntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/FlatMapApiFlips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntFunctionStreamWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/IntFunction<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public function:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/IntFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "TR;>;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lj$/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper;, "Ljava/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper<TR;>;"
    .local p1, "function":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lj$/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper;->function:Ljava/util/function/IntFunction;

    .line 91
    return-void
.end method

.method private flipStream(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lj$/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper;, "Ljava/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper<TR;>;"
    .local p1, "maybeStream":Ljava/lang/Object;, "TR;"
    if-nez p1, :cond_0

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 98
    :cond_0
    instance-of v0, p1, Lj$/util/stream/IntStream;

    if-eqz v0, :cond_1

    .line 99
    move-object v0, p1

    check-cast v0, Lj$/util/stream/IntStream;

    invoke-static {v0}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 101
    :cond_1
    instance-of v0, p1, Ljava/util/stream/IntStream;

    if-eqz v0, :cond_2

    .line 102
    move-object v0, p1

    check-cast v0, Ljava/util/stream/IntStream;

    invoke-static {v0}, Lj$/util/stream/IntStream$VivifiedWrapper;->convert(Ljava/util/stream/IntStream;)Lj$/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 104
    :cond_2
    const-string v0, "java.util.stream.IntStream"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public apply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TR;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lj$/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper;, "Ljava/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper<TR;>;"
    iget-object v0, p0, Lj$/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper;->function:Ljava/util/function/IntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/util/stream/FlatMapApiFlips$IntFunctionStreamWrapper;->flipStream(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
