.class public final Lorg/yaml/snakeyaml/scanner/ScannerImpl;
.super Ljava/lang/Object;
.source "ScannerImpl.java"

# interfaces
.implements Lorg/yaml/snakeyaml/scanner/Scanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;
    }
.end annotation


# static fields
.field public static final ESCAPE_CODES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ESCAPE_REPLACEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOT_HEXA:Ljava/util/regex/Pattern;


# instance fields
.field private allowSimpleKey:Z

.field private done:Z

.field private flowLevel:I

.field private indent:I

.field private indents:Lorg/yaml/snakeyaml/util/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/yaml/snakeyaml/util/ArrayStack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastToken:Lorg/yaml/snakeyaml/tokens/Token;

.field private parseComments:Z

.field private possibleSimpleKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/yaml/snakeyaml/scanner/SimpleKey;",
            ">;"
        }
    .end annotation
.end field

.field private final reader:Lorg/yaml/snakeyaml/reader/StreamReader;

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/tokens/Token;",
            ">;"
        }
    .end annotation
.end field

.field private tokensTaken:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 91
    const-string v0, "[^0-9A-Fa-f]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->NOT_HEXA:Ljava/util/regex/Pattern;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    .line 122
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u0000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u0007"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u0008"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\t"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x76

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u000b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u000c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\r"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u001b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, " "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\\"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u0085"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u00a0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u2028"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "\u2029"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/reader/StreamReader;)V
    .locals 2
    .param p1, "reader"    # Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->done:Z

    .line 167
    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    .line 176
    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    .line 179
    const/4 v1, -0x1

    iput v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    .line 211
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 223
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->parseComments:Z

    .line 224
    iput-object p1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    .line 226
    new-instance v0, Lorg/yaml/snakeyaml/util/ArrayStack;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;-><init>(I)V

    iput-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    .line 228
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    .line 229
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchStreamStart()V

    .line 230
    return-void
.end method

