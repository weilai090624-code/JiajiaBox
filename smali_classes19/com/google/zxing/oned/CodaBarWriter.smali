.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "CodaBarWriter.java"


# static fields
.field private static final ALT_START_END_CHARS:[C

.field private static final CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

.field private static final DEFAULT_GUARD:C

.field private static final START_END_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_1e

    sput-object v1, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    .line 27
    new-array v1, v0, [C

    fill-array-data v1, :array_26

    sput-object v1, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    .line 28
    new-array v0, v0, [C

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    .line 29
    sget-object v0, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    sput-char v0, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    return-void

    :array_1e
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    :array_26
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data

    :array_2e
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .registers 14
    .param p1, "contents"    # Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_23

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v1, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_95

    .line 39
    :cond_23
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 40
    .local v0, "firstChar":C
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 41
    .local v1, "lastChar":C
    sget-object v4, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v4, v0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    .line 42
    .local v4, "startsNormal":Z
    sget-object v5, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    invoke-static {v5, v1}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v5

    .line 43
    .local v5, "endsNormal":Z
    sget-object v6, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v6, v0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v6

    .line 44
    .local v6, "startsAlt":Z
    sget-object v7, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    invoke-static {v7, v1}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v7

    .line 45
    .local v7, "endsAlt":Z
    const-string v8, "Invalid start/end guards: "

    if-eqz v4, :cond_65

    .line 46
    if-eqz v5, :cond_57

    goto :goto_95

    .line 47
    :cond_57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_65
    if-eqz v6, :cond_78

    .line 51
    if-eqz v7, :cond_6a

    goto :goto_95

    .line 52
    :cond_6a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_78
    if-nez v5, :cond_163

    if-nez v7, :cond_163

    .line 61
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v9, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-char v9, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    .end local v0    # "firstChar":C
    .end local v1    # "lastChar":C
    .end local v4    # "startsNormal":Z
    .end local v5    # "endsNormal":Z
    .end local v6    # "startsAlt":Z
    .end local v7    # "endsAlt":Z
    :goto_95
    const/16 v0, 0x14

    .line 67
    .local v0, "resultLength":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v1, v4, :cond_ed

    .line 68
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_e8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_e8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_ba

    goto :goto_e8

    .line 70
    :cond_ba
    sget-object v4, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 71
    add-int/lit8 v0, v0, 0xa

    goto :goto_ea

    .line 73
    :cond_c9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot encode : \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_e8
    :goto_e8
    add-int/lit8 v0, v0, 0x9

    .line 67
    :goto_ea
    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    .line 77
    .end local v1    # "i":I
    :cond_ed
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    add-int/2addr v1, v0

    .line 79
    new-array v1, v1, [Z

    .line 80
    .local v1, "result":[Z
    const/4 v4, 0x0

    .line 81
    .local v4, "position":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_f7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_162

    .line 82
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 83
    .local v6, "c":C
    if-eqz v5, :cond_10e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v3

    if-ne v5, v7, :cond_11e

    .line 85
    :cond_10e
    sparse-switch v6, :sswitch_data_172

    goto :goto_11e

    .line 87
    :sswitch_112
    const/16 v6, 0x41

    .line 88
    goto :goto_11e

    .line 90
    :sswitch_115
    const/16 v6, 0x42

    .line 91
    goto :goto_11e

    .line 96
    :sswitch_118
    const/16 v6, 0x44

    goto :goto_11e

    .line 93
    :sswitch_11b
    const/16 v6, 0x43

    .line 94
    nop

    .line 100
    :cond_11e
    :goto_11e
    const/4 v7, 0x0

    .line 101
    .local v7, "code":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_120
    sget-object v9, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    array-length v9, v9

    if-ge v8, v9, :cond_133

    .line 103
    sget-object v9, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v9, v9, v8

    if-ne v6, v9, :cond_130

    .line 104
    sget-object v9, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v7, v9, v8

    .line 105
    goto :goto_133

    .line 101
    :cond_130
    add-int/lit8 v8, v8, 0x1

    goto :goto_120

    .line 108
    .end local v8    # "i":I
    :cond_133
    :goto_133
    const/4 v8, 0x1

    .line 109
    .local v8, "color":Z
    const/4 v9, 0x0

    .line 110
    .local v9, "counter":I
    const/4 v10, 0x0

    .line 111
    .local v10, "bit":I
    :goto_136
    const/4 v11, 0x7

    if-ge v10, v11, :cond_154

    .line 112
    aput-boolean v8, v1, v4

    .line 113
    add-int/lit8 v4, v4, 0x1

    .line 114
    rsub-int/lit8 v11, v10, 0x6

    shr-int v11, v7, v11

    and-int/2addr v11, v3

    if-eqz v11, :cond_14a

    if-ne v9, v3, :cond_147

    goto :goto_14a

    .line 119
    :cond_147
    add-int/lit8 v9, v9, 0x1

    goto :goto_136

    .line 115
    :cond_14a
    :goto_14a
    if-nez v8, :cond_14e

    const/4 v11, 0x1

    goto :goto_14f

    :cond_14e
    const/4 v11, 0x0

    :goto_14f
    move v8, v11

    .line 116
    add-int/lit8 v10, v10, 0x1

    .line 117
    const/4 v9, 0x0

    goto :goto_136

    .line 122
    :cond_154
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v3

    if-ge v5, v11, :cond_15f

    .line 123
    aput-boolean v2, v1, v4

    .line 124
    add-int/lit8 v4, v4, 0x1

    .line 81
    .end local v6    # "c":C
    .end local v7    # "code":I
    .end local v8    # "color":Z
    .end local v9    # "counter":I
    .end local v10    # "bit":I
    :cond_15f
    add-int/lit8 v5, v5, 0x1

    goto :goto_f7

    .line 127
    .end local v5    # "index":I
    :cond_162
    return-object v1

    .line 58
    .local v0, "firstChar":C
    .local v1, "lastChar":C
    .local v4, "startsNormal":Z
    .local v5, "endsNormal":Z
    .local v6, "startsAlt":Z
    .local v7, "endsAlt":Z
    :cond_163
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_172
    .sparse-switch
        0x2a -> :sswitch_11b
        0x45 -> :sswitch_118
        0x4e -> :sswitch_115
        0x54 -> :sswitch_112
    .end sparse-switch
.end method
