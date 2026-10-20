.class public final Lorg/yaml/snakeyaml/error/Mark;
.super Ljava/lang/Object;
.source "Mark.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private buffer:[I

.field private column:I

.field private index:I

.field private line:I

.field private name:Ljava/lang/String;

.field private pointer:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "line"    # I
    .param p4, "column"    # I
    .param p5, "buffer"    # Ljava/lang/String;
    .param p6, "pointer"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    invoke-virtual {p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/yaml/snakeyaml/error/Mark;-><init>(Ljava/lang/String;III[CI)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III[CI)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "line"    # I
    .param p4, "column"    # I
    .param p5, "str"    # [C
    .param p6, "pointer"    # I

    .line 45
    invoke-static {p5}, Lorg/yaml/snakeyaml/error/Mark;->toCodePoints([C)[I

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/yaml/snakeyaml/error/Mark;-><init>(Ljava/lang/String;III[II)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III[II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "line"    # I
    .param p4, "column"    # I
    .param p5, "buffer"    # [I
    .param p6, "pointer"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/yaml/snakeyaml/error/Mark;->name:Ljava/lang/String;

    .line 61
    iput p2, p0, Lorg/yaml/snakeyaml/error/Mark;->index:I

    .line 62
    iput p3, p0, Lorg/yaml/snakeyaml/error/Mark;->line:I

    .line 63
    iput p4, p0, Lorg/yaml/snakeyaml/error/Mark;->column:I

    .line 64
    iput-object p5, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:[I

    .line 65
    iput p6, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    .line 66
    return-void
.end method

.method private isLineBreak(I)Z
    .locals 1
    .param p1, "c"    # I

    .line 69
    sget-object v0, Lorg/yaml/snakeyaml/scanner/Constant;->NULL_OR_LINEBR:Lorg/yaml/snakeyaml/scanner/Constant;

    invoke-virtual {v0, p1}, Lorg/yaml/snakeyaml/scanner/Constant;->has(I)Z

    move-result v0

    return v0
.end method

.method private static toCodePoints([C)[I
    .locals 5
    .param p0, "str"    # [C

    .line 35
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    new-array v0, v0, [I

    .line 36
    .local v0, "codePoints":[I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "c":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 37
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v3

    .line 38
    .local v3, "cp":I
    aput v3, v0, v2

    .line 39
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 36
    .end local v3    # "cp":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    .end local v1    # "i":I
    .end local v2    # "c":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getBuffer()[I
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:[I

    return-object v0
.end method

.method public getColumn()I
    .locals 1

    .line 147
    iget v0, p0, Lorg/yaml/snakeyaml/error/Mark;->column:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 155
    iget v0, p0, Lorg/yaml/snakeyaml/error/Mark;->index:I

    return v0
.end method

.method public getLine()I
    .locals 1

    .line 139
    iget v0, p0, Lorg/yaml/snakeyaml/error/Mark;->line:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/yaml/snakeyaml/error/Mark;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPointer()I
    .locals 1

    .line 163
    iget v0, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    return v0
.end method

.method public get_snippet()Ljava/lang/String;
    .locals 2

    .line 113
    const/4 v0, 0x4

    const/16 v1, 0x4b

    invoke-virtual {p0, v0, v1}, Lorg/yaml/snakeyaml/error/Mark;->get_snippet(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_snippet(II)Ljava/lang/String;
    .locals 10
    .param p1, "indent"    # I
    .param p2, "max_length"    # I

    .line 73
    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 74
    .local v0, "half":F
    iget v1, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    .line 75
    .local v1, "start":I
    const-string v2, ""

    .line 76
    .local v2, "head":Ljava/lang/String;
    :cond_0
    if-lez v1, :cond_1

    iget-object v3, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lorg/yaml/snakeyaml/error/Mark;->isLineBreak(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 77
    add-int/lit8 v1, v1, -0x1

    .line 78
    iget v3, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    .line 79
    const-string v2, " ... "

    .line 80
    add-int/lit8 v1, v1, 0x5

    .line 81
    nop

    .line 84
    :cond_1
    const-string v3, ""

    .line 85
    .local v3, "tail":Ljava/lang/String;
    iget v4, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    .line 86
    .local v4, "end":I
    :cond_2
    iget-object v5, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:[I

    array-length v5, v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:[I

    aget v5, v5, v4

    invoke-direct {p0, v5}, Lorg/yaml/snakeyaml/error/Mark;->isLineBreak(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 87
    add-int/lit8 v4, v4, 0x1

    .line 88
    iget v5, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    sub-int v5, v4, v5

    int-to-float v5, v5

    cmpl-float v5, v5, v0

    if-lez v5, :cond_2

    .line 89
    const-string v3, " ... "

    .line 90
    add-int/lit8 v4, v4, -0x5

    .line 91
    nop

    .line 95
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v5, "result":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const-string v7, " "

    if-ge v6, p1, :cond_4

    .line 97
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 99
    .end local v6    # "i":I
    :cond_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    move v6, v1

    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v4, :cond_5

    .line 101
    iget-object v8, p0, Lorg/yaml/snakeyaml/error/Mark;->buffer:[I

    aget v8, v8, v6

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 103
    .end local v6    # "i":I
    :cond_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    iget v8, p0, Lorg/yaml/snakeyaml/error/Mark;->pointer:I

    add-int/2addr v8, p1

    sub-int/2addr v8, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    if-ge v6, v8, :cond_6

    .line 106
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 108
    .end local v6    # "i":I
    :cond_6
    const-string v6, "^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 118
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/error/Mark;->get_snippet()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "snippet":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/yaml/snakeyaml/error/Mark;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v2, ", line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget v2, p0, Lorg/yaml/snakeyaml/error/Mark;->line:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v2, ", column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget v2, p0, Lorg/yaml/snakeyaml/error/Mark;->column:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
