.class public final enum Lcom/blacksquircle/ui/language/base/model/TokenType;
.super Ljava/lang/Enum;
.source "TokenType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/blacksquircle/ui/language/base/model/TokenType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0011\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/blacksquircle/ui/language/base/model/TokenType;",
        "",
        "(Ljava/lang/String;I)V",
        "NUMBER",
        "OPERATOR",
        "KEYWORD",
        "TYPE",
        "LANG_CONST",
        "PREPROCESSOR",
        "VARIABLE",
        "METHOD",
        "STRING",
        "COMMENT",
        "TAG",
        "TAG_NAME",
        "ATTR_NAME",
        "ATTR_VALUE",
        "ENTITY_REF",
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
.field private static final synthetic $VALUES:[Lcom/blacksquircle/ui/language/base/model/TokenType;

.field public static final enum ATTR_NAME:Lcom/blacksquircle/ui/language/base/model/TokenType;

.field public static final enum ATTR_VALUE:Lcom/blacksquircle/ui/language/base/model/TokenType;

.field public static final enum COMMENT:Lcom/blacksquircle/ui/language/base/model/TokenType;

.field public static final enum ENTITY_REF:Lcom/blacksquircle/ui/language/base/model/TokenType;

.field public static final enum KEYWORD:Lcom/blacksquircle/ui/language/base/model/TokenType;

.field public static final enum LANG_CONST:Lcom/blacksquircle/ui/language/base/model/TokenType;

.field public static final enum METHOD:Lcom/blacksquircle/ui/language/base/model/TokenType;

.field public static final enum NUMBER:Lcom/blacksquircle/ui/language/base/model/TokenType;

.field public static final enum OPERATOR:Lcom/blacksquircle/ui/language/base/model/TokenType;

.field public static final enum PREPROCESSOR:Lcom/blacksquircle/ui/language/base/model/TokenType;

.field public static final enum STRING:Lcom/blacksquircle/ui/language/base/model/TokenType;

.field public static final enum TAG:Lcom/blacksquircle/ui/language/base/model/TokenType;

.field public static final enum TAG_NAME:Lcom/blacksquircle/ui/language/base/model/TokenType;

.field public static final enum TYPE:Lcom/blacksquircle/ui/language/base/model/TokenType;

.field public static final enum VARIABLE:Lcom/blacksquircle/ui/language/base/model/TokenType;


# direct methods
.method private static final synthetic $values()[Lcom/blacksquircle/ui/language/base/model/TokenType;
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/blacksquircle/ui/language/base/model/TokenType;

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->NUMBER:Lcom/blacksquircle/ui/language/base/model/TokenType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->OPERATOR:Lcom/blacksquircle/ui/language/base/model/TokenType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->KEYWORD:Lcom/blacksquircle/ui/language/base/model/TokenType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->TYPE:Lcom/blacksquircle/ui/language/base/model/TokenType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->LANG_CONST:Lcom/blacksquircle/ui/language/base/model/TokenType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->PREPROCESSOR:Lcom/blacksquircle/ui/language/base/model/TokenType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->VARIABLE:Lcom/blacksquircle/ui/language/base/model/TokenType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->METHOD:Lcom/blacksquircle/ui/language/base/model/TokenType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->STRING:Lcom/blacksquircle/ui/language/base/model/TokenType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->COMMENT:Lcom/blacksquircle/ui/language/base/model/TokenType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->TAG:Lcom/blacksquircle/ui/language/base/model/TokenType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->TAG_NAME:Lcom/blacksquircle/ui/language/base/model/TokenType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->ATTR_NAME:Lcom/blacksquircle/ui/language/base/model/TokenType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->ATTR_VALUE:Lcom/blacksquircle/ui/language/base/model/TokenType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->ENTITY_REF:Lcom/blacksquircle/ui/language/base/model/TokenType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/TokenType;

    const-string v1, "NUMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/base/model/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/TokenType;->NUMBER:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 21
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/TokenType;

    const-string v1, "OPERATOR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/base/model/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/TokenType;->OPERATOR:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 22
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/TokenType;

    const-string v1, "KEYWORD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/base/model/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/TokenType;->KEYWORD:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 23
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/TokenType;

    const-string v1, "TYPE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/base/model/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/TokenType;->TYPE:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 24
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/TokenType;

    const-string v1, "LANG_CONST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/base/model/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/TokenType;->LANG_CONST:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 25
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/TokenType;

    const-string v1, "PREPROCESSOR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/base/model/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/TokenType;->PREPROCESSOR:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 26
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/TokenType;

    const-string v1, "VARIABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/base/model/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/TokenType;->VARIABLE:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 27
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/TokenType;

    const-string v1, "METHOD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/base/model/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/TokenType;->METHOD:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 28
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/TokenType;

    const-string v1, "STRING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/base/model/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/TokenType;->STRING:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 29
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/TokenType;

    const-string v1, "COMMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/base/model/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/TokenType;->COMMENT:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 30
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/TokenType;

    const-string v1, "TAG"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/base/model/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/TokenType;->TAG:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 31
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/TokenType;

    const-string v1, "TAG_NAME"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/base/model/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/TokenType;->TAG_NAME:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 32
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/TokenType;

    const-string v1, "ATTR_NAME"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/base/model/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/TokenType;->ATTR_NAME:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 33
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/TokenType;

    const-string v1, "ATTR_VALUE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/base/model/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/TokenType;->ATTR_VALUE:Lcom/blacksquircle/ui/language/base/model/TokenType;

    .line 34
    new-instance v0, Lcom/blacksquircle/ui/language/base/model/TokenType;

    const-string v1, "ENTITY_REF"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/blacksquircle/ui/language/base/model/TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/TokenType;->ENTITY_REF:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-static {}, Lcom/blacksquircle/ui/language/base/model/TokenType;->$values()[Lcom/blacksquircle/ui/language/base/model/TokenType;

    move-result-object v0

    sput-object v0, Lcom/blacksquircle/ui/language/base/model/TokenType;->$VALUES:[Lcom/blacksquircle/ui/language/base/model/TokenType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/blacksquircle/ui/language/base/model/TokenType;
    .locals 1

    const-class v0, Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/blacksquircle/ui/language/base/model/TokenType;

    return-object v0
.end method

.method public static values()[Lcom/blacksquircle/ui/language/base/model/TokenType;
    .locals 1

    sget-object v0, Lcom/blacksquircle/ui/language/base/model/TokenType;->$VALUES:[Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/blacksquircle/ui/language/base/model/TokenType;

    return-object v0
.end method
