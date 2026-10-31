.class public abstract Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;
.super Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;
.source "SyntaxHighlightEditText.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSyntaxHighlightEditText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SyntaxHighlightEditText.kt\ncom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText\n+ 2 SpannedString.kt\nandroidx/core/text/SpannedStringKt\n*L\n1#1,423:1\n34#2:424\n34#2:425\n34#2:426\n34#2:427\n34#2:428\n*S KotlinDebug\n*F\n+ 1 SyntaxHighlightEditText.kt\ncom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText\n*L\n240#1:424\n299#1:425\n313#1:426\n359#1:427\n382#1:428\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008&\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010.\u001a\u00020/H\u0002J\u0006\u00100\u001a\u00020/J\u0012\u00101\u001a\u00020/2\u0008\u00102\u001a\u0004\u0018\u000103H\u0014J*\u00104\u001a\u00020/2\u0008\u00102\u001a\u0004\u0018\u0001052\u0006\u00106\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u00072\u0006\u00108\u001a\u00020\u0007H\u0014J*\u00109\u001a\u00020/2\u0008\u00102\u001a\u0004\u0018\u0001052\u0006\u00106\u001a\u00020\u00072\u0006\u0010:\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u0007H\u0014J\u000e\u0010;\u001a\u00020/2\u0006\u0010<\u001a\u00020=J\u0014\u0010;\u001a\u00020/2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150>J\u0006\u0010?\u001a\u00020/J\u0006\u0010@\u001a\u00020/J\u0008\u0010A\u001a\u00020/H\u0014J\u0008\u0010B\u001a\u00020/H\u0014J(\u0010C\u001a\u00020/2\u0006\u0010D\u001a\u00020\u00072\u0006\u0010E\u001a\u00020\u00072\u0006\u0010F\u001a\u00020\u00072\u0006\u0010G\u001a\u00020\u0007H\u0014J(\u0010H\u001a\u00020/2\u0006\u0010I\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u00072\u0006\u0010K\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u0007H\u0014J\u000e\u0010M\u001a\u00020/2\u0006\u0010N\u001a\u00020OJ\u000e\u0010P\u001a\u00020/2\u0006\u0010N\u001a\u00020OJ\u0008\u0010Q\u001a\u00020/H\u0002J\u0008\u0010R\u001a\u00020/H\u0002J\u000e\u0010S\u001a\u00020/2\u0006\u0010T\u001a\u00020\u0007J\u0010\u0010U\u001a\u00020/2\u0006\u00102\u001a\u000205H\u0016J\u0018\u0010V\u001a\u00020/2\u0006\u0010W\u001a\u00020\u00072\u0006\u0010X\u001a\u00020\u0007H\u0002J\u0008\u0010Y\u001a\u00020/H\u0002J\u0006\u0010Z\u001a\u00020OJ\u0008\u0010[\u001a\u00020/H\u0002R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R(\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0008\u0010\n\u001a\u0004\u0018\u00010\u0019@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\"\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u0010\u0010\'\u001a\u0004\u0018\u00010(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010)\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;",
        "Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "addedTextCount",
        "value",
        "Lcom/blacksquircle/ui/editorkit/model/ColorScheme;",
        "colorScheme",
        "getColorScheme",
        "()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;",
        "setColorScheme",
        "(Lcom/blacksquircle/ui/editorkit/model/ColorScheme;)V",
        "findResultStyleSpan",
        "Lcom/blacksquircle/ui/editorkit/model/StyleSpan;",
        "findResults",
        "",
        "Lcom/blacksquircle/ui/editorkit/model/FindResult;",
        "isErrorSpansVisible",
        "",
        "isSyntaxHighlighting",
        "Lcom/blacksquircle/ui/language/base/Language;",
        "language",
        "getLanguage",
        "()Lcom/blacksquircle/ui/language/base/Language;",
        "setLanguage",
        "(Lcom/blacksquircle/ui/language/base/Language;)V",
        "selectedFindResult",
        "syntaxHighlightResults",
        "Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;",
        "tabWidth",
        "getTabWidth",
        "()I",
        "setTabWidth",
        "(I)V",
        "task",
        "Lcom/blacksquircle/ui/editorkit/utils/StylingTask;",
        "useSpacesInsteadOfTabs",
        "getUseSpacesInsteadOfTabs",
        "()Z",
        "setUseSpacesInsteadOfTabs",
        "(Z)V",
        "cancelSyntaxHighlighting",
        "",
        "clearFindResultSpans",
        "doAfterTextChanged",
        "text",
        "Landroid/text/Editable;",
        "doBeforeTextChanged",
        "",
        "start",
        "count",
        "after",
        "doOnTextChanged",
        "before",
        "find",
        "params",
        "Lcom/blacksquircle/ui/editorkit/model/FindParams;",
        "",
        "findNext",
        "findPrevious",
        "onColorSchemeChanged",
        "onLanguageChanged",
        "onScrollChanged",
        "horiz",
        "vert",
        "oldHoriz",
        "oldVert",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "replaceAllFindResults",
        "replaceText",
        "",
        "replaceFindResult",
        "scrollToFindResult",
        "selectResult",
        "setErrorLine",
        "lineNumber",
        "setTextContent",
        "shiftSpans",
        "from",
        "byHowMuch",
        "syntaxHighlight",
        "tab",
        "updateSyntaxHighlighting",
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
.field private addedTextCount:I

.field private colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

.field private findResultStyleSpan:Lcom/blacksquircle/ui/editorkit/model/StyleSpan;

.field private final findResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/blacksquircle/ui/editorkit/model/FindResult;",
            ">;"
        }
    .end annotation
