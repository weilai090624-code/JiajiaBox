.class final Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText$syntaxHighlight$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SyntaxHighlightEditText.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->syntaxHighlight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;


# direct methods
.method constructor <init>(Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;)V
    .locals 1

    iput-object p1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText$syntaxHighlight$1;->this$0:Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText$syntaxHighlight$1;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;",
            ">;"
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText$syntaxHighlight$1;->this$0:Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getLanguage()Lcom/blacksquircle/ui/language/base/Language;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/blacksquircle/ui/language/base/Language;->getStyler()Lcom/blacksquircle/ui/language/base/styler/LanguageStyler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText$syntaxHighlight$1;->this$0:Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;->getStructure()Lcom/blacksquircle/ui/language/base/model/TextStructure;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/blacksquircle/ui/language/base/styler/LanguageStyler;->execute(Lcom/blacksquircle/ui/language/base/model/TextStructure;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method
