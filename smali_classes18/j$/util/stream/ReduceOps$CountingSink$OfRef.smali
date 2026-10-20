.class final Lj$/util/stream/ReduceOps$CountingSink$OfRef;
.super Lj$/util/stream/ReduceOps$CountingSink;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/ReduceOps$CountingSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/ReduceOps$CountingSink<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 820
    .local p0, "this":Lj$/util/stream/ReduceOps$CountingSink$OfRef;, "Ljava/util/stream/ReduceOps$CountingSink$OfRef<TT;>;"
    invoke-direct {p0}, Lj$/util/stream/ReduceOps$CountingSink;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 823
    .local p0, "this":Lj$/util/stream/ReduceOps$CountingSink$OfRef;, "Ljava/util/stream/ReduceOps$CountingSink$OfRef<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-wide v0, p0, Lj$/util/stream/ReduceOps$CountingSink$OfRef;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/ReduceOps$CountingSink$OfRef;->count:J

    .line 824
    return-void
.end method

.method public bridge synthetic combine(Lj$/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 820
    .local p0, "this":Lj$/util/stream/ReduceOps$CountingSink$OfRef;, "Ljava/util/stream/ReduceOps$CountingSink$OfRef<TT;>;"
    check-cast p1, Lj$/util/stream/ReduceOps$CountingSink;

    invoke-super {p0, p1}, Lj$/util/stream/ReduceOps$CountingSink;->combine(Lj$/util/stream/ReduceOps$CountingSink;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 820
    .local p0, "this":Lj$/util/stream/ReduceOps$CountingSink$OfRef;, "Ljava/util/stream/ReduceOps$CountingSink$OfRef<TT;>;"
    invoke-super {p0}, Lj$/util/stream/ReduceOps$CountingSink;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