.end field

.field private isErrorSpansVisible:Z

.field private isSyntaxHighlighting:Z

.field private language:Lcom/blacksquircle/ui/language/base/Language;

.field private selectedFindResult:I

.field private final syntaxHighlightResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;",
            ">;"
        }
    .end annotation
.end field

.field private tabWidth:I

.field private task:Lcom/blacksquircle/ui/editorkit/utils/StylingTask;

.field private useSpacesInsteadOfTabs:Z


# direct methods
.method public static synthetic $r8$lambda$I3ALOzI0SQ31ygHw2RndtES2a3g(Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->_init_$lambda$0(Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object v0, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->INSTANCE:Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/utils/EditorTheme;->getDARCULA()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    move-result-object v0

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->useSpacesInsteadOfTabs:Z

    .line 55
    const/4 v1, 0x4

    iput v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->tabWidth:I

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlightResults:Ljava/util/List;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    .line 69
    nop

    .line 70
    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText$$ExternalSyntheticLambda0;-><init>(Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 79
    nop

    .line 36
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    .line 36
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    .line 38
    const/4 p2, 0x0

    .line 36
    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    .line 39
    const p3, 0x101006b

    .line 36
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 423
    return-void
.end method

.method private static final _init_$lambda$0(Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 8
    .param p0, "this$0"    # Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I

    const-string/jumbo p6, "this$0"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sub-int p6, p3, p2

    const/4 v0, 0x1

    if-ne p6, v0, :cond_26

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p6

    if-ge p2, p6, :cond_26

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p6

    if-ge p5, p6, :cond_26

    .line 72
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p6

    .line 73
    .local p6, "c":C
    const/16 v0, 0x9

    if-ne p6, v0, :cond_26

    .line 74
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->tab()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0

    .line 77
    .end local p6    # "c":C
    :cond_26
    return-object p1
.end method

.method public static final synthetic access$getSyntaxHighlightResults$p(Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;)Ljava/util/List;
    .registers 2
    .param p0, "$this"    # Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;

    .line 36
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlightResults:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$updateSyntaxHighlighting(Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;)V
    .registers 1
    .param p0, "$this"    # Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;

    .line 36
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->updateSyntaxHighlighting()V

    return-void
.end method

.method private final cancelSyntaxHighlighting()V
    .registers 2

    .line 420
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->task:Lcom/blacksquircle/ui/editorkit/utils/StylingTask;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/utils/StylingTask;->cancel()V

    .line 421
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->task:Lcom/blacksquircle/ui/editorkit/utils/StylingTask;

    .line 422
    return-void
.end method

.method private final scrollToFindResult()V
    .registers 6

    .line 253
    iget v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_89

    .line 254
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    iget v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blacksquircle/ui/editorkit/model/FindResult;

    .line 255
    .local v0, "findResult":Lcom/blacksquircle/ui/editorkit/model/FindResult;
    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/blacksquircle/ui/editorkit/utils/ExtensionsKt;->getTopVisibleLine(Landroid/widget/TextView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    if-lt v1, v2, :cond_3f

    .line 256
    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getEnd()I

    move-result v1

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/blacksquircle/ui/editorkit/utils/ExtensionsKt;->getBottomVisibleLine(Landroid/widget/TextView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    if-gt v1, v2, :cond_3f

    .line 258
    return-void

    .line 260
    :cond_3f
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 261
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getStart()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 262
    .local v2, "lineTop":I
    if-le v2, v1, :cond_6d

    .line 263
    move v2, v1

    .line 265
    :cond_6d
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->isHorizontallyScrollableCompat()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 266
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getStart()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_85

    .line 268
    :cond_81
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getScrollX()I

    move-result v3

    .line 265
    :goto_85
    nop

    .line 271
    .local v3, "scrollX":I
    invoke-virtual {p0, v3, v2}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->scrollTo(II)V

    .line 273
    .end local v0    # "findResult":Lcom/blacksquircle/ui/editorkit/model/FindResult;
    .end local v1    # "height":I
    .end local v2    # "lineTop":I
    .end local v3    # "scrollX":I
    :cond_89
    return-void
.end method

.method private final selectResult()V
    .registers 5

    .line 247
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    iget v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blacksquircle/ui/editorkit/model/FindResult;

    .line 248
    .local v0, "findResult":Lcom/blacksquircle/ui/editorkit/model/FindResult;
    move-object v1, p0

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getStart()I

    move-result v2

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getEnd()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/blacksquircle/ui/editorkit/ExtensionsKt;->setSelectionRange(Landroid/widget/EditText;II)V

    .line 249
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->scrollToFindResult()V

    .line 250
    return-void
.end method

.method private final shiftSpans(II)V
    .registers 9
    .param p1, "from"    # I
    .param p2, "byHowMuch"    # I

    .line 276
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlightResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;

    .line 277
    .local v1, "span":Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;
    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->getStart()I

    move-result v2

    if-lt v2, p1, :cond_20

    .line 278
    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->getStart()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->setStart(I)V

    .line 280
    :cond_20
    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->getEnd()I

    move-result v2

    if-lt v2, p1, :cond_6

    .line 281
    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->getEnd()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->setEnd(I)V

    .end local v1    # "span":Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;
    goto :goto_6

    .line 287
    :cond_2f
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/model/FindResult;

    .line 291
    .local v1, "findResult":Lcom/blacksquircle/ui/editorkit/model/FindResult;
    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getStart()I

    move-result v2

    if-le v2, p1, :cond_4f

    .line 292
    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getStart()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->setStart(I)V

    .line 294
    :cond_4f
    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getEnd()I

    move-result v2

    if-lt v2, p1, :cond_35

    .line 295
    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getEnd()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->setEnd(I)V

    .end local v1    # "findResult":Lcom/blacksquircle/ui/editorkit/model/FindResult;
    goto :goto_35

    .line 298
    :cond_5e
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->isErrorSpansVisible:Z

    if-eqz v0, :cond_99

    .line 299
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const-string/jumbo v1, "text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/text/Spanned;

    .local v0, "$this$getSpans$iv":Landroid/text/Spanned;
    const/4 v1, 0x0

    .local v1, "start$iv":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    .local v2, "end$iv":I
    const/4 v3, 0x0

    .line 425
    .local v3, "$i$f$getSpans":I
    const-class v4, Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "getSpans(start, end, T::class.java)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    .end local v0    # "$this$getSpans$iv":Landroid/text/Spanned;
    .end local v1    # "start$iv":I
    .end local v2    # "end$iv":I
    .end local v3    # "$i$f$getSpans":I
    move-object v0, v4

    check-cast v0, [Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;

    .line 300
    .local v0, "spans":[Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_89
    if-ge v3, v1, :cond_97

    aget-object v4, v0, v3

    .line 301
    .local v4, "span":Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 300
    .end local v4    # "span":Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_89

    .line 303
    :cond_97
    iput-boolean v2, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->isErrorSpansVisible:Z

    .line 305
    .end local v0    # "spans":[Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;
    :cond_99
    return-void
.end method

.method private final syntaxHighlight()V
    .registers 4

    .line 407
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->cancelSyntaxHighlighting()V

    .line 408
    new-instance v0, Lcom/blacksquircle/ui/editorkit/utils/StylingTask;

    new-instance v1, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText$syntaxHighlight$1;

    invoke-direct {v1, p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText$syntaxHighlight$1;-><init>(Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    new-instance v2, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText$syntaxHighlight$2;

    invoke-direct {v2, p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText$syntaxHighlight$2;-><init>(Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/editorkit/utils/StylingTask;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->task:Lcom/blacksquircle/ui/editorkit/utils/StylingTask;

    .line 416
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->task:Lcom/blacksquircle/ui/editorkit/utils/StylingTask;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/utils/StylingTask;->execute()V

    .line 417
    :cond_1f
    return-void
.end method

.method private final updateSyntaxHighlighting()V
    .registers 25

    .line 308
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_2f2

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/blacksquircle/ui/editorkit/utils/ExtensionsKt;->getTopVisibleLine(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 310
    .local v1, "lineStart":I
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/blacksquircle/ui/editorkit/utils/ExtensionsKt;->getBottomVisibleLine(Landroid/widget/TextView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 312
    .local v2, "lineEnd":I
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->isSyntaxHighlighting:Z

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    const-string/jumbo v5, "text"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/text/Spanned;

    .local v4, "$this$getSpans$iv":Landroid/text/Spanned;
    const/4 v6, 0x0

    .local v6, "start$iv":I
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    .local v7, "end$iv":I
    const/4 v8, 0x0

    .line 426
    .local v8, "$i$f$getSpans":I
    const-class v9, Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;

    invoke-interface {v4, v6, v7, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    const-string v10, "getSpans(start, end, T::class.java)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    .end local v4    # "$this$getSpans$iv":Landroid/text/Spanned;
    .end local v6    # "start$iv":I
    .end local v7    # "end$iv":I
    .end local v8    # "$i$f$getSpans":I
    move-object v4, v9

    check-cast v4, [Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;

    .line 314
    .local v4, "textSyntaxSpans":[Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    array-length v6, v4

    const/4 v8, 0x0

    :goto_4f
    if-ge v8, v6, :cond_5d

    aget-object v9, v4, v8

    .line 321
    .local v9, "span":Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11, v9}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 314
    .end local v9    # "span":Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    .line 323
    :cond_5d
    iget-object v6, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlightResults:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_63
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0x21

    if-eqz v8, :cond_196

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;

    .line 324
    .local v8, "result":Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;
    invoke-virtual {v8}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->getStart()I

    move-result v11

    if-ltz v11, :cond_87

    invoke-virtual {v8}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->getEnd()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v12

    if-gt v11, v12, :cond_87

    const/4 v11, 0x1

    goto :goto_88

    :cond_87
    const/4 v11, 0x0

    .line 325
    .local v11, "isInText":Z
    :goto_88
    invoke-virtual {v8}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->getStart()I

    move-result v12

    invoke-virtual {v8}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->getEnd()I

    move-result v13

    if-gt v12, v13, :cond_94

    const/4 v12, 0x1

    goto :goto_95

    :cond_94
    const/4 v12, 0x0

    .line 326
    .local v12, "isValid":Z
    :goto_95
    invoke-virtual {v8}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->getStart()I

    move-result v13

    if-gt v1, v13, :cond_9f

    if-gt v13, v2, :cond_9f

    const/4 v13, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v13, 0x0

    :goto_a0
    if-nez v13, :cond_b1

    .line 327
    invoke-virtual {v8}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->getStart()I

    move-result v13

    if-gt v13, v2, :cond_af

    invoke-virtual {v8}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->getEnd()I

    move-result v13

    if-lt v13, v1, :cond_af

    goto :goto_b1

    :cond_af
    const/4 v13, 0x0

    goto :goto_b2

    :cond_b1
    :goto_b1
    const/4 v13, 0x1

    .line 326
    :goto_b2
    nop

    .line 328
    .local v13, "isVisible":Z
    if-eqz v11, :cond_193

    if-eqz v12, :cond_193

    if-eqz v13, :cond_193

    .line 329
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v14

    .line 330
    new-instance v15, Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;

    .line 331
    new-instance v3, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;

    .line 332
    invoke-virtual {v8}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->getTokenType()Lcom/blacksquircle/ui/language/base/model/TokenType;

    move-result-object v16

    sget-object v17, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {v16 .. v16}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v16

    aget v16, v17, v16

    packed-switch v16, :pswitch_data_2f4

    .line 347
    new-instance v3, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v3}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v3

    :pswitch_d6
    iget-object v7, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getEntityRefColor()I

    move-result v7

    move/from16 v17, v7

    goto/16 :goto_160

    .line 346
    :pswitch_e0
    iget-object v7, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getAttrValueColor()I

    move-result v7

    move/from16 v17, v7

    goto/16 :goto_160

    .line 345
    :pswitch_ea
    iget-object v7, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getAttrNameColor()I

    move-result v7

    move/from16 v17, v7

    goto/16 :goto_160

    .line 344
    :pswitch_f4
    iget-object v7, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getTagNameColor()I

    move-result v7

    move/from16 v17, v7

    goto/16 :goto_160

    .line 343
    :pswitch_fe
    iget-object v7, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getTagColor()I

    move-result v7

    move/from16 v17, v7

    goto :goto_160

    .line 342
    :pswitch_107
    iget-object v7, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getCommentColor()I

    move-result v7

    move/from16 v17, v7

    goto :goto_160

    .line 341
    :pswitch_110
    iget-object v7, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getStringColor()I

    move-result v7

    move/from16 v17, v7

    goto :goto_160

    .line 340
    :pswitch_119
    iget-object v7, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getMethodColor()I

    move-result v7

    move/from16 v17, v7

    goto :goto_160

    .line 339
    :pswitch_122
    iget-object v7, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getVariableColor()I

    move-result v7

    move/from16 v17, v7

    goto :goto_160

    .line 338
    :pswitch_12b
    iget-object v7, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getPreprocessorColor()I

    move-result v7

    move/from16 v17, v7

    goto :goto_160

    .line 337
    :pswitch_134
    iget-object v7, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getLangConstColor()I

    move-result v7

    move/from16 v17, v7

    goto :goto_160

    .line 336
    :pswitch_13d
    iget-object v7, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getTypeColor()I

    move-result v7

    move/from16 v17, v7

    goto :goto_160

    .line 335
    :pswitch_146
    iget-object v7, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getKeywordColor()I

    move-result v7

    move/from16 v17, v7

    goto :goto_160

    .line 334
    :pswitch_14f
    iget-object v7, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getOperatorColor()I

    move-result v7

    move/from16 v17, v7

    goto :goto_160

    .line 333
    :pswitch_158
    iget-object v7, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v7}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getNumberColor()I

    move-result v7

    move/from16 v17, v7

    .line 331
    :goto_160
    const/16 v22, 0x1e

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v23}, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 330
    invoke-direct {v15, v3}, Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;-><init>(Lcom/blacksquircle/ui/editorkit/model/StyleSpan;)V

    .line 351
    invoke-virtual {v8}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->getStart()I

    move-result v3

    if-ge v3, v1, :cond_17c

    move v3, v1

    goto :goto_180

    :cond_17c
    invoke-virtual {v8}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->getStart()I

    move-result v3

    .line 352
    :goto_180
    invoke-virtual {v8}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->getEnd()I

    move-result v7

    if-le v7, v2, :cond_188

    move v7, v2

    goto :goto_18c

    :cond_188
    invoke-virtual {v8}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;->getEnd()I

    move-result v7

    .line 353
    :goto_18c
    nop

    .line 329
    invoke-interface {v14, v15, v3, v7, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    const/4 v3, 0x1

    .end local v8    # "result":Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;
    .end local v11    # "isInText":Z
    .end local v12    # "isValid":Z
    .end local v13    # "isVisible":Z
    goto/16 :goto_63

    .line 328
    .restart local v8    # "result":Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;
    .restart local v11    # "isInText":Z
    .restart local v12    # "isValid":Z
    .restart local v13    # "isVisible":Z
    :cond_193
    const/4 v3, 0x1

    goto/16 :goto_63

    .line 357
    .end local v8    # "result":Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;
    .end local v11    # "isInText":Z
    .end local v12    # "isValid":Z
    .end local v13    # "isVisible":Z
    :cond_196
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->isSyntaxHighlighting:Z

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/text/Spanned;

    .local v6, "$this$getSpans$iv":Landroid/text/Spanned;
    const/4 v7, 0x0

    .local v7, "start$iv":I
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    .local v8, "end$iv":I
    const/4 v11, 0x0

    .line 427
    .local v11, "$i$f$getSpans":I
    const-class v12, Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;

    invoke-interface {v6, v7, v8, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    .end local v6    # "$this$getSpans$iv":Landroid/text/Spanned;
    .end local v7    # "start$iv":I
    .end local v8    # "end$iv":I
    .end local v11    # "$i$f$getSpans":I
    move-object v6, v12

    check-cast v6, [Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;

    .line 360
    .local v6, "textFindSpans":[Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1ba
    if-ge v8, v7, :cond_1c8

    aget-object v11, v6, v8

    .line 361
    .local v11, "span":Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12, v11}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 360
    .end local v11    # "span":Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1ba

    .line 363
    :cond_1c8
    iget-object v7, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultStyleSpan:Lcom/blacksquircle/ui/editorkit/model/StyleSpan;

    if-eqz v7, :cond_275

    .local v7, "styleSpan":Lcom/blacksquircle/ui/editorkit/model/StyleSpan;
    const/4 v8, 0x0

    .line 364
    .local v8, "$i$a$-let-SyntaxHighlightEditText$updateSyntaxHighlighting$1":I
    iget-object v11, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1d3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_26e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/blacksquircle/ui/editorkit/model/FindResult;

    .line 365
    .local v12, "result":Lcom/blacksquircle/ui/editorkit/model/FindResult;
    invoke-virtual {v12}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getStart()I

    move-result v13

    if-ltz v13, :cond_1f5

    invoke-virtual {v12}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getEnd()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->length()I

    move-result v14

    if-gt v13, v14, :cond_1f5

    const/4 v13, 0x1

    goto :goto_1f6

    :cond_1f5
    const/4 v13, 0x0

    .line 366
    .local v13, "isInText":Z
    :goto_1f6
    invoke-virtual {v12}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getStart()I

    move-result v14

    invoke-virtual {v12}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getEnd()I

    move-result v15

    if-gt v14, v15, :cond_202

    const/4 v14, 0x1

    goto :goto_203

    :cond_202
    const/4 v14, 0x0

    .line 367
    .local v14, "isValid":Z
    :goto_203
    invoke-virtual {v12}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getStart()I

    move-result v15

    if-gt v1, v15, :cond_20d

    if-gt v15, v2, :cond_20d

    const/4 v15, 0x1

    goto :goto_20e

    :cond_20d
    const/4 v15, 0x0

    :goto_20e
    if-nez v15, :cond_21f

    .line 368
    invoke-virtual {v12}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getStart()I

    move-result v15

    if-gt v15, v2, :cond_21d

    invoke-virtual {v12}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getEnd()I

    move-result v15

    if-lt v15, v1, :cond_21d

    goto :goto_21f

    :cond_21d
    const/4 v15, 0x0

    goto :goto_220

    :cond_21f
    :goto_21f
    const/4 v15, 0x1

    .line 367
    :goto_220
    nop

    .line 369
    .local v15, "isVisible":Z
    if-eqz v13, :cond_25f

    if-eqz v14, :cond_25f

    if-eqz v15, :cond_25f

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 371
    new-instance v9, Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;

    invoke-direct {v9, v7}, Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;-><init>(Lcom/blacksquircle/ui/editorkit/model/StyleSpan;)V

    .line 372
    move-object/from16 v17, v4

    .end local v4    # "textSyntaxSpans":[Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    .local v17, "textSyntaxSpans":[Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    invoke-virtual {v12}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getStart()I

    move-result v4

    if-ge v4, v1, :cond_23a

    move v4, v1

    goto :goto_23e

    :cond_23a
    invoke-virtual {v12}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getStart()I

    move-result v4

    .line 373
    :goto_23e
    move-object/from16 v18, v6

    .end local v6    # "textFindSpans":[Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    .local v18, "textFindSpans":[Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    invoke-virtual {v12}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getEnd()I

    move-result v6

    if-le v6, v2, :cond_248

    move v6, v2

    goto :goto_24c

    :cond_248
    invoke-virtual {v12}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getEnd()I

    move-result v6

    .line 374
    :goto_24c
    nop

    .line 370
    move-object/from16 v19, v7

    const/16 v7, 0x21

    .end local v7    # "styleSpan":Lcom/blacksquircle/ui/editorkit/model/StyleSpan;
    .local v19, "styleSpan":Lcom/blacksquircle/ui/editorkit/model/StyleSpan;
    invoke-interface {v3, v9, v4, v6, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v4, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    const/4 v3, 0x0

    const/16 v9, 0x21

    .end local v12    # "result":Lcom/blacksquircle/ui/editorkit/model/FindResult;
    .end local v13    # "isInText":Z
    .end local v14    # "isValid":Z
    .end local v15    # "isVisible":Z
    goto/16 :goto_1d3

    .line 369
    .end local v17    # "textSyntaxSpans":[Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    .end local v18    # "textFindSpans":[Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    .end local v19    # "styleSpan":Lcom/blacksquircle/ui/editorkit/model/StyleSpan;
    .restart local v4    # "textSyntaxSpans":[Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    .restart local v6    # "textFindSpans":[Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    .restart local v7    # "styleSpan":Lcom/blacksquircle/ui/editorkit/model/StyleSpan;
    .restart local v12    # "result":Lcom/blacksquircle/ui/editorkit/model/FindResult;
    .restart local v13    # "isInText":Z
    .restart local v14    # "isValid":Z
    .restart local v15    # "isVisible":Z
    :cond_25f
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    const/16 v7, 0x21

    .end local v4    # "textSyntaxSpans":[Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    .end local v6    # "textFindSpans":[Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    .end local v7    # "styleSpan":Lcom/blacksquircle/ui/editorkit/model/StyleSpan;
    .restart local v17    # "textSyntaxSpans":[Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    .restart local v18    # "textFindSpans":[Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    .restart local v19    # "styleSpan":Lcom/blacksquircle/ui/editorkit/model/StyleSpan;
    move-object/from16 v7, v19

    const/4 v3, 0x0

    const/16 v9, 0x21

    goto/16 :goto_1d3

    .line 378
    .end local v12    # "result":Lcom/blacksquircle/ui/editorkit/model/FindResult;
    .end local v13    # "isInText":Z
    .end local v14    # "isValid":Z
    .end local v15    # "isVisible":Z
    .end local v17    # "textSyntaxSpans":[Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    .end local v18    # "textFindSpans":[Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    .end local v19    # "styleSpan":Lcom/blacksquircle/ui/editorkit/model/StyleSpan;
    .restart local v4    # "textSyntaxSpans":[Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    .restart local v6    # "textFindSpans":[Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    .restart local v7    # "styleSpan":Lcom/blacksquircle/ui/editorkit/model/StyleSpan;
    :cond_26e
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v4    # "textSyntaxSpans":[Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    .end local v6    # "textFindSpans":[Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    .end local v7    # "styleSpan":Lcom/blacksquircle/ui/editorkit/model/StyleSpan;
    .end local v8    # "$i$a$-let-SyntaxHighlightEditText$updateSyntaxHighlighting$1":I
    .restart local v17    # "textSyntaxSpans":[Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    .restart local v18    # "textFindSpans":[Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    goto :goto_279

    .line 363
    .end local v17    # "textSyntaxSpans":[Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    .end local v18    # "textFindSpans":[Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    .restart local v4    # "textSyntaxSpans":[Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    .restart local v6    # "textFindSpans":[Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    :cond_275
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    .end local v4    # "textSyntaxSpans":[Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    .end local v6    # "textFindSpans":[Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    .restart local v17    # "textSyntaxSpans":[Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    .restart local v18    # "textFindSpans":[Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    :goto_279
    nop

    .line 380
    iget-boolean v3, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->useSpacesInsteadOfTabs:Z

    if-nez v3, :cond_2ef

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/text/Spanned;

    .local v3, "$this$getSpans$iv":Landroid/text/Spanned;
    const/4 v4, 0x0

    .local v4, "start$iv":I
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    .local v5, "end$iv":I
    const/4 v6, 0x0

    .line 428
    .local v6, "$i$f$getSpans":I
    const-class v7, Lcom/blacksquircle/ui/editorkit/model/TabWidthSpan;

    invoke-interface {v3, v4, v5, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    .end local v3    # "$this$getSpans$iv":Landroid/text/Spanned;
    .end local v4    # "start$iv":I
    .end local v5    # "end$iv":I
    .end local v6    # "$i$f$getSpans":I
    move-object v3, v7

    check-cast v3, [Lcom/blacksquircle/ui/editorkit/model/TabWidthSpan;

    .line 383
    .local v3, "textTabSpans":[Lcom/blacksquircle/ui/editorkit/model/TabWidthSpan;
    array-length v4, v3

    const/4 v7, 0x0

    :goto_29f
    if-ge v7, v4, :cond_2ad

    aget-object v5, v3, v7

    .line 384
    .local v5, "span":Lcom/blacksquircle/ui/editorkit/model/TabWidthSpan;
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 383
    .end local v5    # "span":Lcom/blacksquircle/ui/editorkit/model/TabWidthSpan;
    add-int/lit8 v7, v7, 0x1

    goto :goto_29f

    .line 387
    :cond_2ad
    const-string v4, "\t"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 388
    .local v4, "tabPattern":Ljava/util/regex/Pattern;
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v1, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 389
    .local v5, "matcher":Ljava/util/regex/Matcher;
    :cond_2bf
    :goto_2bf
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2ef

    .line 390
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    add-int/2addr v6, v1

    .line 391
    .local v6, "start":I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    add-int/2addr v7, v1

    .line 392
    .local v7, "end":I
    if-ltz v6, :cond_2bf

    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    if-gt v7, v8, :cond_2bf

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 394
    new-instance v9, Lcom/blacksquircle/ui/editorkit/model/TabWidthSpan;

    iget v10, v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->tabWidth:I

    invoke-direct {v9, v10}, Lcom/blacksquircle/ui/editorkit/model/TabWidthSpan;-><init>(I)V

    .line 395
    nop

    .line 396
    nop

    .line 397
    nop

    .line 393
    const/16 v10, 0x12

    invoke-interface {v8, v9, v6, v7, v10}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .end local v6    # "start":I
    .end local v7    # "end":I
    goto :goto_2bf

    .line 402
    .end local v3    # "textTabSpans":[Lcom/blacksquircle/ui/editorkit/model/TabWidthSpan;
    .end local v4    # "tabPattern":Ljava/util/regex/Pattern;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :cond_2ef
    invoke-virtual/range {p0 .. p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->postInvalidate()V

    .line 404
    .end local v1    # "lineStart":I
    .end local v2    # "lineEnd":I
    .end local v17    # "textSyntaxSpans":[Lcom/blacksquircle/ui/editorkit/model/SyntaxHighlightSpan;
    .end local v18    # "textFindSpans":[Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    :cond_2f2
    return-void

    nop

    :pswitch_data_2f4
    .packed-switch 0x1
        :pswitch_158
        :pswitch_14f
        :pswitch_146
        :pswitch_13d
        :pswitch_134
        :pswitch_12b
        :pswitch_122
        :pswitch_119
        :pswitch_110
        :pswitch_107
        :pswitch_fe
        :pswitch_f4
        :pswitch_ea
        :pswitch_e0
        :pswitch_d6
    .end packed-switch
.end method


# virtual methods
.method public final clearFindResultSpans()V
    .registers 8

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    .line 239
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 240
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string/jumbo v2, "text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/text/Spanned;

    .local v1, "$this$getSpans$iv":Landroid/text/Spanned;
    const/4 v2, 0x0

    .local v2, "start$iv":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    .local v3, "end$iv":I
    const/4 v4, 0x0

    .line 424
    .local v4, "$i$f$getSpans":I
    const-class v5, Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;

    invoke-interface {v1, v2, v3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "getSpans(start, end, T::class.java)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .end local v1    # "$this$getSpans$iv":Landroid/text/Spanned;
    .end local v2    # "start$iv":I
    .end local v3    # "end$iv":I
    .end local v4    # "$i$f$getSpans":I
    move-object v1, v5

    check-cast v1, [Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;

    .line 241
    .local v1, "spans":[Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    array-length v2, v1

    :goto_2d
    if-ge v0, v2, :cond_3b

    aget-object v3, v1, v0

    .line 242
    .local v3, "span":Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 241
    .end local v3    # "span":Lcom/blacksquircle/ui/editorkit/model/FindResultSpan;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 244
    :cond_3b
    return-void
.end method

.method protected doAfterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "text"    # Landroid/text/Editable;

    .line 115
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->isSyntaxHighlighting:Z

    if-nez v0, :cond_d

    .line 116
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getSelectionStart()I

    move-result v0

    iget v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->addedTextCount:I

    invoke-direct {p0, v0, v1}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->shiftSpans(II)V

    .line 118
    :cond_d
    const/4 v0, 0x0

    iput v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->addedTextCount:I

    .line 119
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlight()V

    .line 120
    return-void
.end method

.method protected doBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 99
    iget v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->addedTextCount:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->addedTextCount:I

    .line 100
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->cancelSyntaxHighlighting()V

    .line 101
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->isSyntaxHighlighting:Z

    if-nez v0, :cond_f

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->doBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 104
    :cond_f
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->abortFling()V

    .line 105
    return-void
.end method

.method protected doOnTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 108
    iget v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->addedTextCount:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->addedTextCount:I

    .line 109
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->isSyntaxHighlighting:Z

    if-nez v0, :cond_c

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->doOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 112
    :cond_c
    return-void
.end method

.method public final find(Lcom/blacksquircle/ui/editorkit/model/FindParams;)V
    .registers 7
    .param p1, "params"    # Lcom/blacksquircle/ui/editorkit/model/FindParams;

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->clearFindResultSpans()V

    .line 155
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/FindParams;->getQuery()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_f8

    .line 156
    nop

    .line 157
    nop

    .line 158
    :try_start_1b
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/FindParams;->getRegex()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/FindParams;->getMatchCase()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/FindParams;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    goto/16 :goto_c5

    .line 159
    :cond_31
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/FindParams;->getRegex()Z

    move-result v0

    const/16 v1, 0x42

    if-eqz v0, :cond_4a

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/FindParams;->getMatchCase()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 160
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/FindParams;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 161
    nop

    .line 159
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    goto/16 :goto_c5

    .line 163
    :cond_4a
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/FindParams;->getWordsOnly()Z

    move-result v0
    :try_end_4e
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1b .. :try_end_4e} :catch_f7

    const-string v2, "\\s"

    if-eqz v0, :cond_76

    :try_start_52
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/FindParams;->getMatchCase()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/FindParams;->getQuery()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    goto :goto_c5

    .line 164
    :cond_76
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/FindParams;->getWordsOnly()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/FindParams;->getMatchCase()Z

    move-result v0

    if-nez v0, :cond_a5

    .line 165
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/FindParams;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    nop

    .line 164
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    goto :goto_c5

    .line 168
    :cond_a5
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/FindParams;->getMatchCase()Z

    move-result v0

    if-eqz v0, :cond_b8

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/FindParams;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    goto :goto_c5

    .line 170
    :cond_b8
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/model/FindParams;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    nop

    .line 169
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 157
    :goto_c5
    nop

    .line 174
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 175
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_d0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 176
    new-instance v2, Lcom/blacksquircle/ui/editorkit/model/FindResult;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/blacksquircle/ui/editorkit/model/FindResult;-><init>(II)V

    .line 177
    .local v2, "findResult":Lcom/blacksquircle/ui/editorkit/model/FindResult;
    iget-object v3, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d0

    .line 179
    .end local v2    # "findResult":Lcom/blacksquircle/ui/editorkit/model/FindResult;
    :cond_e9
    iget-object v2, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f8

    .line 180
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectResult()V
    :try_end_f6
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_52 .. :try_end_f6} :catch_f7

    .end local v0    # "pattern":Ljava/util/regex/Pattern;
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    goto :goto_f8

    .line 182
    :catch_f7
    move-exception v0

    .line 186
    :cond_f8
    :goto_f8
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->updateSyntaxHighlighting()V

    .line 187
    return-void
.end method

.method public final find(Ljava/util/List;)V
    .registers 5
    .param p1, "findResults"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/blacksquircle/ui/editorkit/model/FindResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "findResults"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->clearFindResultSpans()V

    .line 191
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/model/FindResult;

    .line 192
    .local v1, "findResult":Lcom/blacksquircle/ui/editorkit/model/FindResult;
    iget-object v2, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 194
    .end local v1    # "findResult":Lcom/blacksquircle/ui/editorkit/model/FindResult;
    :cond_1e
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 195
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectResult()V

    .line 197
    :cond_2a
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->updateSyntaxHighlighting()V

    .line 198
    return-void
.end method

.method public final findNext()V
    .registers 3

    .line 201
    iget v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_15

    .line 202
    iget v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    .line 203
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectResult()V

    .line 205
    :cond_15
    return-void
.end method

.method public final findPrevious()V
    .registers 3

    .line 208
    iget v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    if-lez v0, :cond_17

    iget v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 209
    iget v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    .line 210
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectResult()V

    .line 212
    :cond_17
    return-void
.end method

.method public final getColorScheme()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    return-object v0
.end method

.method public final getLanguage()Lcom/blacksquircle/ui/language/base/Language;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->language:Lcom/blacksquircle/ui/language/base/Language;

    return-object v0
.end method

.method public final getTabWidth()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->tabWidth:I

    return v0
.end method

.method public final getUseSpacesInsteadOfTabs()Z
    .registers 2

    .line 54
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->useSpacesInsteadOfTabs:Z

    return v0
.end method

.method protected onColorSchemeChanged()V
    .registers 10

    .line 127
    new-instance v8, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;

    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getFindResultBackgroundColor()I

    move-result v1

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/blacksquircle/ui/editorkit/model/StyleSpan;-><init>(IZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResultStyleSpan:Lcom/blacksquircle/ui/editorkit/model/StyleSpan;

    .line 128
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->setTextColor(I)V

    .line 129
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getCursorColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/blacksquircle/ui/editorkit/utils/ReflectionKt;->setCursorDrawableColor(Landroid/widget/TextView;I)V

    .line 130
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->setBackgroundColor(I)V

    .line 131
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/ColorScheme;->getSelectionColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->setHighlightColor(I)V

    .line 132
    return-void
.end method

.method protected onLanguageChanged()V
    .registers 1

    .line 123
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlight()V

    .line 124
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 5
    .param p1, "horiz"    # I
    .param p2, "vert"    # I
    .param p3, "oldHoriz"    # I
    .param p4, "oldVert"    # I

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->onScrollChanged(IIII)V

    .line 95
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->updateSyntaxHighlighting()V

    .line 96
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 89
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->updateSyntaxHighlighting()V

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->onSizeChanged(IIII)V

    .line 91
    return-void
.end method

.method public final replaceAllFindResults(Ljava/lang/String;)V
    .registers 7
    .param p1, "replaceText"    # Ljava/lang/String;

    const-string v0, "replaceText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 228
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "index":I
    :goto_22
    const/4 v2, -0x1

    if-ge v2, v1, :cond_40

    .line 229
    iget-object v2, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/blacksquircle/ui/editorkit/model/FindResult;

    .line 230
    .local v2, "findResultSpan":Lcom/blacksquircle/ui/editorkit/model/FindResult;
    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getStart()I

    move-result v3

    invoke-virtual {v2}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getEnd()I

    move-result v4

    invoke-virtual {v0, v3, v4, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v3, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 228
    .end local v2    # "findResultSpan":Lcom/blacksquircle/ui/editorkit/model/FindResult;
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 233
    .end local v1    # "index":I
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_49
    return-void
.end method

.method public final replaceFindResult(Ljava/lang/String;)V
    .registers 7
    .param p1, "replaceText"    # Ljava/lang/String;

    const-string v0, "replaceText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 216
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    iget v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blacksquircle/ui/editorkit/model/FindResult;

    .line 217
    .local v0, "findResult":Lcom/blacksquircle/ui/editorkit/model/FindResult;
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getStart()I

    move-result v2

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/model/FindResult;->getEnd()I

    move-result v3

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 218
    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 219
    iget v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    iget-object v2, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_40

    .line 220
    iget v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->selectedFindResult:I

    .line 223
    .end local v0    # "findResult":Lcom/blacksquircle/ui/editorkit/model/FindResult;
    :cond_40
    return-void
.end method

.method public final setColorScheme(Lcom/blacksquircle/ui/editorkit/model/ColorScheme;)V
    .registers 3
    .param p1, "value"    # Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->colorScheme:Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    .line 51
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onColorSchemeChanged()V

    .line 52
    return-void
.end method

.method public final setErrorLine(I)V
    .registers 12
    .param p1, "lineNumber"    # I

    .line 143
    if-lez p1, :cond_46

    .line 144
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForStartOfLine(I)I

    move-result v0

    .line 145
    .local v0, "lineStart":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForEndOfLine(I)I

    move-result v1

    .line 146
    .local v1, "lineEnd":I
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_46

    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v1, v2, :cond_46

    const/4 v2, -0x1

    if-le v0, v2, :cond_46

    if-le v1, v2, :cond_46

    .line 147
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->isErrorSpansVisible:Z

    .line 148
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    new-instance v9, Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/blacksquircle/ui/editorkit/model/ErrorSpan;-><init>(FFIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v3, 0x21

    invoke-interface {v2, v9, v0, v1, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 151
    .end local v0    # "lineStart":I
    .end local v1    # "lineEnd":I
    :cond_46
    return-void
.end method

.method public final setLanguage(Lcom/blacksquircle/ui/language/base/Language;)V
    .registers 2
    .param p1, "value"    # Lcom/blacksquircle/ui/language/base/Language;

    .line 44
    iput-object p1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->language:Lcom/blacksquircle/ui/language/base/Language;

    .line 45
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onLanguageChanged()V

    .line 46
    return-void
.end method

.method public final setTabWidth(I)V
    .registers 2
    .param p1, "<set-?>"    # I

    .line 55
    iput p1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->tabWidth:I

    return-void
.end method

.method public setTextContent(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlightResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 83
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->findResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/widget/internal/UndoRedoEditText;->setTextContent(Ljava/lang/CharSequence;)V

    .line 85
    invoke-direct {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlight()V

    .line 86
    return-void
.end method

.method public final setUseSpacesInsteadOfTabs(Z)V
    .registers 2
    .param p1, "<set-?>"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->useSpacesInsteadOfTabs:Z

    return-void
.end method

.method public final tab()Ljava/lang/String;
    .registers 3

    .line 135
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->useSpacesInsteadOfTabs:Z

    if-eqz v0, :cond_f

    .line 136
    const-string v0, " "

    check-cast v0, Ljava/lang/CharSequence;

    iget v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->tabWidth:I

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 138
    :cond_f
    const-string v0, "\t"

    .line 135
    :goto_11
    return-object v0
.end method
