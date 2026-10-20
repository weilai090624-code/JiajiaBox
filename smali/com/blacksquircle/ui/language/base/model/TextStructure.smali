.class public final Lcom/blacksquircle/ui/language/base/model/TextStructure;
.super Ljava/lang/Object;
.source "TextStructure.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001:\u0001\u001dB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006J\u0006\u0010\u0012\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006J\u000e\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006J\u000e\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006J\u000e\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0006J\u000e\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006J\u000e\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0006J\u0016\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/blacksquircle/ui/language/base/model/TextStructure;",
        "",
        "text",
        "",
        "(Ljava/lang/CharSequence;)V",
        "lineCount",
        "",
        "getLineCount",
        "()I",
        "lines",
        "",
        "Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;",
        "getText",
        "()Ljava/lang/CharSequence;",
        "add",
        "",
        "line",
        "index",
        "clear",
        "getIndexForEndOfLine",
        "lineNumber",
        "getIndexForLine",
        "getIndexForStartOfLine",
        "getLine",
        "getLineForIndex",
        "remove",
        "shiftIndexes",
        "fromLine",
        "shiftBy",
        "Line",
        "language-base"
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
.field private final lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;",
            ">;"
        }
    .end annotation
.end field

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/blacksquircle/ui/language/base/model/TextStructure;->text:Ljava/lang/CharSequence;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/blacksquircle/ui/language/base/model/TextStructure;->lines:Ljava/util/List;

    .line 26
    nop

    .line 27
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/TextStructure;->lines:Ljava/util/List;

    new-instance v1, Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    nop

    .line 19
    return-void
.end method


# virtual methods
.method public final add(II)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "index"    # I

    .line 31
    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/TextStructure;->lines:Ljava/util/List;

    new-instance v1, Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;

    invoke-direct {v1, p2}, Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 34
    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/TextStructure;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/TextStructure;->lines:Ljava/util/List;

    new-instance v1, Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public final getIndexForEndOfLine(I)I
    .locals 1
    .param p1, "lineNumber"    # I

    .line 76
    invoke-virtual {p0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/TextStructure;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0

    .line 79
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForLine(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getIndexForLine(I)I
    .locals 1
    .param p1, "line"    # I

    .line 64
    invoke-virtual {p0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 65
    const/4 v0, -0x1

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/TextStructure;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;->getStart()I

    move-result v0

    .line 64
    :goto_0
    return v0
.end method

.method public final getIndexForStartOfLine(I)I
    .locals 1
    .param p1, "lineNumber"    # I

    .line 72
    invoke-virtual {p0, p1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForLine(I)I

    move-result v0

    return v0
.end method

.method public final getLine(I)Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;
    .locals 2
    .param p1, "line"    # I

    .line 99
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/TextStructure;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;-><init>(I)V

    return-object v0
.end method

.method public final getLineCount()I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/TextStructure;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getLineForIndex(I)I
    .locals 4
    .param p1, "index"    # I

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "first":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 85
    .local v1, "last":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 86
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 87
    .local v2, "mid":I
    invoke-virtual {p0, v2}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForLine(I)I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 88
    move v1, v2

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0, v2}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForLine(I)I

    move-result v3

    if-le p1, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForLine(I)I

    move-result v3

    if-ge p1, v3, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "mid":I
    goto :goto_0

    .line 90
    .restart local v2    # "mid":I
    :cond_2
    :goto_1
    return v2

    .line 95
    .end local v2    # "mid":I
    :cond_3
    invoke-virtual {p0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/TextStructure;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final remove(I)V
    .locals 1
    .param p1, "line"    # I

    .line 37
    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/model/TextStructure;->lines:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 40
    :cond_0
    return-void
.end method

.method public final shiftIndexes(II)V
    .locals 4
    .param p1, "fromLine"    # I
    .param p2, "shiftBy"    # I

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_3

    .line 49
    move v0, p1

    .line 50
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 51
    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForLine(I)I

    move-result v2

    add-int/2addr v2, p2

    .line 52
    .local v2, "newIndex":I
    if-lez v0, :cond_2

    if-lez v2, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->remove(I)V

    .line 56
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 53
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/blacksquircle/ui/language/base/model/TextStructure;->lines:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;

    invoke-virtual {v3, v2}, Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;->setStart(I)V

    .line 58
    :goto_2
    nop

    .end local v2    # "newIndex":I
    add-int/2addr v0, v1

    goto :goto_0

    .line 61
    .end local v0    # "i":I
    :cond_3
    return-void
.end method
