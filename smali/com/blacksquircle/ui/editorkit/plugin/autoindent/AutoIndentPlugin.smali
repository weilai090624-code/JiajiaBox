.class public final Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;
.super Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
.source "AutoIndentPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0003\u0018\u0000 %2\u00020\u0001:\u0001%B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u001d\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00182\u0006\u0010\u0014\u001a\u00020\u0015H\u0002\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u0015H\u0002J\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0015H\u0002J\u0010\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020 H\u0016J*\u0010!\u001a\u00020\u00132\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010$\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;",
        "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
        "()V",
        "autoCloseBrackets",
        "",
        "getAutoCloseBrackets",
        "()Z",
        "setAutoCloseBrackets",
        "(Z)V",
        "autoCloseQuotes",
        "getAutoCloseQuotes",
        "setAutoCloseQuotes",
        "autoIndentLines",
        "getAutoIndentLines",
        "setAutoIndentLines",
        "isAutoIndenting",
        "newText",
        "",
        "completeIndentation",
        "",
        "start",
        "",
        "count",
        "executeIndentation",
        "",
        "(I)[Ljava/lang/String;",
        "getIndentationForLine",
        "line",
        "getIndentationForOffset",
        "offset",
        "onAttached",
        "editText",
        "Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;",
        "onTextChanged",
        "text",
        "",
        "before",
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
.field public static final Companion:Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin$Companion;

.field public static final PLUGIN_ID:Ljava/lang/String; = "autoindent-7401"


# instance fields
.field private autoCloseBrackets:Z

.field private autoCloseQuotes:Z

.field private autoIndentLines:Z

.field private isAutoIndenting:Z

