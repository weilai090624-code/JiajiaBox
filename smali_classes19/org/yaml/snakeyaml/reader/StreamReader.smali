.class public Lorg/yaml/snakeyaml/reader/StreamReader;
.super Ljava/lang/Object;
.source "StreamReader.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x401


# instance fields
.field private buffer:[C

.field private column:I

.field private dataLength:I

.field private dataWindow:[I

.field private eof:Z

.field private index:I

.field private line:I

.field private name:Ljava/lang/String;

.field private pointer:I

.field private final stream:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 4
    .param p1, "reader"    # Ljava/io/Reader;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    .line 54
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    .line 55
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    .line 56
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    .line 68
    const-string v1, "\'reader\'"

    iput-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    .line 69
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    .line 70
    iput v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataLength:I

    .line 71
    iput-object p1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->stream:Ljava/io/Reader;

    .line 72
    iput-boolean v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    .line 73
    const/16 v0, 0x401

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:[C

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "stream"    # Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;-><init>(Ljava/io/Reader;)V

    .line 64
    const-string v0, "\'string\'"

    iput-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private ensureEnoughData()Z
    .registers 2

    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->ensureEnoughData(I)Z

    move-result v0

    return v0
.end method

.method private ensureEnoughData(I)Z
    .registers 4
    .param p1, "size"    # I

    .line 175
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    if-nez v0, :cond_e

    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataLength:I

    if-lt v0, v1, :cond_e

    .line 176
    invoke-direct {p0}, Lorg/yaml/snakeyaml/reader/StreamReader;->update()V

    .line 178
    :cond_e
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataLength:I

    if-ge v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public static isPrintable(I)Z
    .registers 2
    .param p0, "c"    # I

    .line 92
    const/16 v0, 0x20

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7e

    if-le p0, v0, :cond_37

    :cond_8
    const/16 v0, 0x9

    if-eq p0, v0, :cond_37

    const/16 v0, 0xa

    if-eq p0, v0, :cond_37

    const/16 v0, 0xd

    if-eq p0, v0, :cond_37

    const/16 v0, 0x85

    if-eq p0, v0, :cond_37

    const/16 v0, 0xa0

    if-lt p0, v0, :cond_21

    const v0, 0xd7ff

    if-le p0, v0, :cond_37

    :cond_21
    const v0, 0xe000

    if-lt p0, v0, :cond_2b

    const v0, 0xfffd

    if-le p0, v0, :cond_37

    :cond_2b
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_35

    const v0, 0x10ffff

    if-gt p0, v0, :cond_35

    goto :goto_37

    :cond_35
    const/4 v0, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v0, 0x1

    :goto_38
    return v0
.end method

.method public static isPrintable(Ljava/lang/String;)Z
    .registers 5
    .param p0, "data"    # Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 78
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "offset":I
    :goto_5
    if-ge v1, v0, :cond_19

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 81
    .local v2, "codePoint":I
    invoke-static {v2}, Lorg/yaml/snakeyaml/reader/StreamReader;->isPrintable(I)Z

    move-result v3

    if-nez v3, :cond_13

    .line 82
    const/4 v3, 0x0

    return v3

    .line 85
    :cond_13
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 86
    .end local v2    # "codePoint":I
    goto :goto_5

    .line 88
    .end local v1    # "offset":I
    :cond_19
    const/4 v1, 0x1

    return v1
.end method

.method private update()V
    .registers 8

    .line 183
    :try_start_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->stream:Ljava/io/Reader;

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:[C

    const/16 v2, 0x400

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 184
    .local v0, "read":I
    const/4 v1, 0x1

    if-lez v0, :cond_71

    .line 185
    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataLength:I

    iget v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    sub-int/2addr v2, v4

    .line 186
    .local v2, "cpIndex":I
    iget-object v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    iget v5, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    iget v6, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataLength:I

    add-int/2addr v6, v0

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v4

    iput-object v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    .line 188
    iget-object v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:[C

    add-int/lit8 v5, v0, -0x1

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 189
    iget-object v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->stream:Ljava/io/Reader;

    iget-object v5, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:[C

    invoke-virtual {v4, v5, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3a

    .line 190
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z

    goto :goto_3c

    .line 192
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    .line 196
    :cond_3c
    :goto_3c
    const/16 v1, 0x20

    .line 197
    .local v1, "nonPrintable":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3f
    if-ge v4, v0, :cond_5c

    .line 198
    iget-object v5, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->buffer:[C

    invoke-static {v5, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v5

    .line 199
    .local v5, "codePoint":I
    iget-object v6, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    aput v5, v6, v2

    .line 200
    invoke-static {v5}, Lorg/yaml/snakeyaml/reader/StreamReader;->isPrintable(I)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 201
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_59

    .line 203
    :cond_57
    move v1, v5

    .line 204
    move v4, v0

    .line 197
    .end local v5    # "codePoint":I
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 208
    .end local v4    # "i":I
    :cond_5c
    iput v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataLength:I

    .line 209
    iput v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    .line 210
    const/16 v3, 0x20

    if-ne v1, v3, :cond_65

    .line 214
    .end local v1    # "nonPrintable":I
    .end local v2    # "cpIndex":I
    goto :goto_73

    .line 211
    .restart local v1    # "nonPrintable":I
    .restart local v2    # "cpIndex":I
    :cond_65
    new-instance v3, Lorg/yaml/snakeyaml/reader/ReaderException;

    iget-object v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    const-string v6, "special characters are not allowed"

    invoke-direct {v3, v4, v5, v1, v6}, Lorg/yaml/snakeyaml/reader/ReaderException;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    throw v3

    .line 215
    .end local v1    # "nonPrintable":I
    .end local v2    # "cpIndex":I
    :cond_71
    iput-boolean v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->eof:Z
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_73} :catch_75

    .line 219
    .end local v0    # "read":I
    :goto_73
    nop

    .line 220
    return-void

    .line 217
    :catch_75
    move-exception v0

    .line 218
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lorg/yaml/snakeyaml/error/YAMLException;

    invoke-direct {v1, v0}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public forward()V
    .registers 2

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/yaml/snakeyaml/reader/StreamReader;->forward(I)V

    .line 103
    return-void
.end method

.method public forward(I)V
    .registers 6
    .param p1, "length"    # I

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_4e

    invoke-direct {p0}, Lorg/yaml/snakeyaml/reader/StreamReader;->ensureEnoughData()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 113
    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    aget v1, v1, v2

    .line 114
    .local v1, "c":I
    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    .line 115
    sget-object v2, Lorg/yaml/snakeyaml/scanner/Constant;->LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v2, v1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v2

    if-nez v2, :cond_42

    const/16 v2, 0xd

    if-ne v1, v2, :cond_36

    invoke-direct {p0}, Lorg/yaml/snakeyaml/reader/StreamReader;->ensureEnoughData()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    iget v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    aget v2, v2, v3

    const/16 v3, 0xa

    if-eq v2, v3, :cond_36

    goto :goto_42

    .line 119
    :cond_36
    const v2, 0xfeff

    if-eq v1, v2, :cond_4b

    .line 120
    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    goto :goto_4b

    .line 117
    :cond_42
    :goto_42
    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    .line 118
    const/4 v2, 0x0

    iput v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    .line 112
    .end local v1    # "c":I
    :cond_4b
    :goto_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    .end local v0    # "i":I
    :cond_4e
    return-void
.end method

.method public getColumn()I
    .registers 2

    .line 224
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .line 231
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    return v0
.end method

.method public getLine()I
    .registers 2

    .line 235
    iget v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    return v0
.end method

.method public getMark()Lorg/yaml/snakeyaml/error/Mark;
    .registers 9

    .line 98
    new-instance v7, Lorg/yaml/snakeyaml/error/Mark;

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->name:Ljava/lang/String;

    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    iget v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->line:I

    iget v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    iget-object v5, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    iget v6, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/yaml/snakeyaml/error/Mark;-><init>(Ljava/lang/String;III[II)V

    return-object v7
.end method

.method public peek()I
    .registers 3

    .line 126
    invoke-direct {p0}, Lorg/yaml/snakeyaml/reader/StreamReader;->ensureEnoughData()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    aget v0, v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public peek(I)I
    .registers 4
    .param p1, "index"    # I

    .line 136
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;->ensureEnoughData(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public prefix(I)Ljava/lang/String;
    .registers 7
    .param p1, "length"    # I

    .line 146
    if-nez p1, :cond_5

    .line 147
    const-string v0, ""

    return-object v0

    .line 148
    :cond_5
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;->ensureEnoughData(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 149
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([III)V

    return-object v0

    .line 151
    :cond_15
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataWindow:[I

    iget v2, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    iget v3, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->dataLength:I

    iget v4, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([III)V

    return-object v0
.end method

.method public prefixForward(I)Ljava/lang/String;
    .registers 4
    .param p1, "length"    # I

    .line 162
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/reader/StreamReader;->prefix(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "prefix":Ljava/lang/String;
    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->pointer:I

    .line 164
    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->index:I

    .line 166
    iget v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/yaml/snakeyaml/reader/StreamReader;->column:I

    .line 167
    return-object v0
.end method
