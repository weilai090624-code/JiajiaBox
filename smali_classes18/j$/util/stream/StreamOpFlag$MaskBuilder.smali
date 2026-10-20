.class Lj$/util/stream/StreamOpFlag$MaskBuilder;
.super Ljava/lang/Object;
.source "StreamOpFlag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamOpFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaskBuilder"
.end annotation


# instance fields
.field final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lj$/util/stream/StreamOpFlag$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lj$/util/stream/StreamOpFlag$Type;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 390
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Lj$/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    .line 392
    return-void
.end method


# virtual methods
.method build()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lj$/util/stream/StreamOpFlag$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 412
    invoke-static {}, Lj$/util/stream/StreamOpFlag$Type;->values()[Lj$/util/stream/StreamOpFlag$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 413
    .local v4, "t":Lj$/util/stream/StreamOpFlag$Type;
    iget-object v5, p0, Lj$/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .end local v4    # "t":Lj$/util/stream/StreamOpFlag$Type;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 415
    :cond_0
    iget-object v0, p0, Lj$/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    return-object v0
.end method

.method clear(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;
    .locals 1
    .param p1, "t"    # Lj$/util/stream/StreamOpFlag$Type;

    .line 404
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->mask(Lj$/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v0

    return-object v0
.end method

.method mask(Lj$/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Lj$/util/stream/StreamOpFlag$MaskBuilder;
    .locals 1
    .param p1, "t"    # Lj$/util/stream/StreamOpFlag$Type;
    .param p2, "i"    # Ljava/lang/Integer;

    .line 395
    iget-object v0, p0, Lj$/util/stream/StreamOpFlag$MaskBuilder;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    return-object p0
.end method

.method set(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;
    .locals 1
    .param p1, "t"    # Lj$/util/stream/StreamOpFlag$Type;

    .line 400
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->mask(Lj$/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v0

    return-object v0
.end method

.method setAndClear(Lj$/util/stream/StreamOpFlag$Type;)Lj$/util/stream/StreamOpFlag$MaskBuilder;
    .locals 1
    .param p1, "t"    # Lj$/util/stream/StreamOpFlag$Type;

    .line 408
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lj$/util/stream/StreamOpFlag$MaskBuilder;->mask(Lj$/util/stream/StreamOpFlag$Type;Ljava/lang/Integer;)Lj$/util/stream/StreamOpFlag$MaskBuilder;

    move-result-object v0

    return-object v0
.end method
