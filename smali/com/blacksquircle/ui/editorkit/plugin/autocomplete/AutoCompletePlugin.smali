.class public final Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;
.super Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
.source "AutoCompletePlugin.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\r\n\u0002\u0008\r\u0018\u0000 +2\u00020\u0001:\u0001+B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u000bH\u0002J\u0012\u0010\u0014\u001a\u00020\r2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\rH\u0002J(\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000bH\u0016J*\u0010\u001d\u001a\u00020\r2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u000bH\u0016J \u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\u000bH\u0016J\u0010\u0010\'\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u000bH\u0016J\u0010\u0010(\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010)\u001a\u00020\rH\u0016J\u0008\u0010*\u001a\u00020\rH\u0002R(\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006,"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;",
        "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
        "()V",
        "value",
        "Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;",
        "suggestionAdapter",
        "getSuggestionAdapter",
        "()Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;",
        "setSuggestionAdapter",
        "(Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;)V",
        "getVisibleHeight",
        "",
        "onAttached",
        "",
        "editText",
        "Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;",
        "onDetached",
        "onDropDownSizeChange",
        "width",
        "height",
        "onLanguageChanged",
        "language",
        "Lcom/blacksquircle/ui/language/base/Language;",
        "onPopupChangePosition",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "onTextChanged",
        "text",
        "",
        "start",
        "before",
        "count",
        "processLine",
        "lineNumber",
        "lineStart",
        "lineEnd",
        "removeLine",
        "setTextContent",
        "showDropDown",
        "updateAdapter",
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
.field public static final Companion:Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin$Companion;

.field public static final PLUGIN_ID:Ljava/lang/String; = "autocomplete-6743"


