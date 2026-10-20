.class public final synthetic Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText$WhenMappings;
.super Ljava/lang/Object;
.source "SyntaxHighlightEditText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/blacksquircle/ui/language/base/model/TokenType;->values()[Lcom/blacksquircle/ui/language/base/model/TokenType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->NUMBER:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->OPERATOR:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->KEYWORD:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->TYPE:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->LANG_CONST:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->PREPROCESSOR:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->VARIABLE:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->METHOD:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->STRING:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->COMMENT:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->TAG:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v1

    :goto_a
    :try_start_b
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->TAG_NAME:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v1

    :goto_b
    :try_start_c
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->ATTR_NAME:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v1

    :goto_c
    :try_start_d
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->ATTR_VALUE:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v1

    :goto_d
    :try_start_e
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->ENTITY_REF:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v1

    :goto_e
    sput-object v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
