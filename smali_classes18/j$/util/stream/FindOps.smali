.class final Lj$/util/stream/FindOps;
.super Ljava/lang/Object;
.source "FindOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/FindOps$FindTask;,
        Lj$/util/stream/FindOps$FindSink;,
        Lj$/util/stream/FindOps$FindOp;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeDouble(Z)Lj$/util/stream/TerminalOp;
    .locals 1
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lj$/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Lj$/util/OptionalDouble;",
            ">;"
        }
    .end annotation

    .line 93
    if-eqz p0, :cond_0

    sget-object v0, Lj$/util/stream/FindOps$FindSink$OfDouble;->OP_FIND_FIRST:Lj$/util/stream/TerminalOp;

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/util/stream/FindOps$FindSink$OfDouble;->OP_FIND_ANY:Lj$/util/stream/TerminalOp;

    :goto_0
    return-object v0
.end method

.method public static makeInt(Z)Lj$/util/stream/TerminalOp;
    .locals 1
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lj$/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Lj$/util/OptionalInt;",
            ">;"
        }
    .end annotation

    .line 71
    if-eqz p0, :cond_0

    sget-object v0, Lj$/util/stream/FindOps$FindSink$OfInt;->OP_FIND_FIRST:Lj$/util/stream/TerminalOp;

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/util/stream/FindOps$FindSink$OfInt;->OP_FIND_ANY:Lj$/util/stream/TerminalOp;

    :goto_0
    return-object v0
.end method

.method public static makeLong(Z)Lj$/util/stream/TerminalOp;
    .locals 1
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lj$/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Lj$/util/OptionalLong;",
            ">;"
        }
    .end annotation

    .line 82
    if-eqz p0, :cond_0

    sget-object v0, Lj$/util/stream/FindOps$FindSink$OfLong;->OP_FIND_FIRST:Lj$/util/stream/TerminalOp;

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/util/stream/FindOps$FindSink$OfLong;->OP_FIND_ANY:Lj$/util/stream/TerminalOp;

    :goto_0
    return-object v0
.end method

.method public static makeRef(Z)Lj$/util/stream/TerminalOp;
    .locals 1
    .param p0, "mustFindFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lj$/util/stream/TerminalOp<",
            "TT;",
            "Lj$/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 60
    if-eqz p0, :cond_0

    sget-object v0, Lj$/util/stream/FindOps$FindSink$OfRef;->OP_FIND_FIRST:Lj$/util/stream/TerminalOp;

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/util/stream/FindOps$FindSink$OfRef;->OP_FIND_ANY:Lj$/util/stream/TerminalOp;

    .line 59
    :goto_0
    return-object v0
.end method
