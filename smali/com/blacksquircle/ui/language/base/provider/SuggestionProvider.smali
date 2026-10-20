.class public interface abstract Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;
.super Ljava/lang/Object;
.source "SuggestionProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH&J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fH&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;",
        "",
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


# virtual methods
.method public abstract clearLines()V
.end method

.method public abstract deleteLine(I)V
.end method

.method public abstract getAll()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/blacksquircle/ui/language/base/model/Suggestion;",
            ">;"
        }
    .end annotation
.end method

.method public abstract processAllLines(Lcom/blacksquircle/ui/language/base/model/TextStructure;)V
.end method

.method public abstract processLine(ILjava/lang/CharSequence;)V
.end method
