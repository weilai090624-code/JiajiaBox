.class public abstract Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
.super Ljava/lang/Object;
.source "EditorPlugin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$H\u0016J\u0012\u0010&\u001a\u00020\"2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J*\u0010)\u001a\u00020\"2\u0008\u0010\'\u001a\u0004\u0018\u00010*2\u0006\u0010+\u001a\u00020$2\u0006\u0010,\u001a\u00020$2\u0006\u0010-\u001a\u00020$H\u0016J\u0012\u0010.\u001a\u00020\"2\u0008\u0010/\u001a\u0004\u0018\u000100H\u0016J\u0010\u00101\u001a\u00020\"2\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J\u0010\u00102\u001a\u00020\"2\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u00103\u001a\u00020\"2\u0006\u0010\u000b\u001a\u00020\u0006H\u0016J\u0012\u00104\u001a\u00020\"2\u0008\u0010/\u001a\u0004\u0018\u000100H\u0016J\u001a\u00105\u001a\u00020\u000f2\u0006\u00106\u001a\u00020$2\u0008\u00107\u001a\u0004\u0018\u000108H\u0016J\u001a\u00109\u001a\u00020\u000f2\u0006\u00106\u001a\u00020$2\u0008\u00107\u001a\u0004\u0018\u000108H\u0016J\u0012\u0010:\u001a\u00020\"2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J0\u0010;\u001a\u00020\"2\u0006\u0010<\u001a\u00020\u000f2\u0006\u0010=\u001a\u00020$2\u0006\u0010>\u001a\u00020$2\u0006\u0010?\u001a\u00020$2\u0006\u0010@\u001a\u00020$H\u0016J\u0018\u0010A\u001a\u00020\"2\u0006\u0010B\u001a\u00020$2\u0006\u0010C\u001a\u00020$H\u0016J(\u0010D\u001a\u00020\"2\u0006\u0010E\u001a\u00020$2\u0006\u0010F\u001a\u00020$2\u0006\u0010G\u001a\u00020$2\u0006\u0010H\u001a\u00020$H\u0016J\u0018\u0010I\u001a\u00020\"2\u0006\u0010J\u001a\u00020$2\u0006\u0010K\u001a\u00020$H\u0016J(\u0010L\u001a\u00020\"2\u0006\u0010M\u001a\u00020$2\u0006\u0010N\u001a\u00020$2\u0006\u0010O\u001a\u00020$2\u0006\u0010P\u001a\u00020$H\u0016J*\u0010Q\u001a\u00020\"2\u0008\u0010\'\u001a\u0004\u0018\u00010*2\u0006\u0010+\u001a\u00020$2\u0006\u0010R\u001a\u00020$2\u0006\u0010,\u001a\u00020$H\u0016J\u0010\u0010S\u001a\u00020\u000f2\u0006\u00107\u001a\u00020TH\u0016J \u0010U\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\u0006\u0010V\u001a\u00020$H\u0016J\u0010\u0010W\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J\u0008\u0010X\u001a\u00020YH\u0004J\u0010\u0010Z\u001a\u00020\"2\u0006\u0010\'\u001a\u00020*H\u0016J\u0010\u0010[\u001a\u00020\"2\u0006\u0010\\\u001a\u00020]H\u0016J\u0012\u0010^\u001a\u00020\"2\u0008\u0010_\u001a\u0004\u0018\u00010`H\u0016J\u0008\u0010a\u001a\u00020\"H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00088DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00068DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0010R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u00128DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00188DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u001c8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\u00188DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001a\u00a8\u0006b"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
        "",
        "pluginId",
        "",
        "(Ljava/lang/String;)V",
        "_editText",
        "Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;",
        "colorScheme",
        "Lcom/blacksquircle/ui/editorkit/model/ColorScheme;",
        "getColorScheme",
        "()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;",
        "editText",
        "getEditText",
        "()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;",
        "isAttached",
        "",
        "()Z",
        "language",
        "Lcom/blacksquircle/ui/language/base/Language;",
        "getLanguage",
        "()Lcom/blacksquircle/ui/language/base/Language;",
        "getPluginId",
        "()Ljava/lang/String;",
        "redoStack",
        "Lcom/blacksquircle/ui/editorkit/model/UndoStack;",
        "getRedoStack",
        "()Lcom/blacksquircle/ui/editorkit/model/UndoStack;",
        "structure",
        "Lcom/blacksquircle/ui/language/base/model/TextStructure;",
        "getStructure",
        "()Lcom/blacksquircle/ui/language/base/model/TextStructure;",
        "undoStack",
        "getUndoStack",
        "addLine",
        "",
        "lineNumber",
        "",
        "lineStart",
        "afterTextChanged",
        "text",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "count",
        "after",
        "drawBehind",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onAttached",
        "onColorSchemeChanged",
        "onDetached",
        "onDraw",
        "onKeyDown",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onKeyUp",
        "onLanguageChanged",
        "onLayout",
        "changed",
        "left",
        "top",
        "right",
        "bottom",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onScrollChanged",
        "horiz",
        "vert",
        "oldHoriz",
        "oldVert",
        "onSelectionChanged",
        "selStart",
        "selEnd",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "onTextChanged",
        "before",
        "onTouchEvent",
        "Landroid/view/MotionEvent;",
        "processLine",
        "lineEnd",
        "removeLine",
        "requireContext",
        "Landroid/content/Context;",
        "setTextContent",
        "setTextSize",
        "size",
        "",
        "setTypeface",
        "tf",
        "Landroid/graphics/Typeface;",
        "showDropDown",
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
.field private _editText:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

