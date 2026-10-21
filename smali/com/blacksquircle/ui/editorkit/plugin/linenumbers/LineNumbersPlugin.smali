.class public final Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;
.super Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
.source "LineNumbersPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 +2\u00020\u0001:\u0001+B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0012\u0010\u001a\u001a\u00020\u00172\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0016J\u0012\u0010#\u001a\u00020\u00172\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020&H\u0016J\u0012\u0010\'\u001a\u00020\u00172\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u0008\u0010*\u001a\u00020\u0017H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;",
        "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
        "()V",
        "gutterCurrentLineNumberPaint",
        "Landroid/graphics/Paint;",
        "gutterDigitCount",
        "",
        "gutterDividerPaint",
        "gutterMargin",
        "gutterPaint",
        "gutterTextPaint",
        "gutterWidth",
        "highlightCurrentLine",
        "",
        "getHighlightCurrentLine",
        "()Z",
        "setHighlightCurrentLine",
        "(Z)V",
        "lineNumbers",
        "getLineNumbers",
        "setLineNumbers",
        "selectedLinePaint",
        "afterTextChanged",
        "",
        "text",
        "Landroid/text/Editable;",
        "drawBehind",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onAttached",
        "editText",
        "Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;",
        "onColorSchemeChanged",
        "colorScheme",
        "Lcom/blacksquircle/ui/editorkit/model/ColorScheme;",
        "onDraw",
        "setTextSize",
        "size",
        "",
        "setTypeface",
        "tf",
        "Landroid/graphics/Typeface;",
        "updateGutter",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;

.field public static final PLUGIN_ID:Ljava/lang/String; = "line-numbers-1141"


# instance fields
.field private final gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

.field private gutterDigitCount:I

.field private final gutterDividerPaint:Landroid/graphics/Paint;

.field private final gutterMargin:I

.field private final gutterPaint:Landroid/graphics/Paint;

.field private final gutterTextPaint:Landroid/graphics/Paint;

.field private gutterWidth:I

.field private highlightCurrentLine:Z

.field private lineNumbers:Z

