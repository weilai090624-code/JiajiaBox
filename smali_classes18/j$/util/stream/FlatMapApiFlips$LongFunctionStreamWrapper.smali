.class public Lj$/util/stream/FlatMapApiFlips$LongFunctionStreamWrapper;
.super Ljava/lang/Object;
.source "FlatMapApiFlips.java"

# interfaces
.implements Ljava/util/function/LongFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/FlatMapApiFlips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongFunctionStreamWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/LongFunction<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public function:Ljava/util/function/LongFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/LongFunction<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/LongFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/LongFunction<",
            "TR;>;)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Lj$/util/stream/FlatMapApiFlips$LongFunctionStreamWrapper;, "Ljava/util/stream/FlatMapApiFlips$LongFunctionStreamWrapper<TR;>;"
    .local p1, "function":Ljava/util/function/LongFunction;, "Ljava/util/function/LongFunction<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lj$/util/stream/FlatMapApiFlips$LongFunctionStreamWrapper;->function:Ljava/util/function/LongFunction;

    .line 147
    return-void
.end method

.method private flipStream(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lj$/util/stream/FlatMapApiFlips$LongFunctionStreamWrapper;, "Ljava/util/stream/FlatMapApiFlips$LongFunctionStreamWrapper<TR;>;"
    .local p1, "maybeStream":Ljava/lang/Object;, "TR;"
    if-nez p1, :cond_0

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_0
    instance-of v0, p1, Lj$/util/stream/LongStream;

    if-eqz v0, :cond_1

    .line 155
    move-object v0, p1

    check-cast v0, Lj$/util/stream/LongStream;

    .line 156
    invoke-static {v0}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 155
    return-object v0

    .line 158
    :cond_1
    instance-of v0, p1, Ljava/util/stream/LongStream;

    if-eqz v0, :cond_2

    .line 159
    move-object v0, p1

    check-cast v0, Ljava/util/stream/LongStream;

    invoke-static {v0}, Lj$/util/stream/LongStream$VivifiedWrapper;->convert(Ljava/util/stream/LongStream;)Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 161
    :cond_2
    const-string v0, "java.util.stream.LongStream"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lj$/util/ConversionRuntimeException;->exception(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public apply(J)Ljava/lang/Object;
    .locals 1
    .param p1, "arg"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lj$/util/stream/FlatMapApiFlips$LongFunctionStreamWrapper;, "Ljava/util/stream/FlatMapApiFlips$LongFunctionStreamWrapper<TR;>;"
    iget-object v0, p0, Lj$/util/stream/FlatMapApiFlips$LongFunctionStreamWrapper;->function:Ljava/util/function/LongFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/util/stream/FlatMapApiFlips$LongFunctionStreamWrapper;->flipStream(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