.method private addAllTokens(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/tokens/Token;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/tokens/Token;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/tokens/Token;

    iput-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->lastToken:Lorg/yaml/snakeyaml/tokens/Token;

    .line 303
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 304
    return-void
.end method

.method private addIndent(I)Z
    .locals 2
    .param p1, "column"    # I

    .line 600
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    if-ge v0, p1, :cond_0

    .line 601
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->push(Ljava/lang/Object;)V

    .line 602
    iput p1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    .line 603
    const/4 v0, 0x1

    return v0

    .line 605
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private addToken(ILorg/yaml/snakeyaml/tokens/Token;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "token"    # Lorg/yaml/snakeyaml/tokens/Token;

    .line 295
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 296
    iput-object p2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->lastToken:Lorg/yaml/snakeyaml/tokens/Token;

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 299
    return-void
.end method

.method private addToken(Lorg/yaml/snakeyaml/tokens/Token;)V
    .locals 1
    .param p1, "token"    # Lorg/yaml/snakeyaml/tokens/Token;

    .line 290
    iput-object p1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->lastToken:Lorg/yaml/snakeyaml/tokens/Token;

    .line 291
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    return-void
.end method

.method private atEndOfPlain()Z
    .locals 8

    .line 2103
    const/4 v0, 0x0

    .line 2104
    .local v0, "wsLength":I
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v1

    .line 2107
    .local v1, "wsColumn":I
    :goto_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    move v3, v2

    .local v3, "c":I
    if-eqz v2, :cond_2

    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2108
    add-int/lit8 v0, v0, 0x1

    .line 2109
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0xd

    if-ne v3, v2, :cond_0

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    :cond_0
    const v2, 0xfeff

    if-eq v3, v2, :cond_1

    .line 2110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2112
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2119
    .end local v3    # "c":I
    :cond_2
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    const/16 v3, 0x23

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_3

    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    if-ge v1, v2, :cond_3

    goto :goto_2

    .line 2126
    :cond_3
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_5

    .line 2128
    const/4 v2, 0x1

    .local v2, "extra":I
    :goto_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    add-int v5, v0, v2

    invoke-virtual {v3, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v3

    move v5, v3

    .local v5, "c":I
    if-eqz v3, :cond_5

    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v5}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2129
    const/16 v3, 0x3a

    if-ne v5, v3, :cond_4

    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    add-int v7, v0, v2

    add-int/2addr v7, v4

    invoke-virtual {v6, v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2130
    return v4

    .line 2128
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2136
    .end local v2    # "extra":I
    .end local v5    # "c":I
    :cond_5
    const/4 v2, 0x0

    return v2

    .line 2121
    :cond_6
    :goto_2
    return v4
.end method

.method private checkBlockEntry()Z
    .locals 3

    .line 1135
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v0

    return v0
.end method

.method private checkDirective()Z
    .locals 1

    .line 1099
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkDocumentEnd()Z
    .locals 3

    .line 1122
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    if-nez v0, :cond_0

    .line 1123
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    const/4 v0, 0x1

    return v0

    .line 1127
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkDocumentStart()Z
    .locals 3

    .line 1108
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    if-nez v0, :cond_0

    .line 1109
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "---"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    const/4 v0, 0x1

    return v0

    .line 1113
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkKey()Z
    .locals 3

    .line 1143
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1144
    return v1

    .line 1147
    :cond_0
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v0

    return v0
.end method

.method private checkPlain()Z
    .locals 4

    .line 1184
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    .line 1187
    .local v0, "c":I
    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v2, "-?:,[]{}#&*!|>\'\"%@`"

    invoke-virtual {v1, v0, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-object v1, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v1, :cond_0

    const-string v1, "?:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private checkValue()Z
    .locals 3

    .line 1156
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1157
    return v1

    .line 1160
    :cond_0
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v0

    return v0
.end method

.method private fetchAlias()V
    .locals 1

    .line 951
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 954
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 957
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanAnchor(Z)Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 958
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 959
    return-void
.end method

.method private fetchAnchor()V
    .locals 1

    .line 972
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 975
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 978
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanAnchor(Z)Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 979
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 980
    return-void
.end method

.method private fetchBlockEntry()V
    .locals 4

    .line 815
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v0, :cond_1

    .line 817
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addIndent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 824
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 825
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v1, Lorg/yaml/snakeyaml/tokens/BlockSequenceStartToken;

    invoke-direct {v1, v0, v0}, Lorg/yaml/snakeyaml/tokens/BlockSequenceStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    goto :goto_0

    .line 818
    .end local v0    # "mark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "sequence entries are not allowed here"

    invoke-direct {v0, v2, v2, v3, v1}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v0

    .line 832
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 835
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 838
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 839
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 840
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 841
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v2, Lorg/yaml/snakeyaml/tokens/BlockEntryToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/BlockEntryToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 842
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 843
    return-void
.end method

.method private fetchBlockScalar(C)V
    .locals 1
    .param p1, "style"    # C

    .line 1029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 1032
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 1035
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalar(C)Ljava/util/List;

    move-result-object v0

    .line 1036
    .local v0, "tok":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/tokens/Token;>;"
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addAllTokens(Ljava/util/List;)V

    .line 1037
    return-void
.end method

.method private fetchDirective()V
    .locals 1

    .line 652
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->unwindIndent(I)V

    .line 655
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 659
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanDirective()Ljava/util/List;

    move-result-object v0

    .line 660
    .local v0, "tok":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/tokens/Token;>;"
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addAllTokens(Ljava/util/List;)V

    .line 661
    return-void
.end method

.method private fetchDocumentEnd()V
    .locals 1

    .line 674
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDocumentIndicator(Z)V

    .line 675
    return-void
.end method

.method private fetchDocumentIndicator(Z)V
    .locals 3
    .param p1, "isDocumentStart"    # Z

    .line 683
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->unwindIndent(I)V

    .line 687
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 691
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 692
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 693
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 695
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    if-eqz p1, :cond_0

    .line 696
    new-instance v2, Lorg/yaml/snakeyaml/tokens/DocumentStartToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/DocumentStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    goto :goto_0

    .line 698
    .end local v2    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    :cond_0
    new-instance v2, Lorg/yaml/snakeyaml/tokens/DocumentEndToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/DocumentEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 700
    .restart local v2    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    :goto_0
    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 701
    return-void
.end method

.method private fetchDocumentStart()V
    .locals 1

    .line 667
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDocumentIndicator(Z)V

    .line 668
    return-void
.end method

.method private fetchDouble()V
    .locals 1

    .line 1050
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowScalar(C)V

    .line 1051
    return-void
.end method

.method private fetchFlowCollectionEnd(Z)V
    .locals 3
    .param p1, "isMappingEnd"    # Z

    .line 766
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 769
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    .line 772
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 775
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 776
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 777
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 779
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    if-eqz p1, :cond_0

    .line 780
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowMappingEndToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowMappingEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    goto :goto_0

    .line 782
    .end local v2    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    :cond_0
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowSequenceEndToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowSequenceEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 784
    .restart local v2    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    :goto_0
    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 785
    return-void
.end method

.method private fetchFlowCollectionStart(Z)V
    .locals 3
    .param p1, "isMappingStart"    # Z

    .line 725
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 728
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    .line 731
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 734
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 735
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 736
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 738
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    if-eqz p1, :cond_0

    .line 739
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowMappingStartToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowMappingStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    goto :goto_0

    .line 741
    .end local v2    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    :cond_0
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowSequenceStartToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowSequenceStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 743
    .restart local v2    # "token":Lorg/yaml/snakeyaml/tokens/Token;
    :goto_0
    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 744
    return-void
.end method

.method private fetchFlowEntry()V
    .locals 3

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 798
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 801
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 802
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 803
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 804
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v2, Lorg/yaml/snakeyaml/tokens/FlowEntryToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/FlowEntryToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 805
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 806
    return-void
.end method

.method private fetchFlowMappingEnd()V
    .locals 1

    .line 751
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowCollectionEnd(Z)V

    .line 752
    return-void
.end method

.method private fetchFlowMappingStart()V
    .locals 1

    .line 708
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowCollectionStart(Z)V

    .line 709
    return-void
.end method

.method private fetchFlowScalar(C)V
    .locals 1
    .param p1, "style"    # C

    .line 1062
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 1065
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 1068
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalar(C)Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 1069
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 1070
    return-void
.end method

.method private fetchFlowSequenceEnd()V
    .locals 1

    .line 747
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowCollectionEnd(Z)V

    .line 748
    return-void
.end method

.method private fetchFlowSequenceStart()V
    .locals 1

    .line 704
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowCollectionStart(Z)V

    .line 705
    return-void
.end method

.method private fetchFolded()V
    .locals 1

    .line 1017
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchBlockScalar(C)V

    .line 1018
    return-void
.end method

.method private fetchKey()V
    .locals 4

    .line 852
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v0, :cond_1

    .line 854
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addIndent(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 861
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v1, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;

    invoke-direct {v1, v0, v0}, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    goto :goto_0

    .line 855
    .end local v0    # "mark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_0
    new-instance v0, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "mapping keys are not allowed here"

    invoke-direct {v0, v2, v2, v3, v1}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v0

    .line 865
    :cond_1
    :goto_0
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 868
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 871
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 872
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 873
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 874
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v2, Lorg/yaml/snakeyaml/tokens/KeyToken;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/tokens/KeyToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 875
    .local v2, "token":Lorg/yaml/snakeyaml/tokens/Token;
    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 876
    return-void
.end method

.method private fetchLiteral()V
    .locals 1

    .line 1007
    const/16 v0, 0x7c

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchBlockScalar(C)V

    .line 1008
    return-void
.end method

.method private fetchMoreTokens()V
    .locals 7

    .line 329
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanToNextToken()V

    .line 331
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->stalePossibleSimpleKeys()V

    .line 334
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->unwindIndent(I)V

    .line 337
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    .line 338
    .local v0, "c":I
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 383
    :sswitch_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowMappingEnd()V

    .line 384
    return-void

    .line 418
    :sswitch_1
    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v1, :cond_1

    .line 419
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchLiteral()V

    .line 420
    return-void

    .line 375
    :sswitch_2
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowMappingStart()V

    .line 376
    return-void

    .line 379
    :sswitch_3
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowSequenceEnd()V

    .line 380
    return-void

    .line 371
    :sswitch_4
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowSequenceStart()V

    .line 372
    return-void

    .line 392
    :sswitch_5
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchKey()V

    .line 394
    return-void

    .line 425
    :sswitch_6
    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v1, :cond_1

    .line 426
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFolded()V

    .line 427
    return-void

    .line 399
    :sswitch_7
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchValue()V

    .line 401
    return-void

    .line 363
    :sswitch_8
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkDocumentEnd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDocumentEnd()V

    .line 365
    return-void

    .line 352
    :sswitch_9
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkDocumentStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDocumentStart()V

    .line 354
    return-void

    .line 356
    :cond_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkBlockEntry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchBlockEntry()V

    .line 358
    return-void

    .line 387
    :sswitch_a
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowEntry()V

    .line 388
    return-void

    .line 406
    :sswitch_b
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchAlias()V

    .line 407
    return-void

    .line 432
    :sswitch_c
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchSingle()V

    .line 433
    return-void

    .line 410
    :sswitch_d
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchAnchor()V

    .line 411
    return-void

    .line 345
    :sswitch_e
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkDirective()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDirective()V

    .line 347
    return-void

    .line 436
    :sswitch_f
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchDouble()V

    .line 437
    return-void

    .line 414
    :sswitch_10
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchTag()V

    .line 415
    return-void

    .line 341
    :sswitch_11
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchStreamEnd()V

    .line 342
    return-void

    .line 440
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->checkPlain()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 441
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchPlain()V

    .line 442
    return-void

    .line 447
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "chRepresentation":Ljava/lang/String;
    sget-object v2, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 449
    .local v3, "s":Ljava/lang/Character;
    sget-object v4, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 450
    .local v4, "v":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 451
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 452
    goto :goto_2

    .line 454
    .end local v3    # "s":Ljava/lang/Character;
    .end local v4    # "v":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 455
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    const/16 v2, 0x9

    if-ne v0, v2, :cond_5

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(TAB)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 457
    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v3, "found character \'%s\' that cannot start any token. (Do not use %s for indentation)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "text":Ljava/lang/String;
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "while scanning for the next token"

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6, v2, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0x21 -> :sswitch_10
        0x22 -> :sswitch_f
        0x25 -> :sswitch_e
        0x26 -> :sswitch_d
        0x27 -> :sswitch_c
        0x2a -> :sswitch_b
        0x2c -> :sswitch_a
        0x2d -> :sswitch_9
        0x2e -> :sswitch_8
        0x3a -> :sswitch_7
        0x3e -> :sswitch_6
        0x3f -> :sswitch_5
        0x5b -> :sswitch_4
        0x5d -> :sswitch_3
        0x7b -> :sswitch_2
        0x7c -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private fetchPlain()V
    .locals 1

    .line 1077
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 1082
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 1085
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanPlain()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 1086
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 1087
    return-void
.end method

.method private fetchSingle()V
    .locals 1

    .line 1043
    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchFlowScalar(C)V

    .line 1044
    return-void
.end method

.method private fetchStreamEnd()V
    .locals 3

    .line 625
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->unwindIndent(I)V

    .line 628
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 630
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 633
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 636
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v1, Lorg/yaml/snakeyaml/tokens/StreamEndToken;

    invoke-direct {v1, v0, v0}, Lorg/yaml/snakeyaml/tokens/StreamEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 637
    .local v1, "token":Lorg/yaml/snakeyaml/tokens/Token;
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 640
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->done:Z

    .line 641
    return-void
.end method

.method private fetchStreamStart()V
    .locals 2

    .line 616
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 619
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v1, Lorg/yaml/snakeyaml/tokens/StreamStartToken;

    invoke-direct {v1, v0, v0}, Lorg/yaml/snakeyaml/tokens/StreamStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 620
    .local v1, "token":Lorg/yaml/snakeyaml/tokens/Token;
    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 621
    return-void
.end method

.method private fetchTag()V
    .locals 1

    .line 989
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->savePossibleSimpleKey()V

    .line 992
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 995
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTag()Lorg/yaml/snakeyaml/tokens/Token;

    move-result-object v0

    .line 996
    .local v0, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 997
    return-void
.end method

.method private fetchValue()V
    .locals 6

    .line 885
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    .line 886
    .local v0, "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getTokenNumber()I

    move-result v2

    iget v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    sub-int/2addr v2, v3

    new-instance v3, Lorg/yaml/snakeyaml/tokens/KeyToken;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/yaml/snakeyaml/tokens/KeyToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-direct {p0, v2, v3}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(ILorg/yaml/snakeyaml/tokens/Token;)V

    .line 892
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_0

    .line 893
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getColumn()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addIndent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 894
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getTokenNumber()I

    move-result v2

    iget v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    sub-int/2addr v2, v3

    new-instance v3, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-direct {p0, v2, v3}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(ILorg/yaml/snakeyaml/tokens/Token;)V

    .line 899
    :cond_0
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    goto :goto_1

    .line 905
    :cond_1
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_3

    .line 909
    iget-boolean v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-eqz v2, :cond_2

    goto :goto_0

    .line 910
    :cond_2
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "mapping values are not allowed here"

    invoke-direct {v1, v3, v3, v4, v2}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1

    .line 918
    :cond_3
    :goto_0
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_4

    .line 919
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addIndent(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 920
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 921
    .local v2, "mark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v3, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;

    invoke-direct {v3, v2, v2}, Lorg/yaml/snakeyaml/tokens/BlockMappingStartToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-direct {p0, v3}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 926
    .end local v2    # "mark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_4
    iget v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 929
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 932
    :goto_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 933
    .local v1, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 934
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 935
    .local v2, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v3, Lorg/yaml/snakeyaml/tokens/ValueToken;

    invoke-direct {v3, v1, v2}, Lorg/yaml/snakeyaml/tokens/ValueToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 936
    .local v3, "token":Lorg/yaml/snakeyaml/tokens/Token;
    invoke-direct {p0, v3}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 937
    return-void
.end method

.method private varargs makeTokenList([Lorg/yaml/snakeyaml/tokens/Token;)Ljava/util/List;
    .locals 3
    .param p1, "tokens"    # [Lorg/yaml/snakeyaml/tokens/Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/yaml/snakeyaml/tokens/Token;",
            ")",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/tokens/Token;",
            ">;"
        }
    .end annotation

    .line 2379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2380
    .local v0, "tokenList":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/tokens/Token;>;"
    const/4 v1, 0x0

    .local v1, "ix":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 2381
    aget-object v2, p1, v1

    if-nez v2, :cond_0

    .line 2382
    goto :goto_1

    .line 2384
    :cond_0
    iget-boolean v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->parseComments:Z

    if-nez v2, :cond_1

    aget-object v2, p1, v1

    instance-of v2, v2, Lorg/yaml/snakeyaml/tokens/CommentToken;

    if-eqz v2, :cond_1

    .line 2385
    goto :goto_1

    .line 2387
    :cond_1
    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2380
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2389
    .end local v1    # "ix":I
    :cond_2
    return-object v0
.end method

.method private needMoreTokens()Z
    .locals 4

    .line 311
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 312
    return v1

    .line 315
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 316
    return v2

    .line 320
    :cond_1
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->stalePossibleSimpleKeys()V

    .line 321
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->nextPossibleSimpleKey()I

    move-result v0

    iget v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    if-ne v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private nextPossibleSimpleKey()I
    .locals 1

    .line 475
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getTokenNumber()I

    move-result v0

    return v0

    .line 478
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private removePossibleSimpleKey()V
    .locals 6

    .line 552
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    .line 553
    .local v0, "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->isRequired()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    new-instance v1, Lorg/yaml/snakeyaml/scanner/ScannerException;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    const-string v4, "while scanning a simple key"

    const-string v5, "could not find expected \':\'"

    invoke-direct {v1, v4, v2, v5, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v1

    .line 557
    :cond_1
    :goto_0
    return-void
.end method

.method private savePossibleSimpleKey()V
    .locals 10

    .line 527
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 529
    .local v0, "required":Z
    :goto_0
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 533
    :cond_1
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    const-string v2, "A simple key is required only if it is the first token in the current line"

    invoke-direct {v1, v2}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    if-eqz v1, :cond_3

    .line 540
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->removePossibleSimpleKey()V

    .line 541
    iget v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int v8, v1, v2

    .line 542
    .local v8, "tokenNumber":I
    new-instance v9, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getIndex()I

    move-result v4

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getLine()I

    move-result v5

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v6

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    move-object v1, v9

    move v2, v8

    move v3, v0

    invoke-direct/range {v1 .. v7}, Lorg/yaml/snakeyaml/scanner/SimpleKey;-><init>(IZIIILorg/yaml/snakeyaml/error/Mark;)V

    .line 544
    .local v1, "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    iget v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .end local v1    # "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    .end local v8    # "tokenNumber":I
    :cond_3
    return-void
.end method

.method private scanAnchor(Z)Lorg/yaml/snakeyaml/tokens/Token;
    .locals 13
    .param p1, "isAnchor"    # Z

    .line 1503
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 1504
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1505
    .local v1, "indicator":I
    const/16 v2, 0x2a

    if-ne v1, v2, :cond_0

    const-string v2, "alias"

    goto :goto_0

    :cond_0
    const-string v2, "anchor"

    .line 1506
    .local v2, "name":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1507
    const/4 v3, 0x0

    .line 1508
    .local v3, "length":I
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v4

    .line 1509
    .local v4, "c":I
    :goto_1
    sget-object v5, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v6, ":,[]{}/.*&"

    invoke-virtual {v5, v4, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1510
    add-int/lit8 v3, v3, 0x1

    .line 1511
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v4

    goto :goto_1

    .line 1513
    :cond_1
    const-string v5, ")"

    const-string v6, "("

    const-string v7, "unexpected character found "

    const-string v8, "while scanning an "

    if-eqz v3, :cond_4

    .line 1518
    iget-object v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v9, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v9

    .line 1519
    .local v9, "value":Ljava/lang/String;
    iget-object v10, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v10}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v4

    .line 1520
    sget-object v10, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    const-string v11, "?:,]}%@`"

    invoke-virtual {v10, v4, v11}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1525
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    .line 1527
    .local v5, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    if-eqz p1, :cond_2

    .line 1528
    new-instance v6, Lorg/yaml/snakeyaml/tokens/AnchorToken;

    invoke-direct {v6, v9, v0, v5}, Lorg/yaml/snakeyaml/tokens/AnchorToken;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .local v6, "tok":Lorg/yaml/snakeyaml/tokens/Token;
    goto :goto_2

    .line 1530
    .end local v6    # "tok":Lorg/yaml/snakeyaml/tokens/Token;
    :cond_2
    new-instance v6, Lorg/yaml/snakeyaml/tokens/AliasToken;

    invoke-direct {v6, v9, v0, v5}, Lorg/yaml/snakeyaml/tokens/AliasToken;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 1532
    .restart local v6    # "tok":Lorg/yaml/snakeyaml/tokens/Token;
    :goto_2
    return-object v6

    .line 1521
    .end local v5    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v6    # "tok":Lorg/yaml/snakeyaml/tokens/Token;
    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v10

    .line 1522
    .local v10, "s":Ljava/lang/String;
    new-instance v11, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v11, v8, v0, v5, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v11

    .line 1514
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "s":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v9

    .line 1515
    .local v9, "s":Ljava/lang/String;
    new-instance v10, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v10, v8, v0, v5, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v10
.end method

.method private scanBlockScalar(C)Ljava/util/List;
    .locals 24
    .param p1, "style"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/tokens/Token;",
            ">;"
        }
    .end annotation

    .line 1640
    move-object/from16 v0, p0

    const/16 v1, 0x3e

    move/from16 v2, p1

    if-ne v2, v1, :cond_0

    .line 1641
    const/4 v1, 0x1

    .local v1, "folded":Z
    goto :goto_0

    .line 1643
    .end local v1    # "folded":Z
    :cond_0
    const/4 v1, 0x0

    .line 1645
    .restart local v1    # "folded":Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1646
    .local v3, "chunks":Ljava/lang/StringBuilder;
    iget-object v4, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    .line 1648
    .local v4, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v5, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1649
    invoke-direct {v0, v4}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarIndicators(Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;

    move-result-object v11

    .line 1650
    .local v11, "chompi":Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;
    invoke-virtual {v11}, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->getIncrement()I

    move-result v12

    .line 1651
    .local v12, "increment":I
    invoke-direct {v0, v4}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarIgnoredLine(Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/tokens/CommentToken;

    move-result-object v13

    .line 1654
    .local v13, "commentToken":Lorg/yaml/snakeyaml/tokens/CommentToken;
    iget v5, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    const/4 v14, 0x1

    add-int/2addr v5, v14

    .line 1655
    .local v5, "minIndent":I
    if-ge v5, v14, :cond_1

    .line 1656
    const/4 v5, 0x1

    move v15, v5

    goto :goto_1

    .line 1655
    :cond_1
    move v15, v5

    .line 1662
    .end local v5    # "minIndent":I
    .local v15, "minIndent":I
    :goto_1
    const/16 v16, 0x2

    const/4 v5, -0x1

    const/16 v17, 0x0

    if-ne v12, v5, :cond_2

    .line 1663
    invoke-direct/range {p0 .. p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarIndentation()[Ljava/lang/Object;

    move-result-object v6

    .line 1664
    .local v6, "brme":[Ljava/lang/Object;
    aget-object v7, v6, v17

    check-cast v7, Ljava/lang/String;

    .line 1665
    .local v7, "breaks":Ljava/lang/String;
    aget-object v8, v6, v14

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1666
    .local v8, "maxIndent":I
    aget-object v9, v6, v16

    check-cast v9, Lorg/yaml/snakeyaml/error/Mark;

    .line 1667
    .local v9, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    invoke-static {v15, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1668
    .local v6, "indent":I
    move v10, v6

    goto :goto_2

    .line 1669
    .end local v6    # "indent":I
    .end local v7    # "breaks":Ljava/lang/String;
    .end local v8    # "maxIndent":I
    .end local v9    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_2
    add-int v6, v15, v12

    sub-int/2addr v6, v14

    .line 1670
    .restart local v6    # "indent":I
    invoke-direct {v0, v6}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarBreaks(I)[Ljava/lang/Object;

    move-result-object v7

    .line 1671
    .local v7, "brme":[Ljava/lang/Object;
    aget-object v8, v7, v17

    check-cast v8, Ljava/lang/String;

    .line 1672
    .local v8, "breaks":Ljava/lang/String;
    aget-object v9, v7, v14

    check-cast v9, Lorg/yaml/snakeyaml/error/Mark;

    move v10, v6

    move-object v7, v8

    .line 1675
    .end local v6    # "indent":I
    .end local v8    # "breaks":Ljava/lang/String;
    .local v7, "breaks":Ljava/lang/String;
    .restart local v9    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .local v10, "indent":I
    :goto_2
    const-string v6, ""

    .line 1678
    .local v6, "lineBreak":Ljava/lang/String;
    :goto_3
    iget-object v8, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v8

    if-ne v8, v10, :cond_9

    iget-object v8, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v8

    if-eqz v8, :cond_9

    .line 1679
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    iget-object v8, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v8

    const-string v14, " \t"

    invoke-virtual {v14, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v5, :cond_3

    const/4 v8, 0x1

    goto :goto_4

    :cond_3
    const/4 v8, 0x0

    .line 1681
    .local v8, "leadingNonSpace":Z
    :goto_4
    const/16 v19, 0x0

    move/from16 v5, v19

    .line 1682
    .local v5, "length":I
    :goto_5
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    move-object/from16 v19, v6

    .end local v6    # "lineBreak":Ljava/lang/String;
    .local v19, "lineBreak":Ljava/lang/String;
    iget-object v6, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1683
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, p1

    move-object/from16 v6, v19

    goto :goto_5

    .line 1685
    :cond_4
    iget-object v2, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    invoke-direct/range {p0 .. p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v6

    .line 1687
    .end local v19    # "lineBreak":Ljava/lang/String;
    .restart local v6    # "lineBreak":Ljava/lang/String;
    invoke-direct {v0, v10}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanBlockScalarBreaks(I)[Ljava/lang/Object;

    move-result-object v2

    .line 1688
    .local v2, "brme":[Ljava/lang/Object;
    aget-object v19, v2, v17

    move-object/from16 v7, v19

    check-cast v7, Ljava/lang/String;

    .line 1689
    const/16 v18, 0x1

    aget-object v19, v2, v18

    move-object/from16 v9, v19

    check-cast v9, Lorg/yaml/snakeyaml/error/Mark;

    .line 1690
    move-object/from16 v19, v2

    .end local v2    # "brme":[Ljava/lang/Object;
    .local v19, "brme":[Ljava/lang/Object;
    iget-object v2, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v2

    if-ne v2, v10, :cond_8

    iget-object v2, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    if-eqz v2, :cond_8

    .line 1695
    if-eqz v1, :cond_5

    const-string v2, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v8, :cond_5

    iget-object v2, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v14, -0x1

    if-ne v2, v14, :cond_6

    .line 1697
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    .line 1698
    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1695
    :cond_5
    const/4 v14, -0x1

    .line 1701
    :cond_6
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    .end local v5    # "length":I
    .end local v8    # "leadingNonSpace":Z
    .end local v19    # "brme":[Ljava/lang/Object;
    :cond_7
    :goto_6
    move/from16 v2, p1

    const/4 v5, -0x1

    const/4 v14, 0x1

    goto/16 :goto_3

    .line 1710
    :cond_8
    move-object v2, v6

    move-object v14, v7

    goto :goto_7

    .line 1678
    :cond_9
    move-object/from16 v19, v6

    .line 1710
    .end local v6    # "lineBreak":Ljava/lang/String;
    .local v19, "lineBreak":Ljava/lang/String;
    move-object v14, v7

    move-object/from16 v2, v19

    .end local v7    # "breaks":Ljava/lang/String;
    .end local v19    # "lineBreak":Ljava/lang/String;
    .local v2, "lineBreak":Ljava/lang/String;
    .local v14, "breaks":Ljava/lang/String;
    :goto_7
    invoke-virtual {v11}, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->chompTailIsNotFalse()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1711
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    :cond_a
    const/4 v5, 0x0

    .line 1714
    .local v5, "blankLineCommentToken":Lorg/yaml/snakeyaml/tokens/CommentToken;
    invoke-virtual {v11}, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;->chompTailIsTrue()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1715
    iget-boolean v6, v0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->parseComments:Z

    if-eqz v6, :cond_b

    .line 1716
    new-instance v6, Lorg/yaml/snakeyaml/tokens/CommentToken;

    sget-object v7, Lorg/yaml/snakeyaml/comments/CommentType;->BLANK_LINE:Lorg/yaml/snakeyaml/comments/CommentType;

    invoke-direct {v6, v7, v14, v4, v9}, Lorg/yaml/snakeyaml/tokens/CommentToken;-><init>(Lorg/yaml/snakeyaml/comments/CommentType;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    move-object v5, v6

    .line 1718
    :cond_b
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v5

    goto :goto_8

    .line 1714
    :cond_c
    move-object/from16 v19, v5

    .line 1721
    .end local v5    # "blankLineCommentToken":Lorg/yaml/snakeyaml/tokens/CommentToken;
    .local v19, "blankLineCommentToken":Lorg/yaml/snakeyaml/tokens/CommentToken;
    :goto_8
    new-instance v20, Lorg/yaml/snakeyaml/tokens/ScalarToken;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v5}, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->createStyle(Ljava/lang/Character;)Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v21

    const/4 v7, 0x0

    move-object/from16 v5, v20

    move-object v8, v4

    move-object/from16 v22, v9

    .end local v9    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    .local v22, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    move/from16 v23, v10

    .end local v10    # "indent":I
    .local v23, "indent":I
    move-object/from16 v10, v21

    invoke-direct/range {v5 .. v10}, Lorg/yaml/snakeyaml/tokens/ScalarToken;-><init>(Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V

    .line 1722
    .local v5, "scalarToken":Lorg/yaml/snakeyaml/tokens/ScalarToken;
    const/4 v6, 0x3

    new-array v6, v6, [Lorg/yaml/snakeyaml/tokens/Token;

    aput-object v13, v6, v17

    const/4 v7, 0x1

    aput-object v5, v6, v7

    aput-object v19, v6, v16

    invoke-direct {v0, v6}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->makeTokenList([Lorg/yaml/snakeyaml/tokens/Token;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method

.method private scanBlockScalarBreaks(I)[Ljava/lang/Object;
    .locals 7
    .param p1, "indent"    # I

    .line 1859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1860
    .local v0, "chunks":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 1861
    .local v1, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v2

    .line 1864
    .local v2, "col":I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, p1, :cond_0

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1865
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1866
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1871
    :cond_0
    const/4 v4, 0x0

    .line 1872
    .local v4, "lineBreak":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1873
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 1877
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v2

    .line 1878
    :goto_1
    if-ge v2, p1, :cond_1

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 1879
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1880
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1884
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v1, v5, v3

    return-object v5
.end method

.method private scanBlockScalarIgnoredLine(Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/tokens/CommentToken;
    .locals 8
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1800
    nop

    :goto_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1801
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_0

    .line 1805
    :cond_0
    const/4 v0, 0x0

    .line 1806
    .local v0, "commentToken":Lorg/yaml/snakeyaml/tokens/CommentToken;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    .line 1807
    sget-object v1, Lorg/yaml/snakeyaml/comments/CommentType;->IN_LINE:Lorg/yaml/snakeyaml/comments/CommentType;

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanComment(Lorg/yaml/snakeyaml/comments/CommentType;)Lorg/yaml/snakeyaml/tokens/CommentToken;

    move-result-object v0

    .line 1811
    :cond_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1812
    .local v1, "c":I
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v2

    .line 1813
    .local v2, "lineBreak":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    .line 1814
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 1815
    .local v3, "s":Ljava/lang/String;
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected a comment or a line break, but found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    const-string v7, "while scanning a block scalar"

    invoke-direct {v4, v7, p1, v5, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4

    .line 1819
    .end local v3    # "s":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v0
.end method

.method private scanBlockScalarIndentation()[Ljava/lang/Object;
    .locals 7

    .line 1831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1832
    .local v0, "chunks":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1833
    .local v1, "maxIndent":I
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 1837
    .local v2, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_0
    :goto_0
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v4

    const-string v5, " \r"

    invoke-virtual {v3, v4, v5}, Lorg/yaml/snakeyaml/scanner/Constant;->has(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1838
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    .line 1841
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1842
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    goto :goto_0

    .line 1847
    :cond_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1848
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 1849
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v1

    goto :goto_0

    .line 1854
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    const/4 v3, 0x2

    aput-object v2, v5, v3

    return-object v5
.end method

.method private scanBlockScalarIndicators(Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;
    .locals 8
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1742
    const/4 v0, 0x0

    .line 1743
    .local v0, "chomping":Ljava/lang/Boolean;
    const/4 v1, -0x1

    .line 1744
    .local v1, "increment":I
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    .line 1745
    .local v2, "c":I
    const-string v3, "expected indentation indicator in the range 1-9, but found 0"

    const-string v4, "while scanning a block scalar"

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    if-eq v2, v6, :cond_4

    if-ne v2, v5, :cond_0

    goto :goto_1

    .line 1763
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1764
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    .line 1765
    .local v7, "s":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1766
    if-eqz v1, :cond_3

    .line 1771
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1772
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    .line 1773
    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_7

    .line 1774
    :cond_1
    if-ne v2, v5, :cond_2

    .line 1775
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1777
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1779
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_3

    .line 1767
    :cond_3
    new-instance v5, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v5, v4, p1, v3, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v5

    .line 1746
    .end local v7    # "s":Ljava/lang/String;
    :cond_4
    :goto_1
    if-ne v2, v5, :cond_5

    .line 1747
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 1749
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1751
    :goto_2
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1752
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    .line 1753
    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1754
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    .line 1755
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1756
    if-eqz v1, :cond_6

    .line 1761
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1762
    .end local v5    # "s":Ljava/lang/String;
    goto :goto_3

    .line 1757
    .restart local v5    # "s":Ljava/lang/String;
    :cond_6
    new-instance v6, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    invoke-direct {v6, v4, p1, v3, v7}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v6

    .line 1782
    .end local v5    # "s":Ljava/lang/String;
    :cond_7
    :goto_3
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    .line 1783
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1789
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;

    invoke-direct {v3, v0, v1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl$Chomping;-><init>(Ljava/lang/Boolean;I)V

    return-object v3

    .line 1784
    :cond_8
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 1785
    .local v3, "s":Ljava/lang/String;
    new-instance v5, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected chomping or indentation indicators, but found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    invoke-direct {v5, v4, p1, v6, v7}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v5
.end method

.method private scanComment(Lorg/yaml/snakeyaml/comments/CommentType;)Lorg/yaml/snakeyaml/tokens/CommentToken;
    .locals 5
    .param p1, "type"    # Lorg/yaml/snakeyaml/comments/CommentType;

    .line 1280
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 1281
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1282
    const/4 v1, 0x0

    .line 1283
    .local v1, "length":I
    :goto_0
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1286
    :cond_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    .line 1287
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    .line 1288
    .local v3, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v4, Lorg/yaml/snakeyaml/tokens/CommentToken;

    invoke-direct {v4, p1, v2, v0, v3}, Lorg/yaml/snakeyaml/tokens/CommentToken;-><init>(Lorg/yaml/snakeyaml/comments/CommentType;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    return-object v4
.end method

.method private scanDirective()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/tokens/Token;",
            ">;"
        }
    .end annotation

    .line 1294
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 1296
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1297
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanDirectiveName(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v1

    .line 1298
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1299
    .local v2, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    const-string v3, "YAML"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1300
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanYamlDirectiveValue(Lorg/yaml/snakeyaml/error/Mark;)Ljava/util/List;

    move-result-object v2

    .line 1301
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    .local v3, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    goto :goto_1

    .line 1302
    .end local v3    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_0
    const-string v3, "TAG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1303
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagDirectiveValue(Lorg/yaml/snakeyaml/error/Mark;)Ljava/util/List;

    move-result-object v2

    .line 1304
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    .restart local v3    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    goto :goto_1

    .line 1306
    .end local v3    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    .line 1307
    .restart local v3    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    const/4 v4, 0x0

    .line 1308
    .local v4, "ff":I
    :goto_0
    sget-object v5, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1309
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1311
    :cond_2
    if-lez v4, :cond_3

    .line 1312
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5, v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1315
    .end local v4    # "ff":I
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanDirectiveIgnoredLine(Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/tokens/CommentToken;

    move-result-object v4

    .line 1316
    .local v4, "commentToken":Lorg/yaml/snakeyaml/tokens/CommentToken;
    new-instance v5, Lorg/yaml/snakeyaml/tokens/DirectiveToken;

    invoke-direct {v5, v1, v2, v0, v3}, Lorg/yaml/snakeyaml/tokens/DirectiveToken;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    .line 1317
    .local v5, "token":Lorg/yaml/snakeyaml/tokens/DirectiveToken;
    const/4 v6, 0x2

    new-array v6, v6, [Lorg/yaml/snakeyaml/tokens/Token;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-direct {p0, v6}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->makeTokenList([Lorg/yaml/snakeyaml/tokens/Token;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method

.method private scanDirectiveIgnoredLine(Lorg/yaml/snakeyaml/error/Mark;)Lorg/yaml/snakeyaml/tokens/CommentToken;
    .locals 8
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1473
    nop

    :goto_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1474
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_0

    .line 1476
    :cond_0
    const/4 v0, 0x0

    .line 1477
    .local v0, "commentToken":Lorg/yaml/snakeyaml/tokens/CommentToken;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1

    .line 1478
    sget-object v1, Lorg/yaml/snakeyaml/comments/CommentType;->IN_LINE:Lorg/yaml/snakeyaml/comments/CommentType;

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanComment(Lorg/yaml/snakeyaml/comments/CommentType;)Lorg/yaml/snakeyaml/tokens/CommentToken;

    move-result-object v1

    .line 1479
    .local v1, "comment":Lorg/yaml/snakeyaml/tokens/CommentToken;
    iget-boolean v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->parseComments:Z

    if-eqz v2, :cond_1

    .line 1480
    move-object v0, v1

    .line 1483
    .end local v1    # "comment":Lorg/yaml/snakeyaml/tokens/CommentToken;
    :cond_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1484
    .local v1, "c":I
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v2

    .line 1485
    .local v2, "lineBreak":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    .line 1486
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 1487
    .local v3, "s":Ljava/lang/String;
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected a comment or a line break, but found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    const-string v7, "while scanning a directive"

    invoke-direct {v4, v7, p1, v5, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4

    .line 1491
    .end local v3    # "s":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v0
.end method

.method private scanDirectiveName(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 10
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1328
    const/4 v0, 0x0

    .line 1332
    .local v0, "length":I
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    .line 1333
    .local v1, "c":I
    :goto_0
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->ALPHA:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1334
    add-int/lit8 v0, v0, 0x1

    .line 1335
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    goto :goto_0

    .line 1338
    :cond_0
    const-string v2, ")"

    const-string v3, "("

    const-string v4, "expected alphabetic or numeric character, but found "

    const-string v5, "while scanning a directive"

    if-eqz v0, :cond_2

    .line 1344
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v6

    .line 1345
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1346
    sget-object v7, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v7, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1352
    return-object v6

    .line 1347
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    .line 1348
    .local v7, "s":Ljava/lang/String;
    new-instance v8, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    invoke-direct {v8, v5, p1, v2, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v8

    .line 1339
    .end local v6    # "value":Ljava/lang/String;
    .end local v7    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    .line 1340
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    invoke-direct {v7, v5, p1, v2, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v7
.end method

.method private scanFlowScalar(C)Lorg/yaml/snakeyaml/tokens/Token;
    .locals 12
    .param p1, "style"    # C

    .line 1907
    const/16 v0, 0x22

    if-ne p1, v0, :cond_0

    .line 1908
    const/4 v0, 0x1

    .local v0, "_double":Z
    goto :goto_0

    .line 1910
    .end local v0    # "_double":Z
    :cond_0
    const/4 v0, 0x0

    .line 1912
    .restart local v0    # "_double":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1913
    .local v1, "chunks":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 1914
    .local v2, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v9

    .line 1915
    .local v9, "quote":I
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1916
    invoke-direct {p0, v0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarNonSpaces(ZLorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1917
    :goto_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v3

    if-eq v3, v9, :cond_1

    .line 1918
    invoke-direct {p0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarSpaces(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1919
    invoke-direct {p0, v0, v2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarNonSpaces(ZLorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1921
    :cond_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1922
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v10

    .line 1923
    .local v10, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v11, Lorg/yaml/snakeyaml/tokens/ScalarToken;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v3}, Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;->createStyle(Ljava/lang/Character;)Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v8

    const/4 v5, 0x0

    move-object v3, v11

    move-object v6, v2

    move-object v7, v10

    invoke-direct/range {v3 .. v8}, Lorg/yaml/snakeyaml/tokens/ScalarToken;-><init>(Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V

    return-object v11
.end method

.method private scanFlowScalarBreaks(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 6
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 2024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2028
    .local v0, "chunks":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v1

    .line 2029
    .local v1, "prefix":Ljava/lang/String;
    const-string v3, "---"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "..."

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2035
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    const-string v3, " \t"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 2036
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_1

    .line 2040
    :cond_2
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v2

    .line 2041
    .local v2, "lineBreak":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 2042
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v2    # "lineBreak":Ljava/lang/String;
    goto :goto_0

    .line 2044
    .restart local v1    # "prefix":Ljava/lang/String;
    .restart local v2    # "lineBreak":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2031
    .end local v2    # "lineBreak":Ljava/lang/String;
    :cond_4
    new-instance v2, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    const-string v4, "while scanning a quoted scalar"

    const-string v5, "found unexpected document separator"

    invoke-direct {v2, v4, p1, v5, v3}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2
.end method

.method private scanFlowScalarNonSpaces(ZLorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 8
    .param p1, "doubleQuoted"    # Z
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1935
    .local v0, "chunks":Ljava/lang/StringBuilder;
    :goto_0
    const/4 v1, 0x0

    .line 1936
    .local v1, "length":I
    :goto_1
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v3

    const-string v4, "\'\"\\"

    invoke-virtual {v2, v3, v4}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1937
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1939
    :cond_0
    if-eqz v1, :cond_1

    .line 1940
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1944
    :cond_1
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    .line 1945
    .local v2, "c":I
    const/16 v3, 0x27

    if-nez p1, :cond_2

    if-ne v2, v3, :cond_2

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 1946
    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    goto/16 :goto_2

    .line 1948
    :cond_2
    if-eqz p1, :cond_3

    if-eq v2, v3, :cond_4

    :cond_3
    if-nez p1, :cond_5

    const-string v3, "\"\\"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 1949
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 1950
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto/16 :goto_2

    .line 1951
    :cond_5
    if-eqz p1, :cond_a

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_a

    .line 1952
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1953
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    .line 1954
    invoke-static {v2}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    int-to-char v4, v2

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1958
    sget-object v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_REPLACEMENTS:Ljava/util/Map;

    int-to-char v4, v2

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto/16 :goto_2

    .line 1960
    :cond_6
    invoke-static {v2}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v3

    const-string v4, "while scanning a double-quoted scalar"

    if-nez v3, :cond_8

    sget-object v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1963
    sget-object v3, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->ESCAPE_CODES:Ljava/util/Map;

    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1964
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1965
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v3

    .line 1966
    .local v3, "hex":Ljava/lang/String;
    sget-object v5, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->NOT_HEXA:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_7

    .line 1972
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 1973
    .local v4, "decimal":I
    new-instance v5, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    .line 1974
    .local v5, "unicode":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1975
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1976
    .end local v3    # "hex":Ljava/lang/String;
    .end local v4    # "decimal":I
    .end local v5    # "unicode":Ljava/lang/String;
    goto :goto_2

    .line 1967
    .restart local v3    # "hex":Ljava/lang/String;
    :cond_7
    new-instance v5, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected escape sequence of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hexadecimal numbers, but found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    invoke-direct {v5, v4, p2, v6, v7}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v5

    .line 1976
    .end local v3    # "hex":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    .line 1977
    invoke-direct {p0, p2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarBreaks(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1987
    .end local v1    # "length":I
    .end local v2    # "c":I
    :goto_2
    goto/16 :goto_0

    .line 1979
    .restart local v1    # "length":I
    .restart local v2    # "c":I
    :cond_9
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 1980
    .local v3, "s":Ljava/lang/String;
    new-instance v5, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found unknown escape character "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    invoke-direct {v5, v4, p2, v6, v7}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v5

    .line 1985
    .end local v3    # "s":Ljava/lang/String;
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private scanFlowScalarSpaces(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 8
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1993
    .local v0, "chunks":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1996
    .local v1, "length":I
    :goto_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    const-string v3, " \t"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1997
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1999
    :cond_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    .line 2000
    .local v2, "whitespaces":Ljava/lang/String;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v3

    .line 2001
    .local v3, "c":I
    if-eqz v3, :cond_4

    .line 2007
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v4

    .line 2008
    .local v4, "lineBreak":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 2009
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanFlowScalarBreaks(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v5

    .line 2010
    .local v5, "breaks":Ljava/lang/String;
    const-string v6, "\n"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2011
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2012
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 2013
    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    :cond_2
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    .end local v5    # "breaks":Ljava/lang/String;
    goto :goto_2

    .line 2017
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2003
    .end local v4    # "lineBreak":Ljava/lang/String;
    :cond_4
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a quoted scalar"

    const-string v7, "found unexpected end of stream"

    invoke-direct {v4, v6, p1, v7, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4
.end method

.method private scanLineBreak()Ljava/lang/String;
    .locals 4

    .line 2363
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    .line 2364
    .local v0, "c":I
    const/16 v1, 0xa

    const/16 v2, 0xd

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_3

    const/16 v3, 0x85

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 2371
    :cond_0
    const/16 v1, 0x2028

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2029

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 2375
    :cond_1
    const-string v1, ""

    return-object v1

    .line 2372
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 2373
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2365
    :cond_3
    :goto_1
    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 2366
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    goto :goto_2

    .line 2368
    :cond_4
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 2370
    :goto_2
    const-string v1, "\n"

    return-object v1
.end method

.method private scanPlain()Lorg/yaml/snakeyaml/tokens/Token;
    .locals 12

    .line 2061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2062
    .local v0, "chunks":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 2063
    .local v1, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    move-object v2, v1

    .line 2064
    .local v2, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    iget v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 2065
    .local v3, "indent":I
    const-string v5, ""

    .line 2068
    .local v5, "spaces":Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 2070
    .local v6, "length":I
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v7

    const/16 v8, 0x23

    if-ne v7, v8, :cond_0

    .line 2071
    goto/16 :goto_4

    .line 2074
    :cond_0
    :goto_1
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v7

    .line 2075
    .local v7, "c":I
    sget-object v9, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v9, v7}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v9

    if-nez v9, :cond_4

    const/16 v9, 0x3a

    if-ne v7, v9, :cond_2

    sget-object v9, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v10, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v10, v11}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v10

    iget v11, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-eqz v11, :cond_1

    const-string v11, ",[]{}"

    goto :goto_2

    :cond_1
    const-string v11, ""

    :goto_2
    invoke-virtual {v9, v10, v11}, Lorg/yaml/snakeyaml/scanner/Constant;->has(ILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_2
    iget v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-eqz v9, :cond_3

    const-string v9, ",?[]{}"

    invoke-virtual {v9, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 2078
    goto :goto_3

    .line 2080
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2082
    :cond_4
    :goto_3
    if-nez v6, :cond_5

    .line 2083
    goto :goto_4

    .line 2085
    :cond_5
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 2086
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2087
    iget-object v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v9, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2088
    iget-object v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v9}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 2089
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanPlainSpaces()Ljava/lang/String;

    move-result-object v5

    .line 2091
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v9}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v9

    if-eq v9, v8, :cond_7

    iget v8, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v8, :cond_6

    iget-object v8, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v8

    if-ge v8, v3, :cond_6

    .line 2093
    goto :goto_4

    .line 2095
    .end local v6    # "length":I
    .end local v7    # "c":I
    :cond_6
    goto/16 :goto_0

    .line 2096
    :cond_7
    :goto_4
    new-instance v6, Lorg/yaml/snakeyaml/tokens/ScalarToken;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1, v2, v4}, Lorg/yaml/snakeyaml/tokens/ScalarToken;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Z)V

    return-object v6
.end method

.method private scanPlainSpaces()Ljava/lang/String;
    .locals 13

    .line 2144
    const/4 v0, 0x0

    .line 2145
    .local v0, "length":I
    :goto_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    goto/16 :goto_4

    .line 2148
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v1

    .line 2149
    .local v1, "whitespaces":Ljava/lang/String;
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v3

    .line 2150
    .local v3, "lineBreak":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    .line 2151
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    .line 2152
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v4

    .line 2153
    .local v4, "prefix":Ljava/lang/String;
    const-string v6, "---"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, ""

    if-nez v7, :cond_9

    const-string v7, "..."

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v10, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v10, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_3

    .line 2157
    :cond_1
    iget-boolean v9, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->parseComments:Z

    if-eqz v9, :cond_2

    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->atEndOfPlain()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2158
    return-object v8

    .line 2160
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2162
    .local v9, "breaks":Ljava/lang/StringBuilder;
    :goto_1
    iget-object v10, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v10}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v10

    if-ne v10, v2, :cond_3

    .line 2163
    iget-object v10, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v10}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_1

    .line 2165
    :cond_3
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v10

    .line 2166
    .local v10, "lb":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_6

    .line 2167
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2168
    iget-object v11, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v11, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v4

    .line 2169
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    sget-object v11, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    iget-object v12, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v12, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_2

    .line 2176
    .end local v10    # "lb":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 2171
    .restart local v10    # "lb":Ljava/lang/String;
    :cond_5
    :goto_2
    return-object v8

    .line 2178
    .end local v10    # "lb":Ljava/lang/String;
    :cond_6
    const-string v2, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2180
    :cond_7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_8

    .line 2181
    const-string v2, " "

    return-object v2

    .line 2183
    :cond_8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2155
    .end local v9    # "breaks":Ljava/lang/StringBuilder;
    :cond_9
    :goto_3
    return-object v8

    .line 2185
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_a
    return-object v1

    .line 2146
    .end local v1    # "whitespaces":Ljava/lang/String;
    .end local v3    # "lineBreak":Ljava/lang/String;
    :cond_b
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private scanTag()Lorg/yaml/snakeyaml/tokens/Token;
    .locals 11

    .line 1570
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 1573
    .local v0, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    .line 1574
    .local v1, "c":I
    const/4 v2, 0x0

    .line 1575
    .local v2, "handle":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1577
    .local v3, "suffix":Ljava/lang/String;
    const/16 v4, 0x3c

    const-string v5, ")"

    const-string v6, "\' ("

    const-string v7, "while scanning a tag"

    const-string v8, "tag"

    if-ne v1, v4, :cond_1

    .line 1580
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1581
    invoke-direct {p0, v8, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagUri(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    .line 1582
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1583
    const/16 v4, 0x3e

    if-ne v1, v4, :cond_0

    .line 1591
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_3

    .line 1586
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    .line 1587
    .local v4, "s":Ljava/lang/String;
    new-instance v8, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "expected \'>\', but found \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v8, v7, v0, v5, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v8

    .line 1592
    .end local v4    # "s":Ljava/lang/String;
    :cond_1
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_T_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1595
    const-string v3, "!"

    .line 1596
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_3

    .line 1602
    :cond_2
    const/4 v4, 0x1

    .line 1603
    .local v4, "length":I
    const/4 v9, 0x0

    .line 1604
    .local v9, "useHandle":Z
    :goto_0
    sget-object v10, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v10, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1605
    const/16 v10, 0x21

    if-ne v1, v10, :cond_3

    .line 1606
    const/4 v9, 0x1

    .line 1607
    goto :goto_1

    .line 1609
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 1610
    iget-object v10, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v10, v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    goto :goto_0

    .line 1614
    :cond_4
    :goto_1
    if-eqz v9, :cond_5

    .line 1615
    invoke-direct {p0, v8, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagHandle(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1617
    :cond_5
    const-string v2, "!"

    .line 1618
    iget-object v10, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v10}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1620
    :goto_2
    invoke-direct {p0, v8, v0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagUri(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    .line 1622
    .end local v4    # "length":I
    .end local v9    # "useHandle":Z
    :goto_3
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1625
    sget-object v4, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v4, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1630
    new-instance v4, Lorg/yaml/snakeyaml/tokens/TagTuple;

    invoke-direct {v4, v2, v3}, Lorg/yaml/snakeyaml/tokens/TagTuple;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    .local v4, "value":Lorg/yaml/snakeyaml/tokens/TagTuple;
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    .line 1632
    .local v5, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v6, Lorg/yaml/snakeyaml/tokens/TagToken;

    invoke-direct {v6, v4, v0, v5}, Lorg/yaml/snakeyaml/tokens/TagToken;-><init>(Lorg/yaml/snakeyaml/tokens/TagTuple;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    return-object v6

    .line 1626
    .end local v4    # "value":Lorg/yaml/snakeyaml/tokens/TagTuple;
    .end local v5    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_6
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    .line 1627
    .local v4, "s":Ljava/lang/String;
    new-instance v8, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "expected \' \', but found \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-direct {v8, v7, v0, v5, v6}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v8
.end method

.method private scanTagDirectiveHandle(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 7
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1443
    const-string v0, "directive"

    invoke-direct {p0, v0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagHandle(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v0

    .line 1444
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1445
    .local v1, "c":I
    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 1450
    return-object v0

    .line 1446
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 1447
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected \' \', but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a directive"

    invoke-direct {v3, v6, p1, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3
.end method

.method private scanTagDirectivePrefix(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 7
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1460
    const-string v0, "directive"

    invoke-direct {p0, v0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagUri(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v0

    .line 1461
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1462
    .local v1, "c":I
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1468
    return-object v0

    .line 1463
    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 1464
    .local v2, "s":Ljava/lang/String;
    new-instance v3, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected \' \', but found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v5

    const-string v6, "while scanning a directive"

    invoke-direct {v3, v6, p1, v4, v5}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3
.end method

.method private scanTagDirectiveValue(Lorg/yaml/snakeyaml/error/Mark;)Ljava/util/List;
    .locals 4
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/error/Mark;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1420
    nop

    :goto_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1421
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_0

    .line 1423
    :cond_0
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagDirectiveHandle(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v0

    .line 1424
    .local v0, "handle":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 1425
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_1

    .line 1427
    :cond_1
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanTagDirectivePrefix(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v1

    .line 1428
    .local v1, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1429
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1430
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1431
    return-object v2
.end method

.method private scanTagHandle(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 2211
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    .line 2212
    .local v0, "c":I
    const-string v1, ")"

    const-string v2, "("

    const-string v3, "expected \'!\', but found "

    const-string v4, "while scanning a "

    const/16 v5, 0x21

    if-ne v0, v5, :cond_3

    .line 2220
    const/4 v6, 0x1

    .line 2221
    .local v6, "length":I
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v0

    .line 2222
    const/16 v7, 0x20

    if-eq v0, v7, :cond_2

    .line 2227
    :goto_0
    sget-object v7, Lorg/yaml/snakeyaml/scanner/Constant;->ALPHA:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v7, v0}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2228
    add-int/lit8 v6, v6, 0x1

    .line 2229
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v0

    goto :goto_0

    .line 2234
    :cond_0
    if-ne v0, v5, :cond_1

    .line 2240
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2235
    :cond_1
    iget-object v5, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v5, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 2236
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    .line 2237
    .local v5, "s":Ljava/lang/String;
    new-instance v7, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    invoke-direct {v7, v4, p2, v1, v2}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v7

    .line 2242
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v1

    .line 2243
    .local v1, "value":Ljava/lang/String;
    return-object v1

    .line 2213
    .end local v1    # "value":Ljava/lang/String;
    .end local v6    # "length":I
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v5

    .line 2214
    .restart local v5    # "s":Ljava/lang/String;
    new-instance v6, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    invoke-direct {v6, v4, p2, v1, v2}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v6
.end method

.method private scanTagUri(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 2264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2268
    .local v0, "chunks":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2269
    .local v1, "length":I
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    .line 2270
    .local v2, "c":I
    :goto_0
    sget-object v3, Lorg/yaml/snakeyaml/scanner/Constant;->URI_CHARS:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v3, v2}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2271
    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    .line 2272
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2273
    const/4 v1, 0x0

    .line 2274
    invoke-direct {p0, p1, p2}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanUriEscapes(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2276
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 2278
    :goto_1
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    goto :goto_0

    .line 2282
    :cond_1
    if-eqz v1, :cond_2

    .line 2283
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2285
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_3

    .line 2291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2287
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    .line 2288
    .local v3, "s":Ljava/lang/String;
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "while scanning a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected URI, but found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    invoke-direct {v4, v5, p2, v6, v7}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4
.end method

.method private scanToNextToken()V
    .locals 10

    .line 1218
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getIndex()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    .line 1219
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1221
    :cond_0
    const/4 v0, 0x0

    .line 1222
    .local v0, "found":Z
    const/4 v1, -0x1

    .line 1223
    .local v1, "inlineStartColumn":I
    :goto_0
    if-nez v0, :cond_a

    .line 1224
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    .line 1225
    .local v2, "startMark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v3

    .line 1226
    .local v3, "columnBeforeComment":I
    const/4 v4, 0x0

    .line 1227
    .local v4, "commentSeen":Z
    const/4 v5, 0x0

    .line 1230
    .local v5, "ff":I
    :goto_1
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1

    .line 1231
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1233
    :cond_1
    if-lez v5, :cond_2

    .line 1234
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6, v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 1240
    :cond_2
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_6

    .line 1241
    const/4 v4, 0x1

    .line 1243
    if-eqz v3, :cond_4

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->lastToken:Lorg/yaml/snakeyaml/tokens/Token;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->lastToken:Lorg/yaml/snakeyaml/tokens/Token;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/tokens/Token;->getTokenId()Lorg/yaml/snakeyaml/tokens/Token$ID;

    move-result-object v6

    sget-object v7, Lorg/yaml/snakeyaml/tokens/Token$ID;->BlockEntry:Lorg/yaml/snakeyaml/tokens/Token$ID;

    if-eq v6, v7, :cond_4

    .line 1244
    :cond_3
    sget-object v6, Lorg/yaml/snakeyaml/comments/CommentType;->IN_LINE:Lorg/yaml/snakeyaml/comments/CommentType;

    .line 1245
    .local v6, "type":Lorg/yaml/snakeyaml/comments/CommentType;
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v1

    goto :goto_2

    .line 1246
    .end local v6    # "type":Lorg/yaml/snakeyaml/comments/CommentType;
    :cond_4
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->getColumn()I

    move-result v6

    if-ne v1, v6, :cond_5

    .line 1247
    sget-object v6, Lorg/yaml/snakeyaml/comments/CommentType;->IN_LINE:Lorg/yaml/snakeyaml/comments/CommentType;

    .restart local v6    # "type":Lorg/yaml/snakeyaml/comments/CommentType;
    goto :goto_2

    .line 1249
    .end local v6    # "type":Lorg/yaml/snakeyaml/comments/CommentType;
    :cond_5
    const/4 v1, -0x1

    .line 1250
    sget-object v6, Lorg/yaml/snakeyaml/comments/CommentType;->BLOCK:Lorg/yaml/snakeyaml/comments/CommentType;

    .line 1252
    .restart local v6    # "type":Lorg/yaml/snakeyaml/comments/CommentType;
    :goto_2
    invoke-direct {p0, v6}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanComment(Lorg/yaml/snakeyaml/comments/CommentType;)Lorg/yaml/snakeyaml/tokens/CommentToken;

    move-result-object v7

    .line 1253
    .local v7, "token":Lorg/yaml/snakeyaml/tokens/CommentToken;
    iget-boolean v8, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->parseComments:Z

    if-eqz v8, :cond_6

    .line 1254
    invoke-direct {p0, v7}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 1259
    .end local v6    # "type":Lorg/yaml/snakeyaml/comments/CommentType;
    .end local v7    # "token":Lorg/yaml/snakeyaml/tokens/CommentToken;
    :cond_6
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanLineBreak()Ljava/lang/String;

    move-result-object v6

    .line 1260
    .local v6, "breaks":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_8

    .line 1261
    iget-boolean v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->parseComments:Z

    if-eqz v7, :cond_7

    if-nez v4, :cond_7

    .line 1262
    if-nez v3, :cond_7

    .line 1263
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v7}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v7

    .line 1264
    .local v7, "endMark":Lorg/yaml/snakeyaml/error/Mark;
    new-instance v8, Lorg/yaml/snakeyaml/tokens/CommentToken;

    sget-object v9, Lorg/yaml/snakeyaml/comments/CommentType;->BLANK_LINE:Lorg/yaml/snakeyaml/comments/CommentType;

    invoke-direct {v8, v9, v6, v2, v7}, Lorg/yaml/snakeyaml/tokens/CommentToken;-><init>(Lorg/yaml/snakeyaml/comments/CommentType;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-direct {p0, v8}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 1267
    .end local v7    # "endMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_7
    iget v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-nez v7, :cond_9

    .line 1270
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->allowSimpleKey:Z

    goto :goto_3

    .line 1273
    :cond_8
    const/4 v0, 0x1

    .line 1275
    .end local v2    # "startMark":Lorg/yaml/snakeyaml/error/Mark;
    .end local v3    # "columnBeforeComment":I
    .end local v4    # "commentSeen":Z
    .end local v5    # "ff":I
    .end local v6    # "breaks":Ljava/lang/String;
    :cond_9
    :goto_3
    goto/16 :goto_0

    .line 1276
    :cond_a
    return-void
.end method

.method private scanUriEscapes(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/String;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 2308
    const/4 v0, 0x1

    .line 2309
    .local v0, "length":I
    :goto_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    mul-int/lit8 v2, v0, 0x3

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    .line 2310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2316
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v1

    .line 2317
    .local v1, "beginningMark":Lorg/yaml/snakeyaml/error/Mark;
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 2318
    .local v3, "buff":Ljava/nio/ByteBuffer;
    :goto_1
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v4

    const-string v5, "while scanning a "

    if-ne v4, v2, :cond_1

    .line 2319
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 2321
    :try_start_0
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x10

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    .line 2322
    .local v4, "code":B
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2333
    nop

    .line 2334
    .end local v4    # "code":B
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4, v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    goto :goto_1

    .line 2323
    :catch_0
    move-exception v2

    .line 2324
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v4

    .line 2325
    .local v4, "c1":I
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    .line 2326
    .local v6, "s1":Ljava/lang/String;
    iget-object v7, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v7

    .line 2327
    .local v7, "c2":I
    invoke-static {v7}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    .line 2328
    .local v8, "s2":Ljava/lang/String;
    new-instance v9, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "expected URI escape sequence of 2 hexadecimal numbers, but found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ") and "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v11}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v11

    invoke-direct {v9, v5, p2, v10, v11}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v9

    .line 2336
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .end local v4    # "c1":I
    .end local v6    # "s1":Ljava/lang/String;
    .end local v7    # "c2":I
    .end local v8    # "s2":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 2338
    :try_start_1
    invoke-static {v3}, Lorg/yaml/snakeyaml/util/UriEncoder;->decode(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 2339
    :catch_1
    move-exception v2

    .line 2340
    .local v2, "e":Ljava/nio/charset/CharacterCodingException;
    new-instance v4, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected URI in UTF-8: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, p2, v6, v1}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v4
.end method

.method private scanYamlDirectiveNumber(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/Integer;
    .locals 6
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 1392
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    .line 1393
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1398
    const/4 v1, 0x0

    .line 1399
    .local v1, "length":I
    :goto_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1400
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1402
    :cond_0
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefixForward(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1403
    .local v2, "value":Ljava/lang/Integer;
    return-object v2

    .line 1394
    .end local v1    # "length":I
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 1395
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected a digit, but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "while scanning a directive"

    invoke-direct {v2, v5, p1, v3, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2
.end method

.method private scanYamlDirectiveValue(Lorg/yaml/snakeyaml/error/Mark;)Ljava/util/List;
    .locals 10
    .param p1, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/yaml/snakeyaml/error/Mark;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1357
    nop

    :goto_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1358
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    goto :goto_0

    .line 1360
    :cond_0
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanYamlDirectiveNumber(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/Integer;

    move-result-object v0

    .line 1361
    .local v0, "major":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1362
    .local v1, "c":I
    const/16 v2, 0x2e

    const-string v3, ")"

    const-string v4, "("

    const-string v5, "while scanning a directive"

    if-ne v1, v2, :cond_2

    .line 1368
    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward()V

    .line 1369
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->scanYamlDirectiveNumber(Lorg/yaml/snakeyaml/error/Mark;)Ljava/lang/Integer;

    move-result-object v2

    .line 1370
    .local v2, "minor":Ljava/lang/Integer;
    iget-object v6, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/reader/StreamReader;->peek()I

    move-result v1

    .line 1371
    sget-object v6, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_BL_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v6, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->hasNo(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1377
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1378
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1379
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    return-object v3

    .line 1372
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    .line 1373
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "expected a digit or \' \', but found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    invoke-direct {v7, v5, p1, v3, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v7

    .line 1363
    .end local v2    # "minor":Ljava/lang/Integer;
    .end local v6    # "s":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 1364
    .local v2, "s":Ljava/lang/String;
    new-instance v6, Lorg/yaml/snakeyaml/scanner/ScannerException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expected a digit or \'.\', but found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    invoke-direct {v6, v5, p1, v3, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v6
.end method

.method private stalePossibleSimpleKeys()V
    .locals 7

    .line 492
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 493
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->possibleSimpleKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 494
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/scanner/SimpleKey;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 495
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/yaml/snakeyaml/scanner/SimpleKey;

    .line 496
    .local v1, "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getLine()I

    move-result v2

    iget-object v3, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v3}, Lorg/yaml/snakeyaml/reader/StreamReader;->getLine()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->getIndex()I

    move-result v2

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getIndex()I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0x400

    if-le v2, v3, :cond_1

    .line 502
    :cond_0
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->isRequired()Z

    move-result v2

    if-nez v2, :cond_2

    .line 508
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 510
    .end local v1    # "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    :cond_1
    goto :goto_0

    .line 505
    .restart local v1    # "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    :cond_2
    new-instance v2, Lorg/yaml/snakeyaml/scanner/ScannerException;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/scanner/SimpleKey;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v3

    iget-object v4, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v4}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "while scanning a simple key"

    const-string v6, "could not find expected \':\'"

    invoke-direct {v2, v5, v3, v6, v4}, Lorg/yaml/snakeyaml/scanner/ScannerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2

    .line 512
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/yaml/snakeyaml/scanner/SimpleKey;>;"
    .end local v1    # "key":Lorg/yaml/snakeyaml/scanner/SimpleKey;
    :cond_3
    return-void
.end method

.method private unwindIndent(I)V
    .locals 2
    .param p1, "col"    # I

    .line 584
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->flowLevel:I

    if-eqz v0, :cond_0

    .line 585
    return-void

    .line 589
    :cond_0
    :goto_0
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    if-le v0, p1, :cond_1

    .line 590
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->reader:Lorg/yaml/snakeyaml/reader/StreamReader;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->getMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v0

    .line 591
    .local v0, "mark":Lorg/yaml/snakeyaml/error/Mark;
    iget-object v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indents:Lorg/yaml/snakeyaml/util/ArrayStack;

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/util/ArrayStack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->indent:I

    .line 592
    new-instance v1, Lorg/yaml/snakeyaml/tokens/BlockEndToken;

    invoke-direct {v1, v0, v0}, Lorg/yaml/snakeyaml/tokens/BlockEndToken;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-direct {p0, v1}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->addToken(Lorg/yaml/snakeyaml/tokens/Token;)V

    .line 593
    .end local v0    # "mark":Lorg/yaml/snakeyaml/error/Mark;
    goto :goto_0

    .line 594
    :cond_1
    return-void
.end method


# virtual methods
.method public varargs checkToken([Lorg/yaml/snakeyaml/tokens/Token$ID;)Z
    .locals 5
    .param p1, "choices"    # [Lorg/yaml/snakeyaml/tokens/Token$ID;

    .line 250
    nop

    :goto_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->needMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchMoreTokens()V

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 254
    array-length v0, p1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 255
    return v2

    .line 259
    :cond_1
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/tokens/Token;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/tokens/Token;->getTokenId()Lorg/yaml/snakeyaml/tokens/Token$ID;

    move-result-object v0

    .line 260
    .local v0, "first":Lorg/yaml/snakeyaml/tokens/Token$ID;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 261
    aget-object v4, p1, v3

    if-ne v0, v4, :cond_2

    .line 262
    return v2

    .line 260
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 266
    .end local v0    # "first":Lorg/yaml/snakeyaml/tokens/Token$ID;
    .end local v3    # "i":I
    :cond_3
    return v1
.end method

.method public getToken()Lorg/yaml/snakeyaml/tokens/Token;
    .locals 2

    .line 283
    iget v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokensTaken:I

    .line 284
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/tokens/Token;

    return-object v0
.end method

.method public isParseComments()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->parseComments:Z

    return v0
.end method

.method public peekToken()Lorg/yaml/snakeyaml/tokens/Token;
    .locals 2

    .line 273
    nop

    :goto_0
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->needMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0}, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->fetchMoreTokens()V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->tokens:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/tokens/Token;

    return-object v0
.end method

.method public setParseComments(Z)Lorg/yaml/snakeyaml/scanner/ScannerImpl;
    .locals 0
    .param p1, "parseComments"    # Z

    .line 238
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/scanner/ScannerImpl;->parseComments:Z

    .line 239
    return-object p0
.end method
