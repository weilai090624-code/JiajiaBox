.class final Lcom/google/common/collect/Count;
.super Ljava/lang/Object;
.source "Count.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private value:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    .line 33
    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 3
    .param p1, "delta"    # I

    .line 40
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/Count;->value:I

    .line 41
    return-void
.end method

.method public addAndGet(I)I
    .registers 3
    .param p1, "delta"    # I

    .line 44
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 64
    instance-of v0, p1, Lcom/google/common/collect/Count;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Count;

    iget v0, v0, Lcom/google/common/collect/Count;->value:I

    iget v1, p0, Lcom/google/common/collect/Count;->value:I

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public get()I
    .registers 2

    .line 36
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public getAndSet(I)I
    .registers 3
    .param p1, "newValue"    # I

    .line 52
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    .line 53
    .local v0, "result":I
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    .line 54
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    return v0
.end method

.method public set(I)V
    .registers 2
    .param p1, "newValue"    # I

    .line 48
    iput p1, p0, Lcom/google/common/collect/Count;->value:I

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 69
    iget v0, p0, Lcom/google/common/collect/Count;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
