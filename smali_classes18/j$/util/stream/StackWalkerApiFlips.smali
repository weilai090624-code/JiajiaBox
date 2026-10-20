.class public Lj$/util/stream/StackWalkerApiFlips;
.super Ljava/lang/Object;
.source "StackWalkerApiFlips.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/StackWalkerApiFlips$FunctionStreamWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flipFunctionStream(Ljava/util/function/Function;)Ljava/util/function/Function;
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

    .line 14
    .local p0, "stackWalker":Ljava/util/function/Function;, "Ljava/util/function/Function<**>;"
    new-instance v0, Lj$/util/stream/StackWalkerApiFlips$FunctionStreamWrapper;

    invoke-direct {v0, p0}, Lj$/util/stream/StackWalkerApiFlips$FunctionStreamWrapper;-><init>(Ljava/util/function/Function;)V

    return-object v0
.end method
