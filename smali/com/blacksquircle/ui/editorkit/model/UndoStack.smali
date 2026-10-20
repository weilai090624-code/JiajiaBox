.class public final Lcom/blacksquircle/ui/editorkit/model/UndoStack;
.super Ljava/lang/Object;
.source "UndoStack.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/editorkit/model/UndoStack$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0015\u0008\u0012\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0000J\u0011\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0008H\u0086\u0002J\u0006\u0010\u0012\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0004J\u0006\u0010\u0016\u001a\u00020\u0014J\u0008\u0010\u0017\u001a\u00020\u000eH\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/model/UndoStack;",
        "",
        "stack",
        "",
        "Lcom/blacksquircle/ui/editorkit/model/TextChange;",
        "(Ljava/util/List;)V",
        "()V",
        "currentSize",
        "",
        "size",
        "getSize",
        "()I",
        "",
        "canUndo",
        "",
        "clone",
        "get",
        "index",
        "pop",
        "push",
        "",
        "textChange",
        "removeAll",
        "removeLast",
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
.field public static final Companion:Lcom/blacksquircle/ui/editorkit/model/UndoStack$Companion;

.field public static final MAX_SIZE:I = 0x7fffffff


# instance fields
.field private currentSize:I

.field private stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/blacksquircle/ui/editorkit/model/TextChange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/blacksquircle/ui/editorkit/model/UndoStack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/editorkit/model/UndoStack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->Companion:Lcom/blacksquircle/ui/editorkit/model/UndoStack$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1, "stack"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/blacksquircle/ui/editorkit/model/TextChange;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;-><init>()V

    .line 32
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    .line 33
    return-void
.end method

.method private final removeLast()Z
    .locals 4

    .line 165
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->getSize()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 166
    return v1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blacksquircle/ui/editorkit/model/TextChange;

    .line 169
    .local v0, "item":Lcom/blacksquircle/ui/editorkit/model/TextChange;
    iget-object v2, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 170
    iget v1, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->currentSize:I

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->currentSize:I

    .line 171
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public final canUndo()Z
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final clone()Lcom/blacksquircle/ui/editorkit/model/UndoStack;
    .locals 2

    .line 161
    new-instance v0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;

    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final get(I)Lcom/blacksquircle/ui/editorkit/model/TextChange;
    .locals 1
    .param p1, "index"    # I

    .line 36
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blacksquircle/ui/editorkit/model/TextChange;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final pop()Lcom/blacksquircle/ui/editorkit/model/TextChange;
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blacksquircle/ui/editorkit/model/TextChange;

    .line 41
    .local v0, "item":Lcom/blacksquircle/ui/editorkit/model/TextChange;
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 42
    iget v1, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->currentSize:I

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->currentSize:I

    .line 43
    return-object v0
.end method

