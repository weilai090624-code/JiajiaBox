.class public abstract Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;
.super Lcom/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;
.source "LineNumbersEditText.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000K\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f*\u0001\u0019\u0008&\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u0007H\u0014J\u0012\u0010\u001f\u001a\u00020\u001c2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0014J*\u0010\"\u001a\u00020\u001c2\u0008\u0010 \u001a\u0004\u0018\u00010\u00172\u0006\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u0007H\u0014J*\u0010&\u001a\u00020\u001c2\u0008\u0010 \u001a\u0004\u0018\u00010\u00172\u0006\u0010#\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0007H\u0014J \u0010(\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u0007H\u0014J\u0010\u0010*\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0007H\u0014J \u0010+\u001a\u00020\u001c2\u0006\u0010,\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u00072\u0006\u0010.\u001a\u00020\u0017H\u0002J\u0010\u0010/\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u0017H\u0016R$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001a\u00a8\u00060"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;",
        "Lcom/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "value",
        "",
        "softKeyboard",
        "getSoftKeyboard",
        "()Z",
        "setSoftKeyboard",
        "(Z)V",
        "structure",
        "Lcom/blacksquircle/ui/language/base/model/TextStructure;",
        "getStructure",
        "()Lcom/blacksquircle/ui/language/base/model/TextStructure;",
        "textChangeEnd",
        "textChangeStart",
        "textChangedNewText",
        "",
        "textWatcher",
        "com/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1",
        "Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;",
        "addLine",
        "",
        "lineNumber",
        "lineStart",
        "doAfterTextChanged",
        "text",
        "Landroid/text/Editable;",
        "doBeforeTextChanged",
        "start",
        "count",
        "after",
        "doOnTextChanged",
        "before",
        "processLine",
        "lineEnd",
        "removeLine",
        "replaceText",
        "newStart",
        "newEnd",
        "newText",
        "setTextContent",
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
.field private softKeyboard:Z

.field private final structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

.field private textChangeEnd:I

.field private textChangeStart:I

.field private textChangedNewText:Ljava/lang/CharSequence;

