.class public interface abstract Lcom/blacksquircle/ui/language/base/Language;
.super Ljava/lang/Object;
.source "Language.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u000bH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/blacksquircle/ui/language/base/Language;",
        "",
        "languageName",
        "",
        "getLanguageName",
        "()Ljava/lang/String;",
        "getParser",
        "Lcom/blacksquircle/ui/language/base/parser/LanguageParser;",
        "getProvider",
        "Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;",
        "getStyler",
        "Lcom/blacksquircle/ui/language/base/styler/LanguageStyler;",
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
.method public abstract getLanguageName()Ljava/lang/String;
.end method

.method public abstract getParser()Lcom/blacksquircle/ui/language/base/parser/LanguageParser;
.end method

.method public abstract getProvider()Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;
.end method

.method public abstract getStyler()Lcom/blacksquircle/ui/language/base/styler/LanguageStyler;
.end method
