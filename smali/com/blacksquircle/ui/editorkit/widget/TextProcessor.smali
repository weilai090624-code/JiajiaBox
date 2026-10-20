.class public Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;
.super Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;
.source "TextProcessor.kt"

# interfaces
.implements Lcom/blacksquircle/ui/editorkit/plugin/base/PluginContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/editorkit/widget/TextProcessor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextProcessor.kt\ncom/blacksquircle/ui/editorkit/widget/TextProcessor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,258:1\n1#2:259\n1747#3,3:260\n*S KotlinDebug\n*F\n+ 1 TextProcessor.kt\ncom/blacksquircle/ui/editorkit/widget/TextProcessor\n*L\n256#1:260,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 Z2\u00020\u00012\u00020\u0002:\u0001ZB%\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0008H\u0014J\u0012\u0010\u0014\u001a\u00020\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J*\u0010\u0017\u001a\u00020\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u0008H\u0014J*\u0010\u001c\u001a\u00020\u00112\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0008H\u0014J!\u0010\u001e\u001a\u0004\u0018\u0001H\u001f\"\u0008\u0008\u0000\u0010\u001f*\u00020\u000e2\u0006\u0010 \u001a\u00020!H\u0016\u00a2\u0006\u0002\u0010\"J\u0008\u0010#\u001a\u00020\u000bH\u0016J\u0010\u0010$\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020!H\u0016J\u001f\u0010%\u001a\u00020\u0011\"\u0008\u0008\u0000\u0010\u001f*\u00020\u000e2\u0006\u0010&\u001a\u0002H\u001fH\u0016\u00a2\u0006\u0002\u0010\'J\u0008\u0010(\u001a\u00020\u0011H\u0014J\u0012\u0010)\u001a\u00020\u00112\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0014J\u001a\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u00082\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u001a\u00100\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u00082\u0008\u0010.\u001a\u0004\u0018\u00010/H\u0016J\u0008\u00101\u001a\u00020\u0011H\u0014J0\u00102\u001a\u00020\u00112\u0006\u00103\u001a\u00020\u000b2\u0006\u00104\u001a\u00020\u00082\u0006\u00105\u001a\u00020\u00082\u0006\u00106\u001a\u00020\u00082\u0006\u00107\u001a\u00020\u0008H\u0014J\u0018\u00108\u001a\u00020\u00112\u0006\u00109\u001a\u00020\u00082\u0006\u0010:\u001a\u00020\u0008H\u0014J(\u0010;\u001a\u00020\u00112\u0006\u0010<\u001a\u00020\u00082\u0006\u0010=\u001a\u00020\u00082\u0006\u0010>\u001a\u00020\u00082\u0006\u0010?\u001a\u00020\u0008H\u0014J\u0018\u0010@\u001a\u00020\u00112\u0006\u0010A\u001a\u00020\u00082\u0006\u0010B\u001a\u00020\u0008H\u0014J(\u0010C\u001a\u00020\u00112\u0006\u0010D\u001a\u00020\u00082\u0006\u0010E\u001a\u00020\u00082\u0006\u0010F\u001a\u00020\u00082\u0006\u0010G\u001a\u00020\u0008H\u0014J\u0010\u0010H\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020IH\u0017J\u0010\u0010\u000c\u001a\u00020\u00112\u0006\u0010J\u001a\u00020KH\u0016J \u0010L\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00082\u0006\u0010M\u001a\u00020\u0008H\u0014J\u0010\u0010N\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0008H\u0014J\u0010\u0010O\u001a\u00020\u00112\u0006\u0010P\u001a\u00020\u000bH\u0016J\u0010\u0010Q\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0018H\u0016J\u0010\u0010R\u001a\u00020\u00112\u0006\u0010S\u001a\u00020TH\u0016J\u0012\u0010U\u001a\u00020\u00112\u0008\u0010V\u001a\u0004\u0018\u00010WH\u0016J\u0008\u0010X\u001a\u00020\u0011H\u0016J\u0010\u0010Y\u001a\u00020\u00112\u0006\u0010 \u001a\u00020!H\u0016R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006["
    }
    d2 = {
        "Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;",
        "Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;",
        "Lcom/blacksquircle/ui/editorkit/plugin/base/PluginContainer;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "_freezesText",
        "",
        "plugins",
        "Ljava/util/HashSet;",
        "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
        "Lkotlin/collections/HashSet;",
        "addLine",
        "",
        "lineNumber",
        "lineStart",
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
        "findPlugin",
        "T",
        "pluginId",
        "",
        "(Ljava/lang/String;)Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
        "getFreezesText",
        "hasPlugin",
        "installPlugin",
        "plugin",
        "(Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;)V",
        "onColorSchemeChanged",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
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
        "onTouchEvent",
        "Landroid/view/MotionEvent;",
        "supplier",
        "Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;",
        "processLine",
        "lineEnd",
        "removeLine",
        "setFreezesText",
        "freezesText",
        "setTextContent",
        "setTextSize",
        "size",
        "",
        "setTypeface",
        "tf",
        "Landroid/graphics/Typeface;",
        "showDropDown",
        "uninstallPlugin",
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
.field public static final Companion:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor$Companion;

.field private static final TAG:Ljava/lang/String; = "TextProcessor"


# instance fields
.field private _freezesText:Z

.field private final plugins:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$E3BGyrbCaCBFdF4bKiwrBWfg2fk(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->onSelectionChanged$lambda$0(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$OHN6i8oTKjz9Vx4u0hGjQyEjyqg(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setTextSize$lambda$1(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$V9x4QJ61TZM2Ht7iLRcw6glrOTg(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->setTypeface$lambda$2(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;Landroid/graphics/Typeface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->Companion:Lcom/blacksquircle/ui/editorkit/widget/TextProcessor$Companion;

    return-void
.end method

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

    invoke-direct/range {v1 .. v6}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->_freezesText:Z

    .line 33
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 33
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 35
    const/4 p2, 0x0

    .line 33
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 36
    const p3, 0x101006b

    .line 33
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 258
    return-void
.end method

.method private static final onSelectionChanged$lambda$0(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;II)V
    .locals 2
    .param p0, "this$0"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;
    .param p1, "$selStart"    # I
    .param p2, "$selEnd"    # I

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 111
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1, p2}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onSelectionChanged(II)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method private static final setTextSize$lambda$1(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;F)V
    .locals 2
    .param p0, "this$0"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;
    .param p1, "$size"    # F

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 197
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->setTextSize(F)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method

.method private static final setTypeface$lambda$2(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "this$0"    # Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;
    .param p1, "$tf"    # Landroid/graphics/Typeface;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 206
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->setTypeface(Landroid/graphics/Typeface;)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method


# virtual methods
.method protected addLine(II)V
    .locals 2
    .param p1, "lineNumber"    # I
    .param p2, "lineStart"    # I

    .line 173
    invoke-super {p0, p1, p2}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->addLine(II)V

    .line 174
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 175
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1, p2}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->addLine(II)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method protected doAfterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "text"    # Landroid/text/Editable;

    .line 159
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->doAfterTextChanged(Landroid/text/Editable;)V

    .line 160
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 161
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->afterTextChanged(Landroid/text/Editable;)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method protected doBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->doBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 146
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 147
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method protected doOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->doOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 153
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 154
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onTextChanged(Ljava/lang/CharSequence;III)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public findPlugin(Ljava/lang/String;)Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    .locals 6
    .param p1, "pluginId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "pluginId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 259
    .local v3, "it":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    const/4 v4, 0x0

    .line 252
    .local v4, "$i$a$-find-TextProcessor$findPlugin$1":I
    invoke-virtual {v3}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getPluginId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .end local v3    # "it":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    .end local v4    # "$i$a$-find-TextProcessor$findPlugin$1":I
    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    instance-of v0, v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    if-eqz v0, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    :cond_2
    return-object v2
.end method

.method public getFreezesText()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->_freezesText:Z

    return v0
.end method

.method public hasPlugin(Ljava/lang/String;)Z
    .locals 8
    .param p1, "pluginId"    # Ljava/lang/String;

    const-string v0, "pluginId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 260
    .local v1, "$i$f$any":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .local v5, "it":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    const/4 v6, 0x0

    .line 256
    .local v6, "$i$a$-any-TextProcessor$hasPlugin$1":I
    invoke-virtual {v5}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getPluginId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 261
    .end local v5    # "it":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    .end local v6    # "$i$a$-any-TextProcessor$hasPlugin$1":I
    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 262
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 256
    .end local v0    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$any":I
    :goto_0
    return v3
.end method

.method public installPlugin(Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;)V
    .locals 2
    .param p1, "plugin"    # Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;",
            ">(TT;)V"
        }
    .end annotation

    const-string v0, "plugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getPluginId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->hasPlugin(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {p1, p0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onAttached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    goto :goto_0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plugin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is already attached."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void
.end method

.method protected onColorSchemeChanged()V
    .locals 3

    .line 80
    invoke-super {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onColorSchemeChanged()V

    .line 81
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 82
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getColorScheme()Lcom/blacksquircle/ui/editorkit/model/ColorScheme;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onColorSchemeChanged(Lcom/blacksquircle/ui/editorkit/model/ColorScheme;)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 61
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 62
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->drawBehind(Landroid/graphics/Canvas;)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 65
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 66
    .restart local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onDraw(Landroid/graphics/Canvas;)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_1

    .line 68
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 136
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 137
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1, p2}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const/4 v0, 0x1

    return v0

    .line 141
    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 127
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 128
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1, p2}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    const/4 v0, 0x1

    return v0

    .line 132
    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLanguageChanged()V
    .locals 3

    .line 87
    invoke-super {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onLanguageChanged()V

    .line 88
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 89
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->getLanguage()Lcom/blacksquircle/ui/language/base/Language;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onLanguageChanged(Lcom/blacksquircle/ui/language/base/Language;)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 54
    invoke-super/range {p0 .. p5}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onLayout(ZIIII)V

    .line 55
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 56
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    move-object v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onLayout(ZIIII)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 47
    invoke-super {p0, p1, p2}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onMeasure(II)V

    .line 48
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 49
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1, p2}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onMeasure(II)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .param p1, "horiz"    # I
    .param p2, "vert"    # I
    .param p3, "oldHoriz"    # I
    .param p4, "oldVert"    # I

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onScrollChanged(IIII)V

    .line 95
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 96
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onScrollChanged(IIII)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .line 108
    invoke-super {p0, p1, p2}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onSelectionChanged(II)V

    .line 109
    new-instance v0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;II)V

    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->post(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onSizeChanged(IIII)V

    .line 102
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 103
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onSizeChanged(IIII)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 119
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const/4 v0, 0x1

    return v0

    .line 123
    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    :cond_1
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public plugins(Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;)V
    .locals 6
    .param p1, "supplier"    # Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;

    const-string/jumbo v0, "supplier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->supply()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->union(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 220
    .local v0, "allPlugins":Ljava/util/Set;
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->supply()Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 221
    .local v1, "crossPlugins":Ljava/util/Set;
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    .line 222
    .local v2, "disjointPlugins":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 223
    .local v4, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v4}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->getPluginId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->uninstallPlugin(Ljava/lang/String;)V

    .end local v4    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/PluginSupplier;->supply()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 226
    .restart local v4    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {p0, v4}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->installPlugin(Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;)V

    .end local v4    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_1

    .line 228
    :cond_1
    return-void
.end method

.method protected processLine(III)V
    .locals 2
    .param p1, "lineNumber"    # I
    .param p2, "lineStart"    # I
    .param p3, "lineEnd"    # I

    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->processLine(III)V

    .line 167
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 168
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1, p2, p3}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->processLine(III)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 170
    :cond_0
    return-void
.end method

.method protected removeLine(I)V
    .locals 2
    .param p1, "lineNumber"    # I

    .line 180
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->removeLine(I)V

    .line 181
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 182
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->removeLine(I)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method public setFreezesText(Z)V
    .locals 0
    .param p1, "freezesText"    # Z

    .line 75
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->setFreezesText(Z)V

    .line 76
    iput-boolean p1, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->_freezesText:Z

    .line 77
    return-void
.end method

.method public setTextContent(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->setTextContent(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 189
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1, p1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->setTextContent(Ljava/lang/CharSequence;)V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .line 194
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->setTextSize(F)V

    .line 195
    new-instance v0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;F)V

    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->post(Ljava/lang/Runnable;)Z

    .line 200
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .line 203
    invoke-super {p0, p1}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 204
    new-instance v0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;Landroid/graphics/Typeface;)V

    invoke-virtual {p0, v0}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void
.end method

.method public showDropDown()V
    .locals 2

    .line 212
    invoke-super {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->showDropDown()V

    .line 213
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    .line 214
    .local v1, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->showDropDown()V

    .end local v1    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    goto :goto_0

    .line 216
    :cond_0
    return-void
.end method

.method public uninstallPlugin(Ljava/lang/String;)V
    .locals 3
    .param p1, "pluginId"    # Ljava/lang/String;

    const-string v0, "pluginId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->hasPlugin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0, p1}, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->findPlugin(Ljava/lang/String;)Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    const/4 v1, 0x0

    .line 242
    .local v1, "$i$a$-let-TextProcessor$uninstallPlugin$1":I
    iget-object v2, p0, Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;->plugins:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {v0, p0}, Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;->onDetached(Lcom/blacksquircle/ui/editorkit/widget/TextProcessor;)V

    .line 244
    nop

    .line 241
    .end local v0    # "plugin":Lcom/blacksquircle/ui/editorkit/plugin/base/EditorPlugin;
    .end local v1    # "$i$a$-let-TextProcessor$uninstallPlugin$1":I
    goto :goto_0

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Plugin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not attached."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    :goto_0
    return-void
.end method
