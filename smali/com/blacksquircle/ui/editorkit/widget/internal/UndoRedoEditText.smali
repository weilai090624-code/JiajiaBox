.class public abstract Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;
.super Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;
.source "UndoRedoEditText.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\n\u0008&\u0018\u00002\u00020\u0001:\u0001+B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\u001c\u001a\u00020\nJ\u0006\u0010\u001d\u001a\u00020\nJ\u0006\u0010\u001e\u001a\u00020\u001fJ*\u0010 \u001a\u00020\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u0007H\u0014J*\u0010&\u001a\u00020\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0007H\u0014J\u0006\u0010(\u001a\u00020\u001fJ\u0010\u0010)\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\"H\u0016J\u0006\u0010*\u001a\u00020\u001fR\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0014\"\u0004\u0008\u001b\u0010\u0016\u00a8\u0006,"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;",
        "Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "isDoingUndoRedo",
        "",
        "onUndoRedoChangedListener",
        "Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;",
        "getOnUndoRedoChangedListener",
        "()Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;",
        "setOnUndoRedoChangedListener",
        "(Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;)V",
        "redoStack",
        "Lcom/blacksquircle/ui/editorkit/model/UndoStack;",
        "getRedoStack",
        "()Lcom/blacksquircle/ui/editorkit/model/UndoStack;",
        "setRedoStack",
        "(Lcom/blacksquircle/ui/editorkit/model/UndoStack;)V",
        "textLastChange",
        "Lcom/blacksquircle/ui/editorkit/model/TextChange;",
        "undoStack",
        "getUndoStack",
        "setUndoStack",
        "canRedo",
        "canUndo",
        "clearUndoHistory",
        "",
        "doBeforeTextChanged",
        "text",
        "",
        "start",
        "count",
        "after",
        "doOnTextChanged",
        "before",
        "redo",
        "setTextContent",
        "undo",
        "OnUndoRedoChangedListener",
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
.field private isDoingUndoRedo:Z

.field private onUndoRedoChangedListener:Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;

.field private redoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

.field private textLastChange:Lcom/blacksquircle/ui/editorkit/model/TextChange;

