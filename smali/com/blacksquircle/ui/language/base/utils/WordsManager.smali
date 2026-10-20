.class public final Lcom/blacksquircle/ui/language/base/utils/WordsManager;
.super Ljava/lang/Object;
.source "WordsManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/language/base/utils/WordsManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWordsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WordsManager.kt\ncom/blacksquircle/ui/language/base/utils/WordsManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0005J\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0011J\u000e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017R6\u0010\u0003\u001a*\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0004j\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/blacksquircle/ui/language/base/utils/WordsManager;",
        "",
        "()V",
        "lineMap",
        "Ljava/util/HashMap;",
        "",
        "Ljava/util/LinkedList;",
        "Lcom/blacksquircle/ui/language/base/model/Suggestion;",
        "Lkotlin/collections/HashMap;",
        "wordsPattern",
        "Ljava/util/regex/Pattern;",
        "kotlin.jvm.PlatformType",
        "clearLines",
        "",
        "deleteLine",
        "lineNumber",
        "getWords",
        "",
        "processAllLines",
        "structure",
        "Lcom/blacksquircle/ui/language/base/model/TextStructure;",
        "processLine",
        "text",
        "",
        "Companion",
        "language-base"
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
.field public static final Companion:Lcom/blacksquircle/ui/language/base/utils/WordsManager$Companion;

.field private static final WORDS_REGEX:Ljava/lang/String; = "\\w((\\w|-)*(\\w))?"


# instance fields
.field private final lineMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList<",
            "Lcom/blacksquircle/ui/language/base/model/Suggestion;",
            ">;>;"
        }
    .end annotation
.end field

.field private final wordsPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/blacksquircle/ui/language/base/utils/WordsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/language/base/utils/WordsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/utils/WordsManager;->Companion:Lcom/blacksquircle/ui/language/base/utils/WordsManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "\\w((\\w|-)*(\\w))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/blacksquircle/ui/language/base/utils/WordsManager;->wordsPattern:Ljava/util/regex/Pattern;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/blacksquircle/ui/language/base/utils/WordsManager;->lineMap:Ljava/util/HashMap;

    .line 24
    return-void
.end method


# virtual methods
.method public final clearLines()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/utils/WordsManager;->lineMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 77
    return-void
.end method

.method public final deleteLine(I)V
    .locals 2
    .param p1, "lineNumber"    # I

    .line 72
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/utils/WordsManager;->lineMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public final getWords()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/blacksquircle/ui/language/base/model/Suggestion;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 35
    .local v0, "wordsSet":Ljava/util/HashSet;
    iget-object v1, p0, Lcom/blacksquircle/ui/language/base/utils/WordsManager;->lineMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 36
    .local v2, "line":Ljava/util/LinkedList;
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/blacksquircle/ui/language/base/model/Suggestion;

    .line 37
    .local v4, "word":Lcom/blacksquircle/ui/language/base/model/Suggestion;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    .end local v2    # "line":Ljava/util/LinkedList;
    .end local v4    # "word":Lcom/blacksquircle/ui/language/base/model/Suggestion;
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    return-object v1
.end method

.method public final processAllLines(Lcom/blacksquircle/ui/language/base/model/TextStructure;)V
    .locals 5
    .param p1, "structure"    # Lcom/blacksquircle/ui/language/base/model/TextStructure;

    const-string/jumbo v0, "structure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    .local v0, "line":I
    invoke-virtual {p1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getLineCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 46
    invoke-virtual {p1, v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForStartOfLine(I)I

    move-result v3

    .line 47
    invoke-virtual {p1, v0}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getIndexForEndOfLine(I)I

    move-result v4

    .line 45
    invoke-interface {v2, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 49
    .local v2, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, v2}, Lcom/blacksquircle/ui/language/base/utils/WordsManager;->processLine(ILjava/lang/CharSequence;)V

    .line 44
    .end local v2    # "text":Ljava/lang/CharSequence;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "line":I
    :cond_0
    return-void
.end method

.method public final processLine(ILjava/lang/CharSequence;)V
    .locals 7
    .param p1, "lineNumber"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    const-string/jumbo v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/utils/WordsManager;->lineMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/blacksquircle/ui/language/base/utils/WordsManager;->wordsPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 56
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    new-instance v1, Lcom/blacksquircle/ui/language/base/model/Suggestion;

    .line 58
    sget-object v2, Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;->WORD:Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;

    .line 59
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-interface {p2, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 60
    nop

    .line 57
    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/blacksquircle/ui/language/base/model/Suggestion;-><init>(Lcom/blacksquircle/ui/language/base/model/Suggestion$Type;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 62
    .local v1, "word":Lcom/blacksquircle/ui/language/base/model/Suggestion;
    iget-object v2, p0, Lcom/blacksquircle/ui/language/base/utils/WordsManager;->lineMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/blacksquircle/ui/language/base/utils/WordsManager;->lineMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 65
    :cond_2
    iget-object v2, p0, Lcom/blacksquircle/ui/language/base/utils/WordsManager;->lineMap:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 66
    move-object v5, v4

    .line 79
    .local v5, "it":Ljava/util/LinkedList;
    const/4 v6, 0x0

    .line 66
    .local v6, "$i$a$-also-WordsManager$processLine$1":I
    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v5    # "it":Ljava/util/LinkedList;
    .end local v6    # "$i$a$-also-WordsManager$processLine$1":I
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    .end local v1    # "word":Lcom/blacksquircle/ui/language/base/model/Suggestion;
    :cond_3
    return-void
.end method