.method public final push(Lcom/blacksquircle/ui/editorkit/model/TextChange;)V
    .locals 12
    .param p1, "textChange"    # Lcom/blacksquircle/ui/editorkit/model/TextChange;

    const-string/jumbo v0, "textChange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    .local v0, "delta":I
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_1c

    .line 49
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->getSize()I

    move-result v2

    if-lez v2, :cond_19

    .line 50
    iget-object v2, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->getSize()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blacksquircle/ui/editorkit/model/TextChange;

    .local v2, "previous":Lcom/blacksquircle/ui/editorkit/model/TextChange;
    const/4 v3, 0x0

    .local v3, "toCharArray":[C
    const/4 v5, 0x0

    .local v5, "length":I
    const/4 v6, 0x0

    .local v6, "allWhitespace":Z
    const/4 v7, 0x0

    .line 55
    .local v7, "allLettersDigits":Z
    const/4 v8, 0x0

    .line 56
    .local v8, "i":I
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    const-string/jumbo v11, "this as java.lang.String).toCharArray()"

    if-eqz v9, :cond_b

    .line 57
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v4, :cond_b

    .line 58
    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_b

    .line 60
    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v4

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v4, v9

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v9

    if-eq v4, v9, :cond_2

    .line 61
    iget-object v4, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 62
    :cond_2
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 63
    const/4 v4, 0x1

    .line 64
    .end local v6    # "allWhitespace":Z
    .local v4, "allWhitespace":Z
    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v6

    .line 65
    array-length v5, v3

    .line 66
    :goto_2
    if-ge v8, v5, :cond_4

    .line 67
    aget-char v6, v3, v8

    invoke-static {v6}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_3

    .line 68
    const/4 v4, 0x0

    .line 70
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 72
    :cond_4
    if-eqz v4, :cond_5

    .line 73
    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->setNewText(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 75
    :cond_5
    iget-object v6, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 77
    .end local v4    # "allWhitespace":Z
    .restart local v6    # "allWhitespace":Z
    :cond_6
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 78
    const/4 v4, 0x1

    .line 79
    .end local v7    # "allLettersDigits":Z
    .local v4, "allLettersDigits":Z
    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v7

    .line 80
    array-length v5, v3

    .line 81
    :goto_3
    if-ge v8, v5, :cond_8

    .line 82
    aget-char v7, v3, v8

    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-nez v7, :cond_7

    .line 83
    const/4 v4, 0x0

    .line 85
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 87
    :cond_8
    if-eqz v4, :cond_9

    .line 88
    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->setNewText(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 90
    :cond_9
    iget-object v7, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 93
    .end local v4    # "allLettersDigits":Z
    .restart local v7    # "allLettersDigits":Z
    :cond_a
    iget-object v4, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 95
    :cond_b
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v4, :cond_18

    .line 96
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_c

    const/4 v9, 0x1

    goto :goto_4

    :cond_c
    const/4 v9, 0x0

    :goto_4
    if-nez v9, :cond_18

    .line 97
    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getNewText()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_d

    const/4 v9, 0x1

    goto :goto_5

    :cond_d
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_e

    goto/16 :goto_8

    .line 100
    :cond_e
    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v4

    if-eq v9, v4, :cond_f

    .line 101
    iget-object v4, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 102
    :cond_f
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 103
    const/4 v4, 0x1

    .line 104
    .end local v6    # "allWhitespace":Z
    .local v4, "allWhitespace":Z
    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v6

    .line 105
    array-length v5, v3

    .line 106
    :goto_6
    if-ge v8, v5, :cond_11

    .line 107
    aget-char v6, v3, v8

    invoke-static {v6}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_10

    .line 108
    const/4 v4, 0x0

    .line 110
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 112
    :cond_11
    if-eqz v4, :cond_12

    .line 113
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->setOldText(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v6

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v6, v9

    invoke-virtual {v2, v6}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->setStart(I)V

    goto/16 :goto_9

    .line 116
    :cond_12
    iget-object v6, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 118
    .end local v4    # "allWhitespace":Z
    .restart local v6    # "allWhitespace":Z
    :cond_13
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 119
    const/4 v4, 0x1

    .line 120
    .end local v7    # "allLettersDigits":Z
    .local v4, "allLettersDigits":Z
    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v7

    .line 121
    array-length v5, v3

    .line 122
    :goto_7
    if-ge v8, v5, :cond_15

    .line 123
    aget-char v7, v3, v8

    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-nez v7, :cond_14

    .line 124
    const/4 v4, 0x0

    .line 126
    :cond_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 128
    :cond_15
    if-eqz v4, :cond_16

    .line 129
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->setOldText(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getStart()I

    move-result v7

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->getOldText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {v2, v7}, Lcom/blacksquircle/ui/editorkit/model/TextChange;->setStart(I)V

    goto :goto_9

    .line 132
    :cond_16
    iget-object v7, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 135
    .end local v4    # "allLettersDigits":Z
    .restart local v7    # "allLettersDigits":Z
    :cond_17
    iget-object v4, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 99
    :cond_18
    :goto_8
    iget-object v4, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 138
    .end local v2    # "previous":Lcom/blacksquircle/ui/editorkit/model/TextChange;
    .end local v3    # "toCharArray":[C
    .end local v5    # "length":I
    .end local v6    # "allWhitespace":Z
    .end local v7    # "allLettersDigits":Z
    .end local v8    # "i":I
    :cond_19
    iget-object v2, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_9
    iget v2, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->currentSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->currentSize:I

    .line 141
    :cond_1a
    iget v2, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->currentSize:I

    if-le v2, v1, :cond_1b

    .line 142
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->removeLast()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 143
    return-void

    .line 146
    :cond_1b
    return-void

    .line 148
    :cond_1c
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->removeAll()V

    .line 149
    return-void
.end method

.method public final removeAll()V
    .locals 1

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->currentSize:I

    .line 153
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/model/UndoStack;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 154
    return-void
.end method