.field private final selectedLinePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->Companion:Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 31
    const-string v0, "line-numbers-1141"

    invoke-direct {p0, v0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;-><init>(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->lineNumbers:Z

    .line 34
    iput-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->highlightCurrentLine:Z

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->selectedLinePaint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDividerPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    .line 42
    sget-object v0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->Companion:Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;

    const/4 v1, 0x4

    # invokes: Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;->getDp(I)I
    invoke-static {v0, v1}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;->access$getDp(Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin$Companion;I)I

    move-result v0

    iput v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterMargin:I

    .line 31
    return-void
.end method

.method private final updateGutter()V
    .registers 7

    .line 175
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->lineNumbers:Z

    if-eqz v0, :cond_69

    .line 176
    const/4 v0, 0x3

    .line 177
    .local v0, "count":I
    const/4 v1, 0x0

    .line 178
    .local v1, "widestNumber":I
    const/4 v2, 0x0

    .line 180
    .local v2, "widestWidth":F
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDigitCount:I

    .line 181
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    const/16 v4, 0xa

    if-ge v3, v4, :cond_37

    .line 182
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 183
    .local v4, "width":F
    cmpl-float v5, v4, v2

    if-lez v5, :cond_34

    .line 184
    move v1, v3

    .line 185
    move v2, v4

    .line 181
    .end local v4    # "width":F
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 188
    .end local v3    # "i":I
    :cond_37
    iget v3, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDigitCount:I

    if-lt v3, v0, :cond_3d

    .line 189
    iget v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDigitCount:I

    .line 191
    :cond_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_43
    if-ge v4, v0, :cond_4f

    .line 193
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 195
    .end local v4    # "i":I
    :cond_4f
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    .line 196
    iget v4, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    iget v5, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    .line 198
    .end local v0    # "count":I
    .end local v1    # "widestNumber":I
    .end local v2    # "widestWidth":F
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    :cond_69
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getPaddingStart()I

    move-result v0

    iget v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    iget v2, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterMargin:I

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_96

    .line 199
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    .line 200
    iget v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    iget v2, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterMargin:I

    add-int/2addr v1, v2

    .line 201
    iget v2, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterMargin:I

    .line 202
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getPaddingEnd()I

    move-result v3

    .line 203
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getPaddingBottom()I

    move-result v4

    .line 199
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setPadding(IIII)V

    .line 206
    :cond_96
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "text"    # Landroid/text/Editable;

    .line 158
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->afterTextChanged(Landroid/text/Editable;)V

    .line 159
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->updateGutter()V

    .line 160
    return-void
.end method

.method public drawBehind(Landroid/graphics/Canvas;)V
    .registers 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 83
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->drawBehind(Landroid/graphics/Canvas;)V

    .line 84
    iget-boolean v1, v0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->highlightCurrentLine:Z

    if-eqz v1, :cond_b5

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getSelectionStart()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineForIndex(I)I

    move-result v1

    .line 86
    .local v1, "currentLineStart":I
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getSelectionEnd()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineForIndex(I)I

    move-result v2

    if-ne v1, v2, :cond_b5

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_36

    return-void

    .line 89
    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForStartOfLine(I)I

    move-result v2

    .line 90
    .local v2, "selectedLineStartIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForEndOfLine(I)I

    move-result v3

    .line 91
    .local v3, "selectedLineEndIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 92
    .local v4, "topVisualLine":I
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 94
    .local v5, "bottomVisualLine":I
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    .line 95
    .local v6, "lineTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    .line 96
    .local v7, "lineBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getLayout()Landroid/text/Layout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/Layout;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    .line 98
    .local v8, "width":I
    if-eqz p1, :cond_b5

    .line 99
    iget v9, v0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    int-to-float v11, v9

    .line 100
    int-to-float v12, v6

    .line 101
    int-to-float v13, v8

    .line 102
    int-to-float v14, v7

    .line 103
    iget-object v15, v0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->selectedLinePaint:Landroid/graphics/Paint;

    .line 98
    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 107
    .end local v1    # "currentLineStart":I
    .end local v2    # "selectedLineStartIndex":I
    .end local v3    # "selectedLineEndIndex":I
    .end local v4    # "topVisualLine":I
    .end local v5    # "bottomVisualLine":I
    .end local v6    # "lineTop":I
    .end local v7    # "lineBottom":I
    .end local v8    # "width":I
    :cond_b5
    invoke-direct/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->updateGutter()V

    .line 108
    return-void
.end method

.method public final getHighlightCurrentLine()Z
    .registers 2

    .line 34
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->highlightCurrentLine:Z

    return v0
.end method

.method public final getLineNumbers()Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->lineNumbers:Z

    return v0
.end method

.method public onAttached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .registers 4
    .param p1, "editText"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onAttached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    .line 48
    const-string v0, "line-numbers-1141"

    const-string v1, "LineNumbers plugin loaded successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method public onColorSchemeChanged(Lcom/blacksquircle/ui/editorkit/model/ColorScheme;)V
    .registers 7
    .param p1, "colorScheme"    # Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    const-string v0, "colorScheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onColorSchemeChanged(Lcom/blacksquircle/ui/editorkit/model/ColorScheme;)V

    .line 53
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->selectedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getSelectedLineColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->selectedLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->selectedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 57
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getGutterColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 61
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getGutterDividerColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 64
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDividerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDividerPaint:Landroid/graphics/Paint;

    const v2, 0x40266666    # 2.6f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    .line 68
    nop

    .line 67
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 68
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getTextSize()F

    move-result v3

    .line 67
    mul-float v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getGutterCurrentLineNumberColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 72
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 74
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    .line 75
    nop

    .line 74
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->requireContext()Landroid/content/Context;

    move-result-object v3

    .line 75
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getTextSize()F

    move-result v4

    .line 74
    mul-float v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getGutterTextColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 79
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 80
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 111
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onDraw(Landroid/graphics/Canvas;)V

    .line 112
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->lineNumbers:Z

    if-eqz v0, :cond_10b

    .line 113
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineForIndex(I)I

    move-result v0

    .line 114
    .local v0, "currentLineStart":I
    if-eqz p1, :cond_4f

    .line 115
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getScrollX()I

    move-result v1

    int-to-float v3, v1

    .line 116
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getScrollY()I

    move-result v1

    int-to-float v4, v1

    .line 117
    iget v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v5, v1

    .line 118
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v6, v1

    .line 119
    iget-object v7, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterPaint:Landroid/graphics/Paint;

    .line 114
    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 121
    :cond_4f
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/blacksquircle/ui/editorkit/utils/ExtensionsKt;->getTopVisibleLine(Landroid/widget/TextView;)I

    move-result v1

    .line 122
    .local v1, "topVisibleLine":I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_5f

    add-int/lit8 v1, v1, -0x2

    .line 123
    goto :goto_60

    .line 125
    :cond_5f
    const/4 v1, 0x0

    .line 127
    :goto_60
    const/4 v3, -0x1

    .line 128
    .local v3, "prevLineNumber":I
    iget v4, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    iget v5, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterMargin:I

    div-int/2addr v5, v2

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getScrollX()I

    move-result v2

    add-int/2addr v4, v2

    .line 129
    .local v4, "textRight":I
    :goto_70
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/blacksquircle/ui/editorkit/utils/ExtensionsKt;->getBottomVisibleLine(Landroid/widget/TextView;)I

    move-result v2

    if-gt v1, v2, :cond_d0

    .line 130
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_87

    return-void

    .line 131
    :cond_87
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v2

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineForIndex(I)I

    move-result v2

    .line 132
    .local v2, "number":I
    if-eq v2, v3, :cond_cb

    .line 133
    if-eqz p1, :cond_cb

    .line 134
    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 135
    int-to-float v6, v4

    .line 136
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 137
    if-ne v2, v0, :cond_c6

    iget-boolean v8, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->highlightCurrentLine:Z

    if-eqz v8, :cond_c6

    .line 138
    iget-object v8, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    goto :goto_c8

    .line 140
    :cond_c6
    iget-object v8, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    .line 133
    :goto_c8
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 144
    :cond_cb
    move v3, v2

    .line 145
    nop

    .end local v2    # "number":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 147
    :cond_d0
    if-eqz p1, :cond_10b

    .line 148
    iget v2, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getScrollX()I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v6, v2

    .line 149
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getScrollY()I

    move-result v2

    int-to-float v7, v2

    .line 150
    iget v2, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterWidth:I

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getScrollX()I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v8, v2

    .line 151
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getHeight()I

    move-result v5

    add-int/2addr v2, v5

    int-to-float v9, v2

    .line 152
    iget-object v10, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterDividerPaint:Landroid/graphics/Paint;

    .line 147
    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 155
    .end local v0    # "currentLineStart":I
    .end local v1    # "topVisibleLine":I
    .end local v3    # "prevLineNumber":I
    .end local v4    # "textRight":I
    :cond_10b
    return-void
.end method

.method public final setHighlightCurrentLine(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 34
    iput-boolean p1, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->highlightCurrentLine:Z

    return-void
.end method

.method public final setLineNumbers(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->lineNumbers:Z

    return-void
.end method

.method public setTextSize(F)V
    .registers 4
    .param p1, "size"    # F

    .line 163
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->setTextSize(F)V

    .line 164
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 165
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 166
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .line 169
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->setTypeface(Landroid/graphics/Typeface;)V

    .line 170
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterCurrentLineNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 171
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/linenumbers/LineNumbersPlugin;->gutterTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 172
    return-void
.end method
