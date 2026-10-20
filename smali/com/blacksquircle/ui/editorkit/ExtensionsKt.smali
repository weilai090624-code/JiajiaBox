.class public final Lcom/blacksquircle/ui/editorkit/ExtensionsKt;
.super Ljava/lang/Object;
.source "Extensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions.kt\ncom/blacksquircle/ui/editorkit/ExtensionsKt\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,205:1\n31#2:206\n31#2:207\n31#2:208\n31#2:211\n1064#3,2:209\n*S KotlinDebug\n*F\n+ 1 Extensions.kt\ncom/blacksquircle/ui/editorkit/ExtensionsKt\n*L\n48#1:206\n59#1:207\n69#1:208\n203#1:211\n123#1:209,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u001a\n\u0010\u000b\u001a\u00020\u000c*\u00020\u0002\u001a\n\u0010\r\u001a\u00020\u000c*\u00020\u0002\u001a\n\u0010\u000e\u001a\u00020\u000c*\u00020\u000f\u001a\n\u0010\u0010\u001a\u00020\u000c*\u00020\u000f\u001a\u0012\u0010\u0011\u001a\u00020\u000c*\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0001\u001a\n\u0010\u0013\u001a\u00020\u0014*\u00020\u000f\u001a\u0012\u0010\u0015\u001a\u00020\u000c*\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0008\u001a\n\u0010\u0017\u001a\u00020\u000c*\u00020\u000f\u001a\n\u0010\u0018\u001a\u00020\u0014*\u00020\u000f\u001a\n\u0010\u0019\u001a\u00020\u0014*\u00020\u000f\u001a\n\u0010\u001a\u001a\u00020\u000c*\u00020\u000f\u001a\n\u0010\u001b\u001a\u00020\u000c*\u00020\u0002\u001a\n\u0010\u001c\u001a\u00020\u000c*\u00020\u000f\u001a\u0012\u0010\u001d\u001a\u00020\u000c*\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0001\u001a\u001a\u0010\u001f\u001a\u00020\u000c*\u00020\u00022\u0006\u0010 \u001a\u00020\u00012\u0006\u0010!\u001a\u00020\u0001\u001a\n\u0010\"\u001a\u00020\u000c*\u00020\u000f\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0018\u0010\u0005\u001a\u00020\u0001*\u00020\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0004\"\u0015\u0010\u0007\u001a\u00020\u0008*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006#"
    }
    d2 = {
        "selEnd",
        "",
        "Landroid/widget/EditText;",
        "getSelEnd",
        "(Landroid/widget/EditText;)I",
        "selStart",
        "getSelStart",
        "selectedText",
        "",
        "getSelectedText",
        "(Landroid/widget/EditText;)Ljava/lang/CharSequence;",
        "copy",
        "",
        "cut",
        "deleteLine",
        "Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;",
        "duplicateLine",
        "gotoLine",
        "lineNumber",
        "hasPrimaryClip",
        "",
        "insert",
        "delta",
        "moveCaretToEndOfLine",
        "moveCaretToNextWord",
        "moveCaretToPrevWord",
        "moveCaretToStartOfLine",
        "paste",
        "selectLine",
        "setSelectionIndex",
        "index",
        "setSelectionRange",
        "start",
        "end",
        "toggleCase",
        "editorkit_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final copy(Landroid/widget/EditText;)V
    .locals 3
    .param p0, "$this$copy"    # Landroid/widget/EditText;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    nop

    .line 59
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "$this$getSystemService$iv":Landroid/content/Context;
    const/4 v1, 0x0

    .line 207
    .local v1, "$i$f$getSystemService":I
    const-class v2, Landroid/content/ClipboardManager;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 59
    .end local v0    # "$this$getSystemService$iv":Landroid/content/Context;
    .end local v1    # "$i$f$getSystemService":I
    check-cast v2, Landroid/content/ClipboardManager;

    move-object v0, v2

    .line 60
    .local v0, "clipboardManager":Landroid/content/ClipboardManager;
    const-string v1, "COPY"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelectedText(Landroid/widget/EditText;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 61
    .local v1, "clipData":Landroid/content/ClipData;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v0    # "clipboardManager":Landroid/content/ClipboardManager;
    .end local v1    # "clipData":Landroid/content/ClipData;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static final cut(Landroid/widget/EditText;)V
    .locals 6
    .param p0, "$this$cut"    # Landroid/widget/EditText;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    nop

    .line 48
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "$this$getSystemService$iv":Landroid/content/Context;
    const/4 v1, 0x0

    .line 206
    .local v1, "$i$f$getSystemService":I
    const-class v2, Landroid/content/ClipboardManager;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 48
    .end local v0    # "$this$getSystemService$iv":Landroid/content/Context;
    .end local v1    # "$i$f$getSystemService":I
    check-cast v2, Landroid/content/ClipboardManager;

    move-object v0, v2

    .line 49
    .local v0, "clipboardManager":Landroid/content/ClipboardManager;
    const-string v1, "CUT"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelectedText(Landroid/widget/EditText;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 50
    .local v1, "clipData":Landroid/content/ClipData;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {p0}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelStart(Landroid/widget/EditText;)I

    move-result v3

    invoke-static {p0}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelEnd(Landroid/widget/EditText;)I

    move-result v4

    const-string v5, ""

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v0    # "clipboardManager":Landroid/content/ClipboardManager;
    .end local v1    # "clipData":Landroid/content/ClipData;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static final deleteLine(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 4
    .param p0, "$this$deleteLine"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelStart(Landroid/widget/EditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineForIndex(I)I

    move-result v0

    .line 100
    .local v0, "currentLine":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForStartOfLine(I)I

    move-result v1

    .line 101
    .local v1, "lineStart":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForEndOfLine(I)I

    move-result v2

    .line 102
    .local v2, "lineEnd":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 103
    return-void
.end method

.method public static final duplicateLine(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 7
    .param p0, "$this$duplicateLine"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    move-object v0, p0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelEnd(Landroid/widget/EditText;)I

    move-result v0

    .line 108
    .local v0, "end":I
    move-object v1, p0

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelectedText(Landroid/widget/EditText;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "selectedText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v3}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelStart(Landroid/widget/EditText;)I

    move-result v3

    move-object v4, p0

    check-cast v4, Landroid/widget/EditText;

    invoke-static {v4}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelEnd(Landroid/widget/EditText;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 110
    move-object v2, p0

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v2, v0, v3}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->setSelectionRange(Landroid/widget/EditText;II)V

    .end local v0    # "end":I
    .end local v1    # "selectedText":Ljava/lang/String;
    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelStart(Landroid/widget/EditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineForIndex(I)I

    move-result v0

    .line 113
    .local v0, "currentLine":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForStartOfLine(I)I

    move-result v1

    .line 114
    .local v1, "lineStart":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForEndOfLine(I)I

    move-result v2

    .line 115
    .local v2, "lineEnd":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 116
    .local v3, "lineText":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v4, v2, v5}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 118
    .end local v0    # "currentLine":I
    .end local v1    # "lineStart":I
    .end local v2    # "lineEnd":I
    .end local v3    # "lineText":Ljava/lang/CharSequence;
    :goto_0
    return-void
.end method

.method private static final getSelEnd(Landroid/widget/EditText;)I
    .locals 2
    .param p0, "$this$selEnd"    # Landroid/widget/EditText;

    .line 33
    nop

    .line 34
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 37
    :goto_0
    return v0
.end method

.method private static final getSelStart(Landroid/widget/EditText;)I
    .locals 2
    .param p0, "$this$selStart"    # Landroid/widget/EditText;

    .line 27
    nop

    .line 28
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 31
    :goto_0
    return v0
.end method

.method public static final getSelectedText(Landroid/widget/EditText;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "$this$selectedText"    # Landroid/widget/EditText;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {p0}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelStart(Landroid/widget/EditText;)I

    move-result v1

    invoke-static {p0}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelEnd(Landroid/widget/EditText;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static final gotoLine(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;I)V
    .locals 3
    .param p0, "$this$gotoLine"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;
    .param p1, "lineNumber"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    add-int/lit8 v0, p1, -0x1

    .line 196
    .local v0, "line":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 199
    move-object v1, p0

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForLine(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->setSelectionIndex(Landroid/widget/EditText;I)V

    .line 200
    return-void

    .line 197
    :cond_0
    new-instance v1, Lcom/blacksquircle/ui/editorkit/exception/LineException;

    invoke-direct {v1, p1}, Lcom/blacksquircle/ui/editorkit/exception/LineException;-><init>(I)V

    throw v1
.end method

.method public static final hasPrimaryClip(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)Z
    .locals 3
    .param p0, "$this$hasPrimaryClip"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "$this$getSystemService$iv":Landroid/content/Context;
    const/4 v1, 0x0

    .line 211
    .local v1, "$i$f$getSystemService":I
    const-class v2, Landroid/content/ClipboardManager;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 203
    .end local v0    # "$this$getSystemService$iv":Landroid/content/Context;
    .end local v1    # "$i$f$getSystemService":I
    check-cast v0, Landroid/content/ClipboardManager;

    .line 204
    .local v0, "clipboardManager":Landroid/content/ClipboardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final insert(Landroid/widget/EditText;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "$this$insert"    # Landroid/widget/EditText;
    .param p1, "delta"    # Ljava/lang/CharSequence;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delta"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {p0}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelStart(Landroid/widget/EditText;)I

    move-result v1

    invoke-static {p0}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelEnd(Landroid/widget/EditText;)I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 44
    return-void
.end method

.method public static final moveCaretToEndOfLine(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 3
    .param p0, "$this$moveCaretToEndOfLine"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelEnd(Landroid/widget/EditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineForIndex(I)I

    move-result v0

    .line 140
    .local v0, "currentLine":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForEndOfLine(I)I

    move-result v1

    .line 141
    .local v1, "lineEnd":I
    move-object v2, p0

    check-cast v2, Landroid/widget/EditText;

    invoke-static {v2, v1}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->setSelectionIndex(Landroid/widget/EditText;I)V

    .line 142
    return-void
.end method

.method public static final moveCaretToNextWord(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)Z
    .locals 8
    .param p0, "$this$moveCaretToNextWord"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_6

    .line 171
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getSelectionStart()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 172
    .local v0, "currentChar":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    const/16 v3, 0x5f

    if-nez v1, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 173
    .local v1, "isLetterDigitOrUnderscore":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getSelectionStart()I

    move-result v4

    .local v4, "i":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    :goto_2
    if-ge v4, v5, :cond_6

    .line 175
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    .line 176
    .local v6, "char":C
    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-nez v7, :cond_2

    if-eq v6, v3, :cond_2

    .line 177
    move-object v3, p0

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v3, v4}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->setSelectionIndex(Landroid/widget/EditText;I)V

    .line 178
    goto :goto_5

    .line 174
    .end local v6    # "char":C
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 182
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getSelectionStart()I

    move-result v4

    .restart local v4    # "i":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    :goto_3
    if-ge v4, v5, :cond_6

    .line 183
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    .line 184
    .restart local v6    # "char":C
    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-nez v7, :cond_5

    if-ne v6, v3, :cond_4

    goto :goto_4

    .line 182
    .end local v6    # "char":C
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 185
    .restart local v6    # "char":C
    :cond_5
    :goto_4
    move-object v3, p0

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v3, v4}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->setSelectionIndex(Landroid/widget/EditText;I)V

    .line 186
    nop

    .line 191
    .end local v0    # "currentChar":C
    .end local v1    # "isLetterDigitOrUnderscore":Z
    .end local v4    # "i":I
    .end local v6    # "char":C
    :cond_6
    :goto_5
    return v2
.end method

.method public static final moveCaretToPrevWord(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)Z
    .locals 8
    .param p0, "$this$moveCaretToPrevWord"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getSelectionStart()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_6

    .line 146
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getSelectionStart()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 147
    .local v0, "currentChar":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    const/16 v3, 0x5f

    if-nez v2, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 148
    .local v2, "isLetterDigitOrUnderscore":Z
    :goto_1
    const/4 v4, -0x1

    if-eqz v2, :cond_3

    .line 149
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getSelectionStart()I

    move-result v5

    .local v5, "i":I
    :goto_2
    if-ge v4, v5, :cond_6

    .line 150
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v6

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v6, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    .line 151
    .local v6, "char":C
    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-nez v7, :cond_2

    if-eq v6, v3, :cond_2

    .line 152
    move-object v3, p0

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v3, v5}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->setSelectionIndex(Landroid/widget/EditText;I)V

    .line 153
    goto :goto_5

    .line 149
    .end local v6    # "char":C
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 157
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getSelectionStart()I

    move-result v5

    .restart local v5    # "i":I
    :goto_3
    if-ge v4, v5, :cond_6

    .line 158
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v6

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v6, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    .line 159
    .restart local v6    # "char":C
    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-nez v7, :cond_5

    if-ne v6, v3, :cond_4

    goto :goto_4

    .line 157
    .end local v6    # "char":C
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 160
    .restart local v6    # "char":C
    :cond_5
    :goto_4
    move-object v3, p0

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v3, v5}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->setSelectionIndex(Landroid/widget/EditText;I)V

    .line 161
    nop

    .line 166
    .end local v0    # "currentChar":C
    .end local v2    # "isLetterDigitOrUnderscore":Z
    .end local v5    # "i":I
    .end local v6    # "char":C
    :cond_6
    :goto_5
    return v1
.end method

.method public static final moveCaretToStartOfLine(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 3
    .param p0, "$this$moveCaretToStartOfLine"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelStart(Landroid/widget/EditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineForIndex(I)I

    move-result v0

    .line 134
    .local v0, "currentLine":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForStartOfLine(I)I

    move-result v1

    .line 135
    .local v1, "lineStart":I
    move-object v2, p0

    check-cast v2, Landroid/widget/EditText;

    invoke-static {v2, v1}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->setSelectionIndex(Landroid/widget/EditText;I)V

    .line 136
    return-void
.end method

.method public static final paste(Landroid/widget/EditText;)V
    .locals 6
    .param p0, "$this$paste"    # Landroid/widget/EditText;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    nop

    .line 69
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "$this$getSystemService$iv":Landroid/content/Context;
    const/4 v1, 0x0

    .line 208
    .local v1, "$i$f$getSystemService":I
    const-class v2, Landroid/content/ClipboardManager;

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    .end local v0    # "$this$getSystemService$iv":Landroid/content/Context;
    .end local v1    # "$i$f$getSystemService":I
    check-cast v2, Landroid/content/ClipboardManager;

    move-object v0, v2

    .line 70
    .local v0, "clipboardManager":Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 71
    .local v2, "clipData":Landroid/content/ClipData$Item;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 72
    .local v1, "clipText":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {p0}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelStart(Landroid/widget/EditText;)I

    move-result v4

    invoke-static {p0}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelEnd(Landroid/widget/EditText;)I

    move-result v5

    invoke-interface {v3, v4, v5, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 73
    .end local v0    # "clipboardManager":Landroid/content/ClipboardManager;
    .end local v1    # "clipText":Ljava/lang/CharSequence;
    .end local v2    # "clipData":Landroid/content/ClipData$Item;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static final selectLine(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 4
    .param p0, "$this$selectLine"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelStart(Landroid/widget/EditText;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineForIndex(I)I

    move-result v0

    .line 93
    .local v0, "currentLine":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForStartOfLine(I)I

    move-result v1

    .line 94
    .local v1, "lineStart":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForEndOfLine(I)I

    move-result v2

    .line 95
    .local v2, "lineEnd":I
    move-object v3, p0

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v3, v1, v2}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->setSelectionRange(Landroid/widget/EditText;II)V

    .line 96
    return-void
.end method

.method public static final setSelectionIndex(Landroid/widget/EditText;I)V
    .locals 1
    .param p0, "$this$setSelectionIndex"    # Landroid/widget/EditText;
    .param p1, "index"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    nop

    .line 87
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 86
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 89
    return-void
.end method

.method public static final setSelectionRange(Landroid/widget/EditText;II)V
    .locals 2
    .param p0, "$this$setSelectionRange"    # Landroid/widget/EditText;
    .param p1, "start"    # I
    .param p2, "end"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    nop

    .line 80
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 81
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-le p2, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, p2

    .line 79
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 83
    return-void
.end method

.method public static final toggleCase(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 9
    .param p0, "$this$toggleCase"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    move-object v0, p0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelStart(Landroid/widget/EditText;)I

    move-result v0

    .line 122
    .local v0, "start":I
    move-object v1, p0

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelectedText(Landroid/widget/EditText;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "selectedText":Ljava/lang/String;
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    .local v2, "$this$all$iv":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 209
    .local v3, "$i$f$all":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .local v6, "element$iv":C
    move v7, v6

    .local v7, "p0":C
    const/4 v8, 0x0

    .line 123
    .local v8, "$i$a$-all-ExtensionsKt$toggleCase$replacedText$1":I
    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    .line 209
    .end local v7    # "p0":C
    .end local v8    # "$i$a$-all-ExtensionsKt$toggleCase$replacedText$1":I
    if-nez v7, :cond_0

    goto :goto_1

    .end local v6    # "element$iv":C
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 210
    :cond_1
    const/4 v4, 0x1

    .line 123
    .end local v2    # "$this$all$iv":Ljava/lang/CharSequence;
    .end local v3    # "$i$f$all":I
    :goto_1
    if-eqz v4, :cond_2

    .line 124
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 126
    :cond_2
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    :goto_2
    nop

    .line 128
    .local v2, "replacedText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Landroid/widget/EditText;

    invoke-static {v4}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelStart(Landroid/widget/EditText;)I

    move-result v4

    move-object v5, p0

    check-cast v5, Landroid/widget/EditText;

    invoke-static {v5}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->getSelEnd(Landroid/widget/EditText;)I

    move-result v5

    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 129
    move-object v3, p0

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v3, v0, v4}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->setSelectionRange(Landroid/widget/EditText;II)V

    .line 130
    return-void
.end method
