.class public final Lcom/blacksquircle/ui/language/json/provider/JsonProvider;
.super Ljava/lang/Object;
.source "JsonProvider.kt"

# interfaces
.implements Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/language/json/provider/JsonProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0016J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/blacksquircle/ui/language/json/provider/JsonProvider;",
        "Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;",
        "()V",
        "wordsManager",
        "Lcom/blacksquircle/ui/language/base/utils/WordsManager;",
        "clearLines",
        "",
        "deleteLine",
        "lineNumber",
        "",
        "getAll",
        "",
        "Lcom/blacksquircle/ui/language/base/model/Suggestion;",
        "processAllLines",
        "structure",
        "Lcom/blacksquircle/ui/language/base/model/TextStructure;",
        "processLine",
        "text",
        "",
        "Companion",
        "language-json"
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
.field public static final Companion:Lcom/blacksquircle/ui/language/json/provider/JsonProvider$Companion;

.field private static jsonProvider:Lcom/blacksquircle/ui/language/json/provider/JsonProvider;


# instance fields
.field private final wordsManager:Lcom/blacksquircle/ui/language/base/utils/WordsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/blacksquircle/ui/language/json/provider/JsonProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/language/json/provider/JsonProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/provider/JsonProvider;->Companion:Lcom/blacksquircle/ui/language/json/provider/JsonProvider$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-direct {v0}, Lcom/blacksquircle/ui/language/base/utils/WordsManager;-><init>()V

    iput-object v0, p0, Lcom/blacksquircle/ui/language/json/provider/JsonProvider;->wordsManager:Lcom/blacksquircle/ui/language/base/utils/WordsManager;

    .line 24
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/blacksquircle/ui/language/json/provider/JsonProvider;-><init>()V

    return-void
.end method

.method public static final synthetic access$getJsonProvider$cp()Lcom/blacksquircle/ui/language/json/provider/JsonProvider;
    .locals 1

    .line 24
    sget-object v0, Lcom/blacksquircle/ui/language/json/provider/JsonProvider;->jsonProvider:Lcom/blacksquircle/ui/language/json/provider/JsonProvider;

    return-object v0
.end method

.method public static final synthetic access$setJsonProvider$cp(Lcom/blacksquircle/ui/language/json/provider/JsonProvider;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/blacksquircle/ui/language/json/provider/JsonProvider;

    .line 24
    sput-object p0, Lcom/blacksquircle/ui/language/json/provider/JsonProvider;->jsonProvider:Lcom/blacksquircle/ui/language/json/provider/JsonProvider;

    return-void
.end method


# virtual methods
.method public clearLines()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/blacksquircle/ui/language/json/provider/JsonProvider;->wordsManager:Lcom/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/language/base/utils/WordsManager;->clearLines()V

    .line 57
    return-void
.end method

.method public deleteLine(I)V
    .locals 1
    .param p1, "lineNumber"    # I

    .line 52
    iget-object v0, p0, Lcom/blacksquircle/ui/language/json/provider/JsonProvider;->wordsManager:Lcom/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-virtual {v0, p1}, Lcom/blacksquircle/ui/language/base/utils/WordsManager;->deleteLine(I)V

    .line 53
    return-void
.end method

.method public getAll()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/blacksquircle/ui/language/base/model/Suggestion;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/blacksquircle/ui/language/json/provider/JsonProvider;->wordsManager:Lcom/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/language/base/utils/WordsManager;->getWords()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public processAllLines(Lcom/blacksquircle/ui/language/base/model/TextStructure;)V
    .locals 1
    .param p1, "structure"    # Lcom/blacksquircle/ui/language/base/model/TextStructure;

    const-string/jumbo v0, "structure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/blacksquircle/ui/language/json/provider/JsonProvider;->wordsManager:Lcom/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-virtual {v0, p1}, Lcom/blacksquircle/ui/language/base/utils/WordsManager;->processAllLines(Lcom/blacksquircle/ui/language/base/model/TextStructure;)V

    .line 45
    return-void
.end method

.method public processLine(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "lineNumber"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    const-string/jumbo v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/blacksquircle/ui/language/json/provider/JsonProvider;->wordsManager:Lcom/blacksquircle/ui/language/base/utils/WordsManager;

    invoke-virtual {v0, p1, p2}, Lcom/blacksquircle/ui/language/base/utils/WordsManager;->processLine(ILjava/lang/CharSequence;)V

    .line 49
    return-void
.end method
