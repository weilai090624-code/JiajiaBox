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
    .registers 3

    invoke-static {}, Lcom/blacksquircle/ui/language/base/model/TokenType;->values()[Lcom/blacksquircle/ui/language/base/model/TokenType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->NUMBER:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    move-exception v1

    :goto_12
    :try_start_12
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->OPERATOR:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    move-exception v1

    :goto_1d
    :try_start_1d
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->KEYWORD:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_26} :catch_27

    goto :goto_28

    :catch_27
    move-exception v1

    :goto_28
    :try_start_28
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->TYPE:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_31} :catch_32

    goto :goto_33

    :catch_32
    move-exception v1

    :goto_33
    :try_start_33
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->LANG_CONST:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3c} :catch_3d

    goto :goto_3e

    :catch_3d
    move-exception v1

    :goto_3e
    :try_start_3e
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->PREPROCESSOR:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_47} :catch_48

    goto :goto_49

    :catch_48
    move-exception v1

    :goto_49
    :try_start_49
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->VARIABLE:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_52} :catch_53

    goto :goto_54

    :catch_53
    move-exception v1

    :goto_54
    :try_start_54
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->METHOD:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5e} :catch_5f

    goto :goto_60

    :catch_5f
    move-exception v1

    :goto_60
    :try_start_60
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->STRING:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6a} :catch_6b

    goto :goto_6c

    :catch_6b
    move-exception v1

    :goto_6c
    :try_start_6c
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->COMMENT:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_76} :catch_77

    goto :goto_78

    :catch_77
    move-exception v1

    :goto_78
    :try_start_78
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->TAG:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_82} :catch_83

    goto :goto_84

    :catch_83
    move-exception v1

    :goto_84
    :try_start_84
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->TAG_NAME:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_8e} :catch_8f

    goto :goto_90

    :catch_8f
    move-exception v1

    :goto_90
    :try_start_90
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->ATTR_NAME:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9a} :catch_9b

    goto :goto_9c

    :catch_9b
    move-exception v1

    :goto_9c
    :try_start_9c
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->ATTR_VALUE:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a6} :catch_a7

    goto :goto_a8

    :catch_a7
    move-exception v1

    :goto_a8
    :try_start_a8
    sget-object v1, Lcom/blacksquircle/ui/language/base/model/TokenType;->ENTITY_REF:Lcom/blacksquircle/ui/language/base/model/TokenType;

    invoke-virtual {v1}, Lcom/blacksquircle/ui/language/base/model/TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b2} :catch_b3

    goto :goto_b4

    :catch_b3
    move-exception v1

    :goto_b4
    sput-object v0, Lcom/blacksquircle/ui/editorkit/widget/internal/SyntaxHighlightEditText$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