.field private final textWatcher:Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/blacksquircle/ui/editorkit/widget/internal/ScrollableEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/TextStructure;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    .line 48
    new-instance v0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;

    invoke-direct {v0, p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;-><init>(Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;)V

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textWatcher:Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;

    .line 64
    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textChangedNewText:Ljava/lang/CharSequence;

    .line 66
    nop

    .line 67
    const v0, 0x800033

    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->setGravity(I)V

    .line 68
    const v0, 0xa0001

    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->setInputType(I)V

    .line 71
    nop

    .line 30
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 30
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 32
    const/4 p2, 0x0

    .line 30
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 33
    const p3, 0x101006b

    .line 30
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    return-void
.end method

.method private final replaceText(IILjava/lang/CharSequence;)V
    .locals 9
    .param p1, "newStart"    # I
    .param p2, "newEnd"    # I
    .param p3, "newText"    # Ljava/lang/CharSequence;

    .line 122
    if-gez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 123
    .local v0, "start":I
    :goto_0
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le p2, v1, :cond_1

    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, p2

    .line 124
    .local v1, "end":I
    :goto_1
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v3, v1, v0

    sub-int/2addr v2, v3

    .line 125
    .local v2, "newCharCount":I
    iget-object v3, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    invoke-virtual {v3, v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineForIndex(I)I

    move-result v3

    .line 126
    .local v3, "startLine":I
    move v4, v0

    .local v4, "i":I
    :goto_2
    const/16 v5, 0xa

    if-ge v4, v1, :cond_3

    .line 127
    iget-object v6, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    invoke-virtual {v6}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_2

    .line 128
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->removeLine(I)V

    .line 126
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 131
    .end local v4    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    iget-object v6, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    invoke-virtual {v6, v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineForIndex(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6, v2}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->shiftIndexes(II)V

    .line 132
    const/4 v4, 0x0

    .restart local v4    # "i":I
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    :goto_3
    if-ge v4, v6, :cond_5

    .line 133
    invoke-interface {p3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_4

    .line 134
    iget-object v7, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    add-int v8, v0, v4

    invoke-virtual {v7, v8}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineForIndex(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int v8, v0, v4

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->addLine(II)V

    .line 132
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 137
    .end local v4    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    invoke-virtual {v4}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 138
    .local v4, "editable":Ljava/lang/CharSequence;
    instance-of v5, v4, Landroid/text/Editable;

    if-eqz v5, :cond_6

    .line 139
    move-object v5, v4

    check-cast v5, Landroid/text/Editable;

    invoke-interface {v5, v0, v1, p3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 141
    :cond_6
    return-void
.end method


# virtual methods
.method protected addLine(II)V
    .locals 1
    .param p1, "lineNumber"    # I
    .param p2, "lineStart"    # I

    .line 102
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    invoke-virtual {v0, p1, p2}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->add(II)V

    return-void
.end method

.method protected doAfterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "text"    # Landroid/text/Editable;

    .line 97
    return-void
.end method

.method protected doBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 79
    iput p2, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textChangeStart:I

    .line 80
    add-int v0, p2, p3

    iput v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textChangeEnd:I

    .line 81
    return-void
.end method

.method protected doOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 84
    if-eqz p1, :cond_0

    add-int v0, p2, p4

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    :cond_1
    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textChangedNewText:Ljava/lang/CharSequence;

    .line 85
    iget v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textChangeStart:I

    iget v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textChangeEnd:I

    iget-object v2, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textChangedNewText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v2}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->replaceText(IILjava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    iget v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textChangeStart:I

    invoke-virtual {v0, v1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineForIndex(I)I

    move-result v0

    .line 87
    .local v0, "startLine":I
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    iget v2, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textChangeStart:I

    iget-object v3, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textChangedNewText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineForIndex(I)I

    move-result v1

    .line 88
    .local v1, "endLine":I
    move v2, v0

    .local v2, "currentLine":I
    if-gt v2, v1, :cond_3

    .line 89
    :goto_0
    iget-object v3, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    invoke-virtual {v3, v2}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForStartOfLine(I)I

    move-result v3

    .line 90
    .local v3, "lineStart":I
    iget-object v4, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    invoke-virtual {v4, v2}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForEndOfLine(I)I

    move-result v4

    .line 91
    .local v4, "lineEnd":I
    if-gt v3, v4, :cond_2

    .line 92
    invoke-virtual {p0, v2, v3, v4}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->processLine(III)V

    .line 88
    .end local v3    # "lineStart":I
    .end local v4    # "lineEnd":I
    :cond_2
    if-eq v2, v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "currentLine":I
    :cond_3
    return-void
.end method

.method public final getSoftKeyboard()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->softKeyboard:Z

    return v0
.end method

.method public final getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    return-object v0
.end method

.method protected processLine(III)V
    .locals 0
    .param p1, "lineNumber"    # I
    .param p2, "lineStart"    # I
    .param p3, "lineEnd"    # I

    .line 99
    return-void
.end method

.method protected removeLine(I)V
    .locals 1
    .param p1, "lineNumber"    # I

    .line 105
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    invoke-virtual {v0, p1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->remove(I)V

    return-void
.end method

.method public final setSoftKeyboard(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->softKeyboard:Z

    .line 39
    if-eqz p1, :cond_0

    .line 40
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :cond_0
    const/high16 v0, 0x10000000

    .line 39
    :goto_0
    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->setImeOptions(I)V

    .line 44
    return-void
.end method

.method public setTextContent(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textWatcher:Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;

    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    nop

    .line 110
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->replaceText(IILjava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    const-string v2, ""

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v3, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->structure:Lcom/blacksquircle/ui/language/base/model/TextStructure;

    invoke-virtual {v3}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v3, v2}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->replaceText(IILjava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->textWatcher:Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText$textWatcher$1;

    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    return-void
.end method
