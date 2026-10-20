.class public final Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;
.super Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
.source "BracketsHighlightPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000bH\u0016J\u0018\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u000bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;",
        "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
        "()V",
        "closedDelimiterSpan",
        "Landroid/text/style/BackgroundColorSpan;",
        "delimiters",
        "",
        "openDelimiterSpan",
        "checkMatchingBracket",
        "",
        "pos",
        "",
        "onAttached",
        "editText",
        "Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;",
        "onColorSchemeChanged",
        "colorScheme",
        "Lcom/blacksquircle/ui/editorkit/model/ColorScheme;",
        "onSelectionChanged",
        "selStart",
        "selEnd",
        "showBracket",
        "i",
        "j",
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
.field public static final Companion:Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin$Companion;

.field public static final PLUGIN_ID:Ljava/lang/String; = "brackets-highlight-1180"


# instance fields
.field private closedDelimiterSpan:Landroid/text/style/BackgroundColorSpan;

.field private final delimiters:[C

.field private openDelimiterSpan:Landroid/text/style/BackgroundColorSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->Companion:Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 27
    const-string v0, "brackets-highlight-1180"

    invoke-direct {p0, v0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;-><init>(Ljava/lang/String;)V

    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->delimiters:[C

    .line 31
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x777778

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->openDelimiterSpan:Landroid/text/style/BackgroundColorSpan;

    .line 32
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->closedDelimiterSpan:Landroid/text/style/BackgroundColorSpan;

    .line 27
    return-void

    :array_0
    .array-data 2
        0x7bs
        0x5bs
        0x28s
        0x3cs
        0x7ds
        0x5ds
        0x29s
        0x3es
    .end array-data
.end method

.method private final checkMatchingBracket(I)V
    .locals 9
    .param p1, "pos"    # I

    .line 53
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->openDelimiterSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->closedDelimiterSpan:Landroid/text/style/BackgroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 56
    if-lez p1, :cond_a

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gt p1, v0, :cond_a

    .line 57
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 58
    .local v0, "c1":C
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->delimiters:[C

    array-length v2, v2

    :goto_0
    if-ge v1, v2, :cond_a

    .line 59
    iget-object v3, p0, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->delimiters:[C

    aget-char v3, v3, v1

    if-ne v3, v0, :cond_9

    .line 60
    iget-object v3, p0, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->delimiters:[C

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    .line 61
    .local v3, "half":I
    add-int/lit8 v4, v3, -0x1

    if-gt v1, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 62
    .local v4, "open":Z
    :goto_1
    iget-object v5, p0, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->delimiters:[C

    add-int v6, v1, v3

    iget-object v7, p0, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->delimiters:[C

    array-length v7, v7

    rem-int/2addr v6, v7

    aget-char v5, v5, v6

    .line 63
    .local v5, "c2":C
    move v6, p1

    .line 64
    .local v6, "k":I
    if-eqz v4, :cond_5

    .line 65
    const/4 v7, 0x1

    .line 66
    .local v7, "nob":I
    :goto_2
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    if-ge v6, v8, :cond_9

    .line 67
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    if-ne v8, v5, :cond_2

    .line 68
    add-int/lit8 v7, v7, -0x1

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    if-ne v8, v0, :cond_3

    .line 71
    add-int/lit8 v7, v7, 0x1

    .line 73
    :cond_3
    if-nez v7, :cond_4

    .line 74
    add-int/lit8 v8, p1, -0x1

    invoke-direct {p0, v8, v6}, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->showBracket(II)V

    .line 75
    goto :goto_4

    .line 77
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 80
    .end local v7    # "nob":I
    :cond_5
    const/4 v7, 0x1

    .local v7, "ncb":I
    add-int/lit8 v6, v6, -0x2

    .line 81
    nop

    .line 82
    :goto_3
    if-ltz v6, :cond_9

    .line 83
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    if-ne v8, v5, :cond_6

    .line 84
    add-int/lit8 v7, v7, -0x1

    .line 86
    :cond_6
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    if-ne v8, v0, :cond_7

    .line 87
    add-int/lit8 v7, v7, 0x1

    .line 89
    :cond_7
    if-nez v7, :cond_8

    .line 90
    add-int/lit8 v8, p1, -0x1

    invoke-direct {p0, v6, v8}, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->showBracket(II)V

    .line 91
    goto :goto_4

    .line 93
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 58
    .end local v3    # "half":I
    .end local v4    # "open":Z
    .end local v5    # "c2":C
    .end local v6    # "k":I
    .end local v7    # "ncb":I
    :cond_9
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 99
    .end local v0    # "c1":C
    .end local v1    # "i":I
    :cond_a
    return-void
.end method

.method private final showBracket(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 102
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->openDelimiterSpan:Landroid/text/style/BackgroundColorSpan;

    add-int/lit8 v2, p1, 0x1

    const/16 v3, 0x21

    invoke-interface {v0, v1, p1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 103
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->closedDelimiterSpan:Landroid/text/style/BackgroundColorSpan;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v0, v1, p2, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 104
    return-void
.end method


# virtual methods
.method public onAttached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 2
    .param p1, "editText"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onAttached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    .line 36
    const-string v0, "brackets-highlight-1180"

    const-string v1, "BracketsHighlight plugin loaded successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public onColorSchemeChanged(Lcom/blacksquircle/ui/editorkit/model/ColorScheme;)V
    .locals 2
    .param p1, "colorScheme"    # Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    const-string v0, "colorScheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onColorSchemeChanged(Lcom/blacksquircle/ui/editorkit/model/ColorScheme;)V

    .line 41
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getDelimiterBackgroundColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->openDelimiterSpan:Landroid/text/style/BackgroundColorSpan;

    .line 42
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getDelimiterBackgroundColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->closedDelimiterSpan:Landroid/text/style/BackgroundColorSpan;

    .line 43
    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 0
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .line 46
    invoke-super {p0, p1, p2}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onSelectionChanged(II)V

    .line 47
    if-ne p1, p2, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/delimiters/BracketsHighlightPlugin;->checkMatchingBracket(I)V

    .line 50
    :cond_0
    return-void
.end method