.field private final pluginId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pluginId"    # Ljava/lang/String;

    const-string v0, "pluginId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->pluginId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addLine(II)V
    .locals 0
    .param p1, "lineNumber"    # I
    .param p2, "lineStart"    # I

    .line 80
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "text"    # Landroid/text/Editable;

    .line 77
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 75
    return-void
.end method

.method public drawBehind(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 62
    return-void
.end method

.method protected final getColorScheme()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getColorScheme()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    move-result-object v0

    return-object v0
.end method

.method protected final getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->_editText:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected final getLanguage()Lcom/blacksquircle/ui/language/base/Language;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getLanguage()Lcom/blacksquircle/ui/language/base/Language;

    move-result-object v0

    return-object v0
.end method

.method public final getPluginId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->pluginId:Ljava/lang/String;

    return-object v0
.end method

.method protected final getRedoStack()Lcom/blacksquircle/ui/editorkit/model/UndoStack;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getRedoStack()Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    move-result-object v0

    return-object v0
.end method

.method protected final getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v0

    return-object v0
.end method

.method protected final getUndoStack()Lcom/blacksquircle/ui/editorkit/model/UndoStack;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getUndoStack()Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    move-result-object v0

    return-object v0
.end method

.method protected final isAttached()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->_editText:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 1
    .param p1, "editText"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->_editText:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    .line 52
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getColorScheme()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onColorSchemeChanged(Lcom/blacksquircle/ui/editorkit/model/ColorScheme;)V

    .line 53
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getLanguage()Lcom/blacksquircle/ui/language/base/Language;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onLanguageChanged(Lcom/blacksquircle/ui/language/base/Language;)V

    .line 54
    return-void
.end method

.method public onColorSchemeChanged(Lcom/blacksquircle/ui/editorkit/model/ColorScheme;)V
    .locals 1
    .param p1, "colorScheme"    # Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    const-string v0, "colorScheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onDetached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 1
    .param p1, "editText"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->_editText:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    .line 58
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 63
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public onLanguageChanged(Lcom/blacksquircle/ui/language/base/Language;)V
    .locals 0
    .param p1, "language"    # Lcom/blacksquircle/ui/language/base/Language;

    .line 66
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 61
    return-void
.end method

.method public onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 60
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0
    .param p1, "horiz"    # I
    .param p2, "vert"    # I
    .param p3, "oldHoriz"    # I
    .param p4, "oldVert"    # I

    .line 68
    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 0
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .line 70
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 69
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 76
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public processLine(III)V
    .locals 0
    .param p1, "lineNumber"    # I
    .param p2, "lineStart"    # I
    .param p3, "lineEnd"    # I

    .line 79
    return-void
.end method

.method public removeLine(I)V
    .locals 0
    .param p1, "lineNumber"    # I

    .line 81
    return-void
.end method

.method protected final requireContext()Landroid/content/Context;
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->_editText:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 90
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EditorPlugin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextContent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "size"    # F

    .line 84
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .line 85
    return-void
.end method

.method public showDropDown()V
    .locals 0

    .line 87
    return-void
.end method
