.class public final synthetic Lj$/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/IntFunction;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/IntFunction;

    return-void
.end method


# virtual methods
.method public final apply(J)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lj$/util/stream/Nodes$CollectorTask$OfRef$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/IntFunction;

    invoke-static {v0, p1, p2}, Lj$/util/stream/Nodes$CollectorTask$OfRef;->lambda$new$0(Ljava/util/function/IntFunction;J)Lj$/util/stream/Node$Builder;

    move-result-object p1

    return-object p1
.end method
