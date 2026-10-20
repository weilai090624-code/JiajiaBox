.class public final Lj$/util/StringJoiner;
.super Ljava/lang/Object;
.source "StringJoiner.java"


# instance fields
.field private final delimiter:Ljava/lang/String;

.field private elts:[Ljava/lang/String;

.field private emptyValue:Ljava/lang/String;

.field private len:I

.field private final prefix:Ljava/lang/String;

.field private size:I

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "delimiter"    # Ljava/lang/CharSequence;

    .line 100
    const-string v0, ""

    invoke-direct {p0, p1, v0, v0}, Lj$/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "delimiter"    # Ljava/lang/CharSequence;
    .param p2, "prefix"    # Ljava/lang/CharSequence;
    .param p3, "suffix"    # Ljava/lang/CharSequence;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v0, "The prefix must not be null"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    const-string v0, "The delimiter must not be null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    const-string v0, "The suffix must not be null"

    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj$/util/StringJoiner;->prefix:Ljava/lang/String;

    .line 126
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj$/util/StringJoiner;->delimiter:Ljava/lang/String;

    .line 127
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj$/util/StringJoiner;->suffix:Ljava/lang/String;

    .line 128
    return-void
.end method

.method private compactElts()V
    .locals 7

    .line 241
    iget v0, p0, Lj$/util/StringJoiner;->size:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 242
    iget v0, p0, Lj$/util/StringJoiner;->len:I

    new-array v0, v0, [C

    .line 243
    .local v0, "chars":[C
    const/4 v2, 0x1

    .local v2, "i":I
    iget-object v3, p0, Lj$/util/StringJoiner;->elts:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3, v0, v4}, Lj$/util/StringJoiner;->getChars(Ljava/lang/String;[CI)I

    move-result v3

    .line 245
    .local v3, "k":I
    :cond_0
    iget-object v5, p0, Lj$/util/StringJoiner;->delimiter:Ljava/lang/String;

    invoke-static {v5, v0, v3}, Lj$/util/StringJoiner;->getChars(Ljava/lang/String;[CI)I

    move-result v5

    add-int/2addr v3, v5

    .line 246
    iget-object v5, p0, Lj$/util/StringJoiner;->elts:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5, v0, v3}, Lj$/util/StringJoiner;->getChars(Ljava/lang/String;[CI)I

    move-result v5

    add-int/2addr v3, v5

    .line 247
    iget-object v5, p0, Lj$/util/StringJoiner;->elts:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v5, v2

    .line 248
    add-int/2addr v2, v1

    iget v5, p0, Lj$/util/StringJoiner;->size:I

    if-lt v2, v5, :cond_0

    .line 249
    iput v1, p0, Lj$/util/StringJoiner;->size:I

    .line 250
    iget-object v1, p0, Lj$/util/StringJoiner;->elts:[Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    aput-object v5, v1, v4

    .line 252
    .end local v0    # "chars":[C
    .end local v2    # "i":I
    .end local v3    # "k":I
    :cond_1
    return-void
.end method

.method private static getChars(Ljava/lang/String;[CI)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "chars"    # [C
    .param p2, "start"    # I

    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 152
    .local v0, "len":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 153
    return v0
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;)Lj$/util/StringJoiner;
    .locals 4
    .param p1, "newElement"    # Ljava/lang/CharSequence;

    .line 199
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "elt":Ljava/lang/String;
    iget-object v1, p0, Lj$/util/StringJoiner;->elts:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 201
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lj$/util/StringJoiner;->elts:[Ljava/lang/String;

    goto :goto_0

    .line 203
    :cond_0
    iget v1, p0, Lj$/util/StringJoiner;->size:I

    iget-object v2, p0, Lj$/util/StringJoiner;->elts:[Ljava/lang/String;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 204
    iget-object v1, p0, Lj$/util/StringJoiner;->elts:[Ljava/lang/String;

    iget v2, p0, Lj$/util/StringJoiner;->size:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lj$/util/StringJoiner;->elts:[Ljava/lang/String;

    .line 205
    :cond_1
    iget v1, p0, Lj$/util/StringJoiner;->len:I

    iget-object v2, p0, Lj$/util/StringJoiner;->delimiter:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lj$/util/StringJoiner;->len:I

    .line 207
    :goto_0
    iget v1, p0, Lj$/util/StringJoiner;->len:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lj$/util/StringJoiner;->len:I

    .line 208
    iget-object v1, p0, Lj$/util/StringJoiner;->elts:[Ljava/lang/String;

    iget v2, p0, Lj$/util/StringJoiner;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lj$/util/StringJoiner;->size:I

    aput-object v0, v1, v2

    .line 209
    return-object p0
.end method

.method public length()I
    .locals 2

    .line 265
    iget v0, p0, Lj$/util/StringJoiner;->size:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/util/StringJoiner;->emptyValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/StringJoiner;->emptyValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 266
    :cond_0
    iget v0, p0, Lj$/util/StringJoiner;->len:I

    iget-object v1, p0, Lj$/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lj$/util/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 265
    :goto_0
    return v0
.end method

.method public merge(Lj$/util/StringJoiner;)Lj$/util/StringJoiner;
    .locals 2
    .param p1, "other"    # Lj$/util/StringJoiner;

    .line 232
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p1, Lj$/util/StringJoiner;->elts:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 234
    return-object p0

    .line 236
    :cond_0
    invoke-direct {p1}, Lj$/util/StringJoiner;->compactElts()V

    .line 237
    iget-object v0, p1, Lj$/util/StringJoiner;->elts:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lj$/util/StringJoiner;->add(Ljava/lang/CharSequence;)Lj$/util/StringJoiner;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyValue(Ljava/lang/CharSequence;)Lj$/util/StringJoiner;
    .locals 1
    .param p1, "emptyValue"    # Ljava/lang/CharSequence;

    .line 145
    const-string v0, "The empty value must not be null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 146
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj$/util/StringJoiner;->emptyValue:Ljava/lang/String;

    .line 147
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 166
    iget-object v0, p0, Lj$/util/StringJoiner;->elts:[Ljava/lang/String;

    .line 167
    .local v0, "elts":[Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lj$/util/StringJoiner;->emptyValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lj$/util/StringJoiner;->emptyValue:Ljava/lang/String;

    return-object v1

    .line 170
    :cond_0
    iget v1, p0, Lj$/util/StringJoiner;->size:I

    .line 171
    .local v1, "size":I
    iget-object v2, p0, Lj$/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lj$/util/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 172
    .local v2, "addLen":I
    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 173
    invoke-direct {p0}, Lj$/util/StringJoiner;->compactElts()V

    .line 174
    if-nez v1, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    aget-object v3, v0, v3

    :goto_0
    return-object v3

    .line 176
    :cond_2
    iget-object v4, p0, Lj$/util/StringJoiner;->delimiter:Ljava/lang/String;

    .line 177
    .local v4, "delimiter":Ljava/lang/String;
    iget v5, p0, Lj$/util/StringJoiner;->len:I

    add-int/2addr v5, v2

    new-array v5, v5, [C

    .line 178
    .local v5, "chars":[C
    iget-object v6, p0, Lj$/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-static {v6, v5, v3}, Lj$/util/StringJoiner;->getChars(Ljava/lang/String;[CI)I

    move-result v6

    .line 179
    .local v6, "k":I
    if-lez v1, :cond_3

    .line 180
    aget-object v3, v0, v3

    invoke-static {v3, v5, v6}, Lj$/util/StringJoiner;->getChars(Ljava/lang/String;[CI)I

    move-result v3

    add-int/2addr v6, v3

    .line 181
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 182
    invoke-static {v4, v5, v6}, Lj$/util/StringJoiner;->getChars(Ljava/lang/String;[CI)I

    move-result v7

    add-int/2addr v6, v7

    .line 183
    aget-object v7, v0, v3

    invoke-static {v7, v5, v6}, Lj$/util/StringJoiner;->getChars(Ljava/lang/String;[CI)I

    move-result v7

    add-int/2addr v6, v7

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 186
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lj$/util/StringJoiner;->suffix:Ljava/lang/String;

    invoke-static {v3, v5, v6}, Lj$/util/StringJoiner;->getChars(Ljava/lang/String;[CI)I

    move-result v3

    add-int/2addr v6, v3

    .line 187
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method
