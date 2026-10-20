.class public final Lcom/blacksquircle/ui/editorkit/model/FindResult;
.super Ljava/lang/Object;
.source "FindResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/model/FindResult;",
        "",
        "start",
        "",
        "end",
        "(II)V",
        "getEnd",
        "()I",
        "setEnd",
        "(I)V",
        "getStart",
        "setStart",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "editorkit_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private end:I

.field private start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/blacksquircle/ui/editorkit/model/FindResult;->start:I

    iput p2, p0, Lcom/blacksquircle/ui/editorkit/model/FindResult;->end:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/blacksquircle/ui/editorkit/model/FindResult;IIILjava/lang/Object;)Lcom/blacksquircle/ui/editorkit/model/FindResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/blacksquircle/ui/editorkit/model/FindResult;->start:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/blacksquircle/ui/editorkit/model/FindResult;->end:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->copy(II)Lcom/blacksquircle/ui/editorkit/model/FindResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/blacksquircle/ui/editorkit/model/FindResult;->start:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/blacksquircle/ui/editorkit/model/FindResult;->end:I

    return v0
.end method

.method public final copy(II)Lcom/blacksquircle/ui/editorkit/model/FindResult;
    .locals 1

    new-instance v0, Lcom/blacksquircle/ui/editorkit/model/FindResult;

    invoke-direct {v0, p1, p2}, Lcom/blacksquircle/ui/editorkit/model/FindResult;-><init>(II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/blacksquircle/ui/editorkit/model/FindResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/model/FindResult;

    iget v3, p0, Lcom/blacksquircle/ui/editorkit/model/FindResult;->start:I

    iget v4, v1, Lcom/blacksquircle/ui/editorkit/model/FindResult;->start:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/blacksquircle/ui/editorkit/model/FindResult;->end:I

    iget v1, v1, Lcom/blacksquircle/ui/editorkit/model/FindResult;->end:I

    if-eq v3, v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getEnd()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/blacksquircle/ui/editorkit/model/FindResult;->end:I

    return v0
.end method

.method public final getStart()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/blacksquircle/ui/editorkit/model/FindResult;->start:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/blacksquircle/ui/editorkit/model/FindResult;->start:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/blacksquircle/ui/editorkit/model/FindResult;->end:I

    add-int/2addr v1, v2

    return v1
.end method

.method public final setEnd(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 19
    iput p1, p0, Lcom/blacksquircle/ui/editorkit/model/FindResult;->end:I

    return-void
.end method

.method public final setStart(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 19
    iput p1, p0, Lcom/blacksquircle/ui/editorkit/model/FindResult;->start:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/blacksquircle/ui/editorkit/model/FindResult;->start:I

    iget v1, p0, Lcom/blacksquircle/ui/editorkit/model/FindResult;->end:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FindResult(start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", end="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
