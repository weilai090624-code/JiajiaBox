.class public final Lcom/blacksquircle/ui/language/json/styler/JsonStyler;
.super Ljava/lang/Object;
.source "JsonStyler.kt"

# interfaces
.implements Lcom/blacksquircle/ui/language/base/styler/LanguageStyler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blacksquircle/ui/language/json/styler/JsonStyler$Companion;,
        Lcom/blacksquircle/ui/language/json/styler/JsonStyler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/blacksquircle/ui/language/json/styler/JsonStyler;",
        "Lcom/blacksquircle/ui/language/base/styler/LanguageStyler;",
        "()V",
        "execute",
        "",
        "Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;",
        "structure",
        "Lcom/blacksquircle/ui/language/base/model/TextStructure;",
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
.field public static final Companion:Lcom/blacksquircle/ui/language/json/styler/JsonStyler$Companion;

.field private static jsonStyler:Lcom/blacksquircle/ui/language/json/styler/JsonStyler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/blacksquircle/ui/language/json/styler/JsonStyler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blacksquircle/ui/language/json/styler/JsonStyler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/styler/JsonStyler;->Companion:Lcom/blacksquircle/ui/language/json/styler/JsonStyler$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/blacksquircle/ui/language/json/styler/JsonStyler;-><init>()V

    return-void
.end method

.method public static final synthetic access$getJsonStyler$cp()Lcom/blacksquircle/ui/language/json/styler/JsonStyler;
    .locals 1

    .line 27
    sget-object v0, Lcom/blacksquircle/ui/language/json/styler/JsonStyler;->jsonStyler:Lcom/blacksquircle/ui/language/json/styler/JsonStyler;

    return-object v0
.end method

.method public static final synthetic access$setJsonStyler$cp(Lcom/blacksquircle/ui/language/json/styler/JsonStyler;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/blacksquircle/ui/language/json/styler/JsonStyler;

    .line 27
    sput-object p0, Lcom/blacksquircle/ui/language/json/styler/JsonStyler;->jsonStyler:Lcom/blacksquircle/ui/language/json/styler/JsonStyler;

    return-void
.end method


# virtual methods
.method public execute(Lcom/blacksquircle/ui/language/base/model/TextStructure;)Ljava/util/List;
    .locals 8
    .param p1, "structure"    # Lcom/blacksquircle/ui/language/base/model/TextStructure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blacksquircle/ui/language/base/model/TextStructure;",
            ")",
            "Ljava/util/List<",
            "Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "structure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/blacksquircle/ui/language/base/model/TextStructure;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "source":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 43
    .local v1, "syntaxHighlightResults":Ljava/util/List;
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 44
    .local v2, "sourceReader":Ljava/io/StringReader;
    new-instance v3, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;

    move-object v4, v2

    check-cast v4, Ljava/io/Reader;

    invoke-direct {v3, v4}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;-><init>(Ljava/io/Reader;)V

    .line 46
    .local v3, "lexer":Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;
    :goto_0
    nop

    .line 47
    nop

    .line 48
    :try_start_0
    invoke-virtual {v3}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->advance()Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/blacksquircle/ui/language/json/styler/JsonStyler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 89
    goto :goto_0

    :pswitch_0
    goto :goto_1

    .line 86
    :pswitch_1
    goto :goto_0

    .line 79
    :pswitch_2
    sget-object v4, Lcom/blacksquircle/ui/language/base/model/TokenType;->COMMENT:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 80
    .local v4, "tokenType":Lcom/blacksquircle/ui/language/base/model/TokenType;
    new-instance v5, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;

    invoke-virtual {v3}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->getTokenStart()I

    move-result v6

    invoke-virtual {v3}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->getTokenEnd()I

    move-result v7

    invoke-direct {v5, v4, v6, v7}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;-><init>(Lcom/blacksquircle/ui/language/base/model/TokenType;II)V

    .line 81
    .local v5, "syntaxHighlightResult":Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    .end local v4    # "tokenType":Lcom/blacksquircle/ui/language/base/model/TokenType;
    .end local v5    # "syntaxHighlightResult":Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;
    :pswitch_3
    sget-object v4, Lcom/blacksquircle/ui/language/base/model/TokenType;->STRING:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 74
    .restart local v4    # "tokenType":Lcom/blacksquircle/ui/language/base/model/TokenType;
    new-instance v5, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;

    invoke-virtual {v3}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->getTokenStart()I

    move-result v6

    invoke-virtual {v3}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->getTokenEnd()I

    move-result v7

    invoke-direct {v5, v4, v6, v7}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;-><init>(Lcom/blacksquircle/ui/language/base/model/TokenType;II)V

    .line 75
    .restart local v5    # "syntaxHighlightResult":Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v4    # "tokenType":Lcom/blacksquircle/ui/language/base/model/TokenType;
    .end local v5    # "syntaxHighlightResult":Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;
    :pswitch_4
    sget-object v4, Lcom/blacksquircle/ui/language/base/model/TokenType;->LANG_CONST:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 68
    .restart local v4    # "tokenType":Lcom/blacksquircle/ui/language/base/model/TokenType;
    new-instance v5, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;

    invoke-virtual {v3}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->getTokenStart()I

    move-result v6

    invoke-virtual {v3}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->getTokenEnd()I

    move-result v7

    invoke-direct {v5, v4, v6, v7}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;-><init>(Lcom/blacksquircle/ui/language/base/model/TokenType;II)V

    .line 69
    .restart local v5    # "syntaxHighlightResult":Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v4    # "tokenType":Lcom/blacksquircle/ui/language/base/model/TokenType;
    .end local v5    # "syntaxHighlightResult":Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;
    :pswitch_5
    sget-object v4, Lcom/blacksquircle/ui/language/base/model/TokenType;->OPERATOR:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 61
    .restart local v4    # "tokenType":Lcom/blacksquircle/ui/language/base/model/TokenType;
    new-instance v5, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;

    invoke-virtual {v3}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->getTokenStart()I

    move-result v6

    invoke-virtual {v3}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->getTokenEnd()I

    move-result v7

    invoke-direct {v5, v4, v6, v7}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;-><init>(Lcom/blacksquircle/ui/language/base/model/TokenType;II)V

    .line 62
    .restart local v5    # "syntaxHighlightResult":Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v4    # "tokenType":Lcom/blacksquircle/ui/language/base/model/TokenType;
    .end local v5    # "syntaxHighlightResult":Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;
    :pswitch_6
    sget-object v4, Lcom/blacksquircle/ui/language/base/model/TokenType;->NUMBER:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 51
    .restart local v4    # "tokenType":Lcom/blacksquircle/ui/language/base/model/TokenType;
    new-instance v5, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;

    invoke-virtual {v3}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->getTokenStart()I

    move-result v6

    invoke-virtual {v3}, Lcom/blacksquircle/ui/language/json/lexer/JsonLexer;->getTokenEnd()I

    move-result v7

    invoke-direct {v5, v4, v6, v7}, Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;-><init>(Lcom/blacksquircle/ui/language/base/model/TokenType;II)V

    .line 52
    .restart local v5    # "syntaxHighlightResult":Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 92
    .end local v4    # "tokenType":Lcom/blacksquircle/ui/language/base/model/TokenType;
    .end local v5    # "syntaxHighlightResult":Lcom/blacksquircle/ui/language/base/model/SyntaxHighlightResult;
    :catchall_0
    move-exception v4

    .line 93
    .local v4, "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    nop

    .line 97
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
