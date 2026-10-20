.class abstract Lj$/util/stream/LongPipeline$StatelessOp;
.super Lj$/util/stream/LongPipeline;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/LongPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StatelessOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Lj$/util/stream/LongPipeline<",
        "TE_IN;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 598
    const-class v0, Lj$/util/stream/LongPipeline;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;I)V
    .locals 0
    .param p2, "inputShape"    # Lj$/util/stream/StreamShape;
    .param p3, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*TE_IN;*>;",
            "Lj$/util/stream/StreamShape;",
            "I)V"
        }
    .end annotation

    .line 609
    .local p0, "this":Lj$/util/stream/LongPipeline$StatelessOp;, "Ljava/util/stream/LongPipeline$StatelessOp<TE_IN;>;"
    .local p1, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p3}, Lj$/util/stream/LongPipeline;-><init>(Lj$/util/stream/AbstractPipeline;I)V

    .line 610
    nop

    .line 611
    return-void
.end method


# virtual methods
.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 598
    .local p0, "this":Lj$/util/stream/LongPipeline$StatelessOp;, "Ljava/util/stream/LongPipeline$StatelessOp<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/LongPipeline;->iterator()Lj$/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator;
    .locals 0

    .line 598
    .local p0, "this":Lj$/util/stream/LongPipeline$StatelessOp;, "Ljava/util/stream/LongPipeline$StatelessOp<TE_IN;>;"
    invoke-super {p0, p1}, Lj$/util/stream/LongPipeline;->lazySpliterator(Ljava/util/function/Supplier;)Lj$/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method final opIsStateful()Z
    .locals 1

    .line 615
    .local p0, "this":Lj$/util/stream/LongPipeline$StatelessOp;, "Ljava/util/stream/LongPipeline$StatelessOp<TE_IN;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic parallel()Lj$/util/stream/LongStream;
    .locals 1

    .line 598
    .local p0, "this":Lj$/util/stream/LongPipeline$StatelessOp;, "Ljava/util/stream/LongPipeline$StatelessOp<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/LongPipeline;->parallel()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/LongStream;

    return-object v0
.end method

.method public bridge synthetic sequential()Lj$/util/stream/LongStream;
    .locals 1

    .line 598
    .local p0, "this":Lj$/util/stream/LongPipeline$StatelessOp;, "Ljava/util/stream/LongPipeline$StatelessOp<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/LongPipeline;->sequential()Lj$/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/LongStream;

    return-object v0
.end method

.method public bridge synthetic spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 598
    .local p0, "this":Lj$/util/stream/LongPipeline$StatelessOp;, "Ljava/util/stream/LongPipeline$StatelessOp<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/LongPipeline;->spliterator()Lj$/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unordered()Lj$/util/stream/BaseStream;
    .locals 1

    .line 598
    .local p0, "this":Lj$/util/stream/LongPipeline$StatelessOp;, "Ljava/util/stream/LongPipeline$StatelessOp<TE_IN;>;"
    invoke-super {p0}, Lj$/util/stream/LongPipeline;->unordered()Lj$/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method