# instance fields
.field private suggestionAdapter:Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->Companion:Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    const-string v0, "autocomplete-6743"

    invoke-direct {p0, v0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final getVisibleHeight()I
    .locals 3

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 127
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 128
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private final onDropDownSizeChange(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 102
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    mul-int/lit8 v1, p1, 0x1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setDropDownWidth(I)V

    .line 103
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setDropDownHeight(I)V

    .line 104
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->onPopupChangePosition()V

    .line 105
    return-void
.end method

.method private final onPopupChangePosition()V
    .locals 9

    .line 108
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 109
    .local v0, "layout":Landroid/text/Layout;
    :cond_0
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 110
    .local v1, "line":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getSelectionStart()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    .line 111
    .local v2, "x":F
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v3

    .line 113
    .local v3, "y":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getPaddingStart()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    .line 114
    .local v4, "offsetHorizontal":F
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v5

    float-to-int v6, v4

    invoke-virtual {v5, v6}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setDropDownHorizontalOffset(I)V

    .line 116
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getScrollY()I

    move-result v5

    sub-int v5, v3, v5

    .line 117
    .local v5, "offsetVertical":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getDropDownHeight()I

    move-result v6

    add-int/2addr v6, v5

    .line 118
    .local v6, "temp":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v7

    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getVisibleHeight()I

    move-result v8

    if-le v6, v8, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getDropDownHeight()I

    move-result v8

    sub-int v8, v5, v8

    goto :goto_0

    .line 121
    :cond_1
    move v8, v5

    .line 118
    :goto_0
    invoke-virtual {v7, v8}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setDropDownVerticalOffset(I)V

    .line 123
    return-void
.end method

.method private final updateAdapter()V
    .locals 4

    .line 91
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->suggestionAdapter:Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    if-eqz v0, :cond_1

    .local v0, "adapter":Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;
    const/4 v1, 0x0

    .line 93
    .local v1, "$i$a$-let-AutoCompletePlugin$updateAdapter$1":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getLanguage()Lcom/blacksquircle/ui/language/base/Language;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/blacksquircle/ui/language/base/Language;->getProvider()Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;

    move-result-object v2

    if-eqz v2, :cond_0

    .local v2, "provider":Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;
    const/4 v3, 0x0

    .line 94
    .local v3, "$i$a$-let-AutoCompletePlugin$updateAdapter$1$1":I
    invoke-virtual {v0, v2}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->setSuggestionProvider(Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;)V

    .line 95
    nop

    .line 93
    .end local v2    # "provider":Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;
    .end local v3    # "$i$a$-let-AutoCompletePlugin$updateAdapter$1$1":I
    :cond_0
    nop

    .line 96
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Landroid/widget/ListAdapter;

    invoke-virtual {v2, v3}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    nop

    .line 92
    .end local v0    # "adapter":Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;
    .end local v1    # "$i$a$-let-AutoCompletePlugin$updateAdapter$1":I
    nop

    .line 99
    :cond_1
    return-void
.end method


# virtual methods
.method public final getSuggestionAdapter()Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->suggestionAdapter:Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    return-object v0
.end method

.method public onAttached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 2
    .param p1, "editText"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onAttached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    .line 35
    new-instance v0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SymbolsTokenizer;

    invoke-direct {v0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SymbolsTokenizer;-><init>()V

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p1, v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 36
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->suggestionAdapter:Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    const-string v0, "autocomplete-6743"

    const-string v1, "AutoComplete plugin loaded successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method public onDetached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 1
    .param p1, "editText"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 42
    invoke-virtual {p1, v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onDetached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    .line 44
    return-void
.end method

.method public onLanguageChanged(Lcom/blacksquircle/ui/language/base/Language;)V
    .locals 3
    .param p1, "language"    # Lcom/blacksquircle/ui/language/base/Language;

    .line 76
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onLanguageChanged(Lcom/blacksquircle/ui/language/base/Language;)V

    .line 77
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/blacksquircle/ui/language/base/Language;->getProvider()Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "provider":Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;
    const/4 v1, 0x0

    .line 78
    .local v1, "$i$a$-let-AutoCompletePlugin$onLanguageChanged$1":I
    iget-object v2, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->suggestionAdapter:Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;->setSuggestionProvider(Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;)V

    .line 77
    .end local v0    # "provider":Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;
    .end local v1    # "$i$a$-let-AutoCompletePlugin$onLanguageChanged$1":I
    :cond_0
    nop

    .line 80
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 47
    invoke-super {p0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onSizeChanged(IIII)V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->onDropDownSizeChange(II)V

    .line 49
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 53
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->onPopupChangePosition()V

    .line 54
    return-void
.end method

.method public processLine(III)V
    .locals 2
    .param p1, "lineNumber"    # I
    .param p2, "lineStart"    # I
    .param p3, "lineEnd"    # I

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->processLine(III)V

    .line 64
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getLanguage()Lcom/blacksquircle/ui/language/base/Language;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/blacksquircle/ui/language/base/Language;->getProvider()Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    nop

    .line 66
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 64
    invoke-interface {v0, p1, v1}, Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;->processLine(ILjava/lang/CharSequence;)V

    .line 68
    :cond_0
    return-void
.end method

.method public removeLine(I)V
    .locals 1
    .param p1, "lineNumber"    # I

    .line 71
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->removeLine(I)V

    .line 72
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getLanguage()Lcom/blacksquircle/ui/language/base/Language;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/blacksquircle/ui/language/base/Language;->getProvider()Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;->deleteLine(I)V

    .line 73
    :cond_0
    return-void
.end method

.method public final setSuggestionAdapter(Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;)V
    .locals 0
    .param p1, "value"    # Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    .line 29
    iput-object p1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->suggestionAdapter:Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/SuggestionAdapter;

    .line 30
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->updateAdapter()V

    .line 31
    return-void
.end method

.method public setTextContent(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->setTextContent(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getLanguage()Lcom/blacksquircle/ui/language/base/Language;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/blacksquircle/ui/language/base/Language;->getProvider()Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;->clearLines()V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getLanguage()Lcom/blacksquircle/ui/language/base/Language;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/blacksquircle/ui/language/base/Language;->getProvider()Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;->processAllLines(Lcom/blacksquircle/ui/language/base/model/TextStructure;)V

    .line 60
    :cond_1
    return-void
.end method

.method public showDropDown()V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-super {p0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->showDropDown()V

    .line 88
    :cond_0
    return-void
.end method
