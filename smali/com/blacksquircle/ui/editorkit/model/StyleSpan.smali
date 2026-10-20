.class public final Lcom/blacksquircle/ui/editorkit/model/StyleSpan;
.super Ljava/lang/Object;
.source "StyleSpan.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0015\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J;\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/model/StyleSpan;",
        "",
        "color",
        "",
        "bold",
        "",
        "italic",
        "underline",
        "strikethrough",
        "(IZZZZ)V",
        "getBold",
        "()Z",
        "getColor",
        "()I",
        "getItalic",
        "getStrikethrough",
        "getUnderline",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
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
.field private final bold:Z

.field private final color:I

.field private final italic:Z

.field private final strikethrough:Z

.field private final underline:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZZZZ)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "bold"    # Z
    .param p3, "italic"    # Z
    .param p4, "underline"    # Z
    .param p5, "strikethrough"    # Z

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->color:I

    .line 25
    iput-boolean p2, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->bold:Z

    .line 26
    iput-boolean p3, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->italic:Z

    .line 27
    iput-boolean p4, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->underline:Z

    .line 28
    iput-boolean p5, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->strikethrough:Z

    .line 22
    return-void
.end method

.method public synthetic constructor <init>(IZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    .line 22
    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 24
    const/4 p1, -0x1

    .line 22
    :cond_0
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_1

    .line 25
    const/4 p7, 0x0

    goto :goto_0

    .line 22
    :cond_1
    move p7, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 26
    const/4 v1, 0x0

    goto :goto_1

    .line 22
    :cond_2
    move v1, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    .line 27
    const/4 v2, 0x0

    goto :goto_2

    .line 22
    :cond_3
    move v2, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    .line 28
    goto :goto_3

    .line 22
    :cond_4
    move v0, p5

    :goto_3
    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v1

    move p6, v2

    move p7, v0

    invoke-direct/range {p2 .. p7}, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;-><init>(IZZZZ)V

    .line 29
    return-void
.end method

.method public static synthetic copy$default(Lcom/blacksquircle/ui/editorkit/model/StyleSpan;IZZZZILjava/lang/Object;)Lcom/blacksquircle/ui/editorkit/model/StyleSpan;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->color:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->bold:Z

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->italic:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->underline:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->strikethrough:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->copy(IZZZZ)Lcom/blacksquircle/ui/editorkit/model/StyleSpan;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->color:I

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->bold:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->italic:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->underline:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->strikethrough:Z

    return v0
.end method

.method public final copy(IZZZZ)Lcom/blacksquircle/ui/editorkit/model/StyleSpan;
    .locals 7

    new-instance v6, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;-><init>(IZZZZ)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;

    iget v3, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->color:I

    iget v4, v1, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->color:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->bold:Z

    iget-boolean v4, v1, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->bold:Z

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->italic:Z

    iget-boolean v4, v1, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->italic:Z

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-boolean v3, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->underline:Z

    iget-boolean v4, v1, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->underline:Z

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget-boolean v3, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->strikethrough:Z

    iget-boolean v1, v1, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->strikethrough:Z

    if-eq v3, v1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBold()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->bold:Z

    return v0
.end method

.method public final getColor()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->color:I

    return v0
.end method

.method public final getItalic()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->italic:Z

    return v0
.end method

.method public final getStrikethrough()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->strikethrough:Z

    return v0
.end method

.method public final getUnderline()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->underline:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->color:I

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->bold:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->italic:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->underline:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->strikethrough:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->color:I

    iget-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->bold:Z

    iget-boolean v2, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->italic:Z

    iget-boolean v3, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->underline:Z

    iget-boolean v4, p0, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;->strikethrough:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StyleSpan(color="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", bold="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", italic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", underline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strikethrough="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