.field private newText:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$mI2w4mBZvo6qJ9BR6jYWCFKUBOs(Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;IILjava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->completeIndentation$lambda$0(Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;IILjava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->Companion:Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    const-string v0, "autoindent-7401"

    invoke-direct {p0, v0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;-><init>(Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoIndentLines:Z

    .line 27
    iput-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    .line 28
    iput-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseQuotes:Z

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private final completeIndentation(II)V
    .locals 11
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 46
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->isAutoIndenting:Z

    if-nez v0, :cond_9

    .line 47
    invoke-direct {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->executeIndentation(I)[Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    const-string v4, ""

    if-nez v2, :cond_3

    aget-object v2, v0, v3

    if-eqz v2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    const/4 v1, 0x2

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    .line 57
    aget-object v1, v0, v1

    if-nez v1, :cond_1

    move-object v9, v4

    goto :goto_2

    :cond_1
    move-object v9, v1

    goto :goto_2

    .line 59
    :cond_2
    return-void

    .line 49
    :cond_3
    :goto_0
    aget-object v1, v0, v1

    if-nez v1, :cond_4

    move-object v1, v4

    .line 50
    .local v1, "preText":Ljava/lang/String;
    :cond_4
    aget-object v2, v0, v3

    if-nez v2, :cond_5

    move-object v2, v4

    .line 51
    .local v2, "postText":Ljava/lang/String;
    :cond_5
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    .line 54
    :cond_6
    return-void

    .line 52
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    .line 48
    .end local v1    # "preText":Ljava/lang/String;
    .end local v2    # "postText":Ljava/lang/String;
    :goto_2
    nop

    .line 61
    .local v9, "replacementValue":Ljava/lang/String;
    const/4 v1, 0x3

    aget-object v2, v0, v1

    if-eqz v2, :cond_8

    .line 62
    aget-object v1, v0, v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v10, v1

    goto :goto_3

    .line 64
    :cond_8
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    move v10, v1

    .line 61
    :goto_3
    nop

    .line 66
    .local v10, "newCursorPosition":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    new-instance v2, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin$$ExternalSyntheticLambda0;

    move-object v5, v2

    move-object v6, p0

    move v7, p1

    move v8, p2

    invoke-direct/range {v5 .. v10}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin$$ExternalSyntheticLambda0;-><init>(Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;IILjava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->post(Ljava/lang/Runnable;)Z

    .line 79
    .end local v0    # "result":[Ljava/lang/String;
    .end local v9    # "replacementValue":Ljava/lang/String;
    .end local v10    # "newCursorPosition":I
    :cond_9
    return-void
.end method

.method private static final completeIndentation$lambda$0(Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;IILjava/lang/String;I)V
    .locals 3
    .param p0, "this$0"    # Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;
    .param p1, "$start"    # I
    .param p2, "$count"    # I
    .param p3, "$replacementValue"    # Ljava/lang/String;
    .param p4, "$newCursorPosition"    # I

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$replacementValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->isAutoIndenting:Z

    .line 68
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v0

    add-int v1, p1, p2

    move-object v2, p3

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v0, p1, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 69
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getUndoStack()Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->pop()Lcom/blacksquircle/ui/editorkit/model/TextChange;

    .line 70
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getUndoStack()Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->pop()Lcom/blacksquircle/ui/editorkit/model/TextChange;

    move-result-object v0

    .line 71
    .local v0, "change":Lcom/blacksquircle/ui/editorkit/model/TextChange;
    const-string v1, ""

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {v0, p3}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->setNewText(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getUndoStack()Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->push(Lcom/blacksquircle/ui/editorkit/model/TextChange;)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1, p4}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->setSelectionIndex(Landroid/widget/EditText;I)V

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->isAutoIndenting:Z

    .line 77
    return-void
.end method

.method private final executeIndentation(I)[Ljava/lang/String;
    .locals 11
    .param p1, "start"    # I

    const/4 v0, 0x0

    .line 83
    .local v0, "strArr":[Ljava/lang/String;
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    const-string v2, "\n"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x7d

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoIndentLines:Z

    if-eqz v1, :cond_2

    .line 84
    invoke-direct {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getIndentationForOffset(I)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "prevLineIndentation":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .local v7, "indentation":Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/2addr v8, p1

    add-int/2addr v8, v6

    .line 87
    .local v8, "newCursorPosition":I
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v9

    add-int/lit8 v10, p1, -0x1

    invoke-interface {v9, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    const/16 v10, 0x7b

    if-ne v9, v10, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->tab()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/2addr v9, p1

    add-int/lit8 v8, v9, 0x1

    .line 91
    :cond_0
    add-int/lit8 v9, p1, 0x1

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v9

    add-int/lit8 v10, p1, 0x1

    invoke-interface {v9, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    if-ne v9, v3, :cond_1

    .line 92
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_1
    new-array v0, v5, [Ljava/lang/String;

    .line 95
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 96
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 97
    return-object v0

    .line 98
    .end local v1    # "prevLineIndentation":Ljava/lang/String;
    .end local v7    # "indentation":Ljava/lang/StringBuilder;
    .end local v8    # "newCursorPosition":I
    :cond_2
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    const-string v2, "\""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v7, 0x5c

    const-string v8, ""

    const/4 v9, 0x2

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseQuotes:Z

    if-eqz v1, :cond_6

    .line 99
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 100
    new-array v0, v5, [Ljava/lang/String;

    .line 101
    aput-object v2, v0, v6

    .line 102
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 103
    return-object v0

    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    if-ne v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v10, p1, -0x1

    invoke-interface {v1, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_4

    .line 105
    new-array v0, v5, [Ljava/lang/String;

    .line 106
    aput-object v8, v0, v9

    .line 107
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 108
    return-object v0

    .line 109
    :cond_4
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v8, p1, 0x1

    invoke-interface {v1, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_11

    .line 110
    :cond_5
    new-array v0, v5, [Ljava/lang/String;

    .line 111
    aput-object v2, v0, v6

    .line 112
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 113
    return-object v0

    .line 115
    :cond_6
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    const-string v2, "\'"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseQuotes:Z

    if-eqz v1, :cond_b

    .line 116
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lt v1, v3, :cond_7

    .line 117
    new-array v0, v5, [Ljava/lang/String;

    .line 118
    aput-object v2, v0, v6

    .line 119
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 120
    return-object v0

    .line 121
    :cond_7
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lt v1, v3, :cond_8

    .line 122
    new-array v0, v5, [Ljava/lang/String;

    .line 123
    aput-object v2, v0, v6

    .line 124
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 125
    return-object v0

    .line 126
    :cond_8
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v3, 0x27

    if-ne v1, v3, :cond_9

    if-lez p1, :cond_9

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v10, p1, -0x1

    invoke-interface {v1, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_9

    .line 127
    new-array v0, v5, [Ljava/lang/String;

    .line 128
    aput-object v8, v0, v9

    .line 129
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 130
    return-object v0

    .line 131
    :cond_9
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v8, p1, 0x1

    invoke-interface {v1, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_a

    if-lez p1, :cond_a

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_11

    .line 132
    :cond_a
    new-array v0, v5, [Ljava/lang/String;

    .line 133
    aput-object v2, v0, v6

    .line 134
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 135
    return-object v0

    .line 137
    :cond_b
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    const-string/jumbo v2, "{"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "}"

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    if-eqz v1, :cond_c

    .line 138
    new-array v0, v5, [Ljava/lang/String;

    .line 139
    aput-object v2, v0, v6

    .line 140
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 141
    return-object v0

    .line 142
    :cond_c
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    if-eqz v1, :cond_d

    .line 143
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v1, v2, :cond_11

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_11

    .line 144
    new-array v0, v5, [Ljava/lang/String;

    .line 145
    aput-object v8, v0, v9

    .line 146
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 147
    return-object v0

    .line 149
    :cond_d
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    const-string v2, "("

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ")"

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    if-eqz v1, :cond_e

    .line 150
    new-array v0, v5, [Ljava/lang/String;

    .line 151
    aput-object v2, v0, v6

    .line 152
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 153
    return-object v0

    .line 154
    :cond_e
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    if-eqz v1, :cond_f

    .line 155
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v1, v2, :cond_11

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_11

    .line 156
    new-array v0, v5, [Ljava/lang/String;

    .line 157
    aput-object v8, v0, v9

    .line 158
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 159
    return-object v0

    .line 161
    :cond_f
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    const-string v2, "["

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    if-eqz v1, :cond_10

    .line 162
    new-array v0, v5, [Ljava/lang/String;

    .line 163
    aput-object v2, v0, v6

    .line 164
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 165
    return-object v0

    .line 166
    :cond_10
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    if-eqz v1, :cond_11

    .line 167
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v1, v2, :cond_11

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_11

    .line 169
    new-array v0, v5, [Ljava/lang/String;

    .line 170
    aput-object v8, v0, v9

    .line 171
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 172
    return-object v0

    .line 174
    :cond_11
    new-array v1, v5, [Ljava/lang/String;

    return-object v1
.end method

.method private final getIndentationForLine(I)Ljava/lang/String;
    .locals 5
    .param p1, "line"    # I

    .line 182
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLine(I)Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;

    move-result-object v0

    .line 183
    .local v0, "realLine":Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;
    invoke-virtual {v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure$Line;->getStart()I

    move-result v1

    .line 184
    .local v1, "start":I
    move v2, v1

    .line 185
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    .line 187
    .local v3, "char":C
    invoke-static {v3}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 190
    :cond_0
    nop

    .end local v3    # "char":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .restart local v3    # "char":C
    :cond_1
    :goto_1
    nop

    .line 192
    .end local v3    # "char":C
    :cond_2
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getEditText()Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private final getIndentationForOffset(I)Ljava/lang/String;
    .locals 1
    .param p1, "offset"    # I

    .line 178
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineForIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->getIndentationForLine(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getAutoCloseBrackets()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    return v0
.end method

.method public final getAutoCloseQuotes()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseQuotes:Z

    return v0
.end method

.method public final getAutoIndentLines()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoIndentLines:Z

    return v0
.end method

.method public onAttached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V
    .locals 2
    .param p1, "editText"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onAttached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    .line 35
    const-string v0, "autoindent-7401"

    const-string v1, "AutoIndent plugin loaded successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 40
    if-eqz p1, :cond_0

    add-int v0, p2, p4

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    .line 41
    invoke-direct {p0, p2, p4}, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->completeIndentation(II)V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->newText:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public final setAutoCloseBrackets(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 27
    iput-boolean p1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseBrackets:Z

    return-void
.end method

.method public final setAutoCloseQuotes(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoCloseQuotes:Z

    return-void
.end method

.method public final setAutoIndentLines(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 26
    iput-boolean p1, p0, Lcom/blacksquircle/ui/editorkit/plugin/autoindent/AutoIndentPlugin;->autoIndentLines:Z

    return-void
.end method
