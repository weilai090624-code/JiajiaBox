.class public Lj$/util/stream/StackWalkerApiFlips$FunctionStreamWrapper;
.super Ljava/lang/Object;
.source "StackWalkerApiFlips.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StackWalkerApiFlips;
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

    .line 21
    .local p0, "this":Lj$/util/stream/StackWalkerApiFlips$FunctionStreamWrapper;, "Ljava/util/stream/StackWalkerApiFlips$FunctionStreamWrapper<TT;TR;>;"
    .local p1, "function":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lj$/util/stream/StackWalkerApiFlips$FunctionStreamWrapper;->function:Ljava/util/function/Function;

    .line 23
    return-void
.end method

.method private flipStream(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 27
    .local p0, "this":Lj$/util/stream/StackWalkerApiFlips$FunctionStreamWrapper;, "Ljava/util/stream/StackWalkerApiFlips$FunctionStreamWrapper<TT;TR;>;"
    .local p1, "maybeStream":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 28
    const/4 v0, 0x0

    return-object v0

    .line 30
    :cond_0
    instance-of v0, p1, Lj$/util/stream/Stream;

    if-eqz v0, :cond_1

    .line 31
    move-object v0, p1

    check-cast v0, Lj$/util/stream/Stream;

    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 33
    :cond_1
    instance-of v0, p1, Ljava/util/stream/Stream;

    if-eqz v0, :cond_2

    .line 34
    move-object v0, p1

    check-cast v0, Ljava/util/stream/Stream;

    invoke-static {v0}, Lj$/util/stream/Stream$VivifiedWrapper;->convert(Ljava/util/stream/Stream;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 36
    :cond_2
    const-string v0, "java.util.stream.Stream"

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .line 40
    .local p0, "this":Lj$/util/stream/StackWalkerApiFlips$FunctionStreamWrapper;, "Ljava/util/stream/StackWalkerApiFlips$FunctionStreamWrapper<TT;TR;>;"
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lj$/util/stream/StackWalkerApiFlips$FunctionStreamWrapper;->function:Ljava/util/function/Function;

    invoke-direct {p0, p1}, Lj$/util/stream/StackWalkerApiFlips$FunctionStreamWrapper;->flipStream(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
