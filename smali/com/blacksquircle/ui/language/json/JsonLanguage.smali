.class public final Lcom/blacksquircle/ui/language/json/JsonLanguage;
.super Ljava/lang/Object;
.source "JsonLanguage.kt"

# interfaces
.implements Lcom/blacksquircle/ui/language/base/Language;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/language/json/JsonLanguage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/blacksquircle/ui/language/json/JsonLanguage;",
        "Lcom/blacksquircle/ui/language/base/Language;",
        "()V",
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
.field public static final Companion:Lcom/blacksquircle/ui/language/json/JsonLanguage$Companion;

.field public static final LANGUAGE_NAME:Ljava/lang/String; = "json"


# instance fields
.field private final languageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/blacksquircle/ui/language/json/JsonLanguage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/language/json/JsonLanguage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/JsonLanguage;->Companion:Lcom/blacksquircle/ui/language/json/JsonLanguage$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "json"

    iput-object v0, p0, Lcom/blacksquircle/ui/language/json/JsonLanguage;->languageName:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getLanguageName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/blacksquircle/ui/language/json/JsonLanguage;->languageName:Ljava/lang/String;

    return-object v0
.end method

.method public getParser()Lcom/blacksquircle/ui/language/base/parser/LanguageParser;
    .locals 1

    .line 41
    sget-object v0, Lcom/blacksquircle/ui/language/json/parser/JsonParser;->Companion:Lcom/blacksquircle/ui/language/json/parser/JsonParser$Companion;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/language/json/parser/JsonParser$Companion;->getInstance()Lcom/blacksquircle/ui/language/json/parser/JsonParser;

    move-result-object v0

    check-cast v0, Lcom/blacksquircle/ui/language/base/parser/LanguageParser;

    return-object v0
.end method

.method public getProvider()Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;
    .locals 1

    .line 45
    sget-object v0, Lcom/blacksquircle/ui/language/json/provider/JsonProvider;->Companion:Lcom/blacksquircle/ui/language/json/provider/JsonProvider$Companion;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/language/json/provider/JsonProvider$Companion;->getInstance()Lcom/blacksquircle/ui/language/json/provider/JsonProvider;

    move-result-object v0

    check-cast v0, Lcom/blacksquircle/ui/language/base/provider/SuggestionProvider;

    return-object v0
.end method

.method public getStyler()Lcom/blacksquircle/ui/language/base/styler/LanguageStyler;
    .locals 1

    .line 49
    sget-object v0, Lcom/blacksquircle/ui/language/json/styler/JsonStyler;->Companion:Lcom/blacksquircle/ui/language/json/styler/JsonStyler$Companion;

    invoke-virtual {v0}, Lcom/blacksquircle/ui/language/json/styler/JsonStyler$Companion;->getInstance()Lcom/blacksquircle/ui/language/json/styler/JsonStyler;

    move-result-object v0

    check-cast v0, Lcom/blacksquircle/ui/language/base/styler/LanguageStyler;

    return-object v0
.end method