.field private undoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;


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

    invoke-direct/range {v1 .. v6}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-direct {v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;-><init>()V

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    .line 32
    new-instance v0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-direct {v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;-><init>()V

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    .line 25
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 25
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 27
    const/4 p2, 0x0

    .line 25
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 28
    const p3, 0x101006b

    .line 25
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method


# virtual methods
.method public final canRedo()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->canUndo()Z

    move-result v0

    return v0
.end method

.method public final canUndo()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->canUndo()Z

    move-result v0

    return v0
.end method

.method public final clearUndoHistory()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    .line 83
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    .line 84
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->onUndoRedoChangedListener:Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;->onUndoRedoChanged()V

    .line 85
    :cond_0
    return-void
.end method

.method protected doBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->doBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 40
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->isDoingUndoRedo:Z

    if-nez v0, :cond_2

    .line 41
    const v0, 0x7fffffff

    const/4 v1, 0x0

    if-ge p3, v0, :cond_1

    .line 42
    new-instance v0, Lcom/blacksquircle/ui/editorkit/model/TextChange;

    .line 43
    nop

    .line 44
    if-eqz p1, :cond_0

    add-int v1, p2, p3

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 45
    nop

    .line 42
    const-string v2, ""

    invoke-direct {v0, v2, v1, p2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v0

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    .line 49
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    .line 50
    nop

    .line 41
    :goto_0
    iput-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lcom/blacksquircle/ui/editorkit/model/TextChange;

    .line 53
    :cond_2
    return-void
.end method

.method protected doOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->doOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 57
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->isDoingUndoRedo:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lcom/blacksquircle/ui/editorkit/model/TextChange;

    if-eqz v0, :cond_c

    .line 58
    const v0, 0x7fffffff

    const/4 v1, 0x0

    if-ge p4, v0, :cond_a

    .line 59
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lcom/blacksquircle/ui/editorkit/model/TextChange;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    add-int v2, p2, p4

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->setNewText(Ljava/lang/String;)V

    .line 60
    :goto_1
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lcom/blacksquircle/ui/editorkit/model/TextChange;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v0

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_b

    .line 61
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lcom/blacksquircle/ui/editorkit/model/TextChange;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lcom/blacksquircle/ui/editorkit/model/TextChange;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_6

    :cond_6
    move-object v0, v1

    :goto_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 62
    :cond_7
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lcom/blacksquircle/ui/editorkit/model/TextChange;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_8
    move-object v0, v1

    :goto_7
    iget-object v2, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lcom/blacksquircle/ui/editorkit/model/TextChange;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_9
    move-object v2, v1

    :goto_8
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 64
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    iget-object v2, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lcom/blacksquircle/ui/editorkit/model/TextChange;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->push(Lcom/blacksquircle/ui/editorkit/model/TextChange;)V

    .line 65
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    goto :goto_9

    .line 68
    :cond_a
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    .line 69
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    .line 71
    :cond_b
    :goto_9
    iput-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->textLastChange:Lcom/blacksquircle/ui/editorkit/model/TextChange;

    .line 72
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->onUndoRedoChangedListener:Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;->onUndoRedoChanged()V

    .line 74
    :cond_c
    return-void
.end method

.method public final getOnUndoRedoChangedListener()Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->onUndoRedoChangedListener:Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;

    return-object v0
.end method

.method public final getRedoStack()Lcom/blacksquircle/ui/editorkit/model/UndoStack;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    return-object v0
.end method

.method public final getUndoStack()Lcom/blacksquircle/ui/editorkit/model/UndoStack;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    return-object v0
.end method

.method public final redo()V
    .locals 5

    .line 115
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->pop()Lcom/blacksquircle/ui/editorkit/model/TextChange;

    move-result-object v0

    .line 116
    .local v0, "textChange":Lcom/blacksquircle/ui/editorkit/model/TextChange;
    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v1

    if-ltz v1, :cond_0

    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->isDoingUndoRedo:Z

    .line 118
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v1, v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->push(Lcom/blacksquircle/ui/editorkit/model/TextChange;)V

    .line 119
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 120
    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v2

    .line 121
    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v3

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 122
    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 119
    invoke-interface {v1, v2, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 124
    move-object v1, p0

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v2

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->setSelectionIndex(Landroid/widget/EditText;I)V

    .line 125
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->isDoingUndoRedo:Z

    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->onUndoRedoChangedListener:Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;->onUndoRedoChanged()V

    .line 130
    :cond_1
    return-void
.end method

.method public final setOnUndoRedoChangedListener(Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;

    .line 33
    iput-object p1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->onUndoRedoChangedListener:Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;

    return-void
.end method

.method public final setRedoStack(Lcom/blacksquircle/ui/editorkit/model/UndoStack;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    return-void
.end method

.method public setTextContent(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/widget/internal/LineNumbersEditText;->setTextContent(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->onUndoRedoChangedListener:Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;->onUndoRedoChanged()V

    .line 79
    :cond_0
    return-void
.end method

.method public final setUndoStack(Lcom/blacksquircle/ui/editorkit/model/UndoStack;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    return-void
.end method

.method public final undo()V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->pop()Lcom/blacksquircle/ui/editorkit/model/TextChange;

    move-result-object v0

    .line 92
    .local v0, "textChange":Lcom/blacksquircle/ui/editorkit/model/TextChange;
    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v1

    if-ltz v1, :cond_3

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->isDoingUndoRedo:Z

    .line 94
    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->setStart(I)V

    .line 97
    :cond_0
    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v1

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 98
    .local v1, "end":I
    if-gez v1, :cond_1

    .line 99
    const/4 v1, 0x0

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    .line 104
    :cond_2
    iget-object v2, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->redoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v2, v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->push(Lcom/blacksquircle/ui/editorkit/model/TextChange;)V

    .line 105
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v3

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v2, v3, v1, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 106
    move-object v2, p0

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v3

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->setSelectionIndex(Landroid/widget/EditText;I)V

    .line 107
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->isDoingUndoRedo:Z

    .end local v1    # "end":I
    goto :goto_0

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->undoStack:Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    .line 111
    :goto_0
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->onUndoRedoChangedListener:Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText$OnUndoRedoChangedListener;->onUndoRedoChanged()V

    .line 112
    :cond_4
    return-void
.end method
