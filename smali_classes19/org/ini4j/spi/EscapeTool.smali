.class public Lorg/ini4j/spi/EscapeTool;
.super Ljava/lang/Object;
.source "EscapeTool.java"


# static fields
.field private static final ASCII_MAX:C = '~'

.field private static final ASCII_MIN:C = ' '

.field static final DOUBLE_QUOTE:C = '\"'

.field private static final ESCAPEABLE_CHARS:Ljava/lang/String; = "\\\t\n\u000c\u0008\r:="

.field private static final ESCAPE_CHAR:C = '\\'

.field private static final ESCAPE_LETTERS:Ljava/lang/String; = "\\tnfbr:="

.field static final HEX:[C

.field static final HEX_DIGIT_1_OFFSET:I = 0xc

.field static final HEX_DIGIT_2_OFFSET:I = 0x8

.field static final HEX_DIGIT_3_OFFSET:I = 0x4

.field static final HEX_DIGIT_MASK:I = 0xf

.field static final HEX_RADIX:I = 0x10

.field private static final INSTANCE:Lorg/ini4j/spi/EscapeTool;

.field private static final UNICODE_HEX_DIGITS:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/ini4j/spi/EscapeTool;->HEX:[C

    .line 24
    const-class v0, Lorg/ini4j/spi/EscapeTool;

    invoke-static {v0}, Lorg/ini4j/spi/ServiceFinder;->findService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ini4j/spi/EscapeTool;

    sput-object v0, Lorg/ini4j/spi/EscapeTool;->INSTANCE:Lorg/ini4j/spi/EscapeTool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/ini4j/spi/EscapeTool;
    .locals 1

    .line 37
    sget-object v0, Lorg/ini4j/spi/EscapeTool;->INSTANCE:Lorg/ini4j/spi/EscapeTool;

    return-object v0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 43
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 45
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 47
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 48
    .local v3, "c":C
    const-string v4, "\\\t\n\u000c\u0008\r:="

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 50
    .local v4, "idx":I
    if-ltz v4, :cond_0

    .line 52
    const/16 v5, 0x5c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 53
    const-string v5, "\\tnfbr:="

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 57
    :cond_0
    const/16 v5, 0x20

    if-lt v3, v5, :cond_2

    const/16 v5, 0x7e

    if-le v3, v5, :cond_1

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 59
    :cond_2
    :goto_1
    invoke-virtual {p0, v1, v3}, Lorg/ini4j/spi/EscapeTool;->escapeBinary(Ljava/lang/StringBuilder;C)V

    .line 45
    .end local v3    # "c":C
    .end local v4    # "idx":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method escapeBinary(Ljava/lang/StringBuilder;C)V
    .locals 2
    .param p1, "buff"    # Ljava/lang/StringBuilder;
    .param p2, "c"    # C

    .line 168
    const-string v0, "\\u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    sget-object v0, Lorg/ini4j/spi/EscapeTool;->HEX:[C

    ushr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    sget-object v0, Lorg/ini4j/spi/EscapeTool;->HEX:[C

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    sget-object v0, Lorg/ini4j/spi/EscapeTool;->HEX:[C

    ushr-int/lit8 v1, p2, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    sget-object v0, Lorg/ini4j/spi/EscapeTool;->HEX:[C

    and-int/lit8 v1, p2, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    return-void
.end method

.method public quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .line 73
    move-object v0, p1

    .line 75
    .local v0, "ret":Ljava/lang/String;
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v1, "buff":Ljava/lang/StringBuilder;
    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 82
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 84
    .local v4, "c":C
    const/16 v5, 0x5c

    if-eq v4, v5, :cond_0

    if-ne v4, v2, :cond_1

    .line 86
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .end local v1    # "buff":Ljava/lang/StringBuilder;
    :cond_3
    return-object v0
.end method

.method public unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "line"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 102
    .local v0, "n":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 103
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 105
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 107
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 109
    .local v2, "c":C
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_2

    .line 111
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 112
    invoke-virtual {p0, v1, v2, p1, v4}, Lorg/ini4j/spi/EscapeTool;->unescapeBinary(Ljava/lang/StringBuilder;CLjava/lang/String;I)I

    move-result v3

    .line 114
    .local v3, "next":I
    if-ne v3, v4, :cond_1

    .line 116
    const-string v5, "\\tnfbr:="

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 118
    .local v5, "idx":I
    if-ltz v5, :cond_0

    .line 120
    const-string v6, "\\\t\n\u000c\u0008\r:="

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 123
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    .end local v5    # "idx":I
    goto :goto_1

    .line 127
    :cond_1
    move v4, v3

    .line 129
    .end local v3    # "next":I
    :goto_1
    move v2, v4

    goto :goto_2

    .line 132
    .end local v4    # "i":I
    .local v3, "i":I
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v3

    .line 134
    .end local v3    # "i":I
    .local v2, "i":I
    :goto_2
    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method unescapeBinary(Ljava/lang/StringBuilder;CLjava/lang/String;I)I
    .locals 4
    .param p1, "buff"    # Ljava/lang/StringBuilder;
    .param p2, "escapeType"    # C
    .param p3, "line"    # Ljava/lang/String;
    .param p4, "index"    # I

    .line 177
    move v0, p4

    .line 179
    .local v0, "ret":I
    const/16 v1, 0x75

    if-ne p2, v1, :cond_0

    .line 183
    add-int/lit8 v1, p4, 0x4

    :try_start_0
    invoke-virtual {p3, p4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    add-int/lit8 v0, p4, 0x4

    .line 189
    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 188
    .local v1, "x":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Malformed \\uxxxx encoding."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 192
    .end local v1    # "x":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method public unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v0, "buff":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 144
    .local v1, "escape":Z
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 146
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 148
    .local v3, "c":C
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    .line 150
    if-nez v1, :cond_0

    .line 152
    const/4 v1, 0x1

    .line 154
    goto :goto_1

    .line 157
    :cond_0
    const/4 v1, 0x0

    .line 160
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
