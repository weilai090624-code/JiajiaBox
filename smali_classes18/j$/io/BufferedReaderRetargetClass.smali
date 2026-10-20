.class public final synthetic Lj$/io/BufferedReaderRetargetClass;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic lines(Ljava/io/BufferedReader;)Lj$/util/stream/Stream;
    .locals 1

    instance-of v0, p0, Lj$/io/BufferedReaderRetargetInterface;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/io/BufferedReaderRetargetInterface;

    invoke-interface {p0}, Lj$/io/BufferedReaderRetargetInterface;->lines()Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lj$/io/DesugarBufferedReader;->lines(Ljava/io/BufferedReader;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
