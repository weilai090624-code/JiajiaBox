.class public final enum Lcom/blacksquircle/ui/language/json/lexer/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/blacksquircle/ui/language/json/lexer/JsonToken;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0014\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/blacksquircle/ui/language/json/lexer/JsonToken;",
        "",
        "(Ljava/lang/String;I)V",
        "NUMBER",
        "TRUE",
        "FALSE",
        "NULL",
        "LBRACE",
        "RBRACE",
        "LBRACK",
        "RBRACK",
        "COMMA",
        "COLON",
        "DOUBLE_QUOTED_STRING",
        "SINGLE_QUOTED_STRING",
        "LINE_COMMENT",
        "BLOCK_COMMENT",
        "IDENTIFIER",
        "WHITESPACE",
        "BAD_CHARACTER",
        "EOF",
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
.field private static final synthetic $VALUES:[Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum BAD_CHARACTER:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum BLOCK_COMMENT:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum COLON:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum COMMA:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum DOUBLE_QUOTED_STRING:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum EOF:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum FALSE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum IDENTIFIER:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum LBRACE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum LBRACK:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum LINE_COMMENT:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum NULL:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum NUMBER:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum RBRACE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum RBRACK:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum SINGLE_QUOTED_STRING:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum TRUE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

.field public static final enum WHITESPACE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;


# direct methods
.method private static final synthetic $values()[Lcom/blacksquircle/ui/language/json/lexer/JsonToken;
    .locals 3

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->NUMBER:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->TRUE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->FALSE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->NULL:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->LBRACE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->RBRACE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->LBRACK:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->RBRACK:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->COMMA:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->COLON:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->DOUBLE_QUOTED_STRING:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->SINGLE_QUOTED_STRING:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->LINE_COMMENT:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->BLOCK_COMMENT:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->IDENTIFIER:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->WHITESPACE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->BAD_CHARACTER:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->EOF:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "NUMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->NUMBER:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    .line 22
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "TRUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->TRUE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    .line 23
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "FALSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->FALSE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    .line 24
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "NULL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->NULL:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    .line 26
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "LBRACE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->LBRACE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    .line 27
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "RBRACE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->RBRACE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    .line 28
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "LBRACK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->LBRACK:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    .line 29
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "RBRACK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->RBRACK:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    .line 30
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "COMMA"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->COMMA:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    .line 31
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "COLON"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->COLON:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    .line 33
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "DOUBLE_QUOTED_STRING"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->DOUBLE_QUOTED_STRING:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    .line 34
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "SINGLE_QUOTED_STRING"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->SINGLE_QUOTED_STRING:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    .line 35
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "LINE_COMMENT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->LINE_COMMENT:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    .line 36
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "BLOCK_COMMENT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->BLOCK_COMMENT:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    .line 38
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "IDENTIFIER"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->IDENTIFIER:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    .line 39
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "WHITESPACE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->WHITESPACE:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    .line 40
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "BAD_CHARACTER"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->BAD_CHARACTER:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    .line 41
    new-instance v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    const-string v1, "EOF"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->EOF:Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    invoke-static {}, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->$values()[Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    move-result-object v0

    sput-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->$VALUES:[Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blacksquircle/ui/language/json/lexer/JsonToken;
    .locals 1

    const-class v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v0
.end method

.method public static values()[Lcom/blacksquircle/ui/language/json/lexer/JsonToken;
    .locals 1

    sget-object v0, Lcom/blacksquircle/ui/language/json/lexer/JsonToken;->$VALUES:[Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/blacksquircle/ui/language/json/lexer/JsonToken;

    return-object v0
.end method
