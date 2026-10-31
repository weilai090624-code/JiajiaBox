.class public abstract Lcom/google/common/escape/ArrayBasedUnicodeEscaper;
.super Lcom/google/common/escape/UnicodeEscaper;
.source "ArrayBasedUnicodeEscaper.java"


# annotations
.annotation runtime Lcom/google/common/escape/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private final replacements:[[C

.field private final replacementsLength:I

.field private final safeMax:I

.field private final safeMaxChar:C

.field private final safeMin:I

.field private final safeMinChar:C


# direct methods
.method protected constructor <init>(Lcom/google/common/escape/ArrayBasedEscaperMap;IILjava/lang/String;)V
    .registers 6
    .param p1, "escaperMap"    # Lcom/google/common/escape/ArrayBasedEscaperMap;
    .param p2, "safeMin"    # I
    .param p3, "safeMax"    # I
    .param p4, "unsafeReplacement"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/google/common/escape/UnicodeEscaper;-><init>()V

    .line 102
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {p1}, Lcom/google/common/escape/ArrayBasedEscaperMap;->getReplacementArray()[[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    .line 104
    iget-object v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    array-length v0, v0

    iput v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacementsLength:I

    .line 105
    if-ge p3, p2, :cond_17

    .line 108
    const/4 p3, -0x1

    .line 109
    const p2, 0x7fffffff

    .line 111
    :cond_17
    iput p2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMin:I

    .line 112
    iput p3, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMax:I

    .line 127
    const v0, 0xd800

    if-lt p2, v0, :cond_29

    .line 130
    const v0, 0xffff

    iput-char v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMinChar:C

    .line 131
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMaxChar:C

    goto :goto_36

    .line 135
    :cond_29
    int-to-char v0, p2

    iput-char v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMinChar:C

    .line 136
    const v0, 0xd7ff

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMaxChar:C

    .line 138
    :goto_36
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;IILjava/lang/String;)V
    .registers 6
    .param p2, "safeMin"    # I
    .param p3, "safeMax"    # I
    .param p4, "unsafeReplacement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    .local p1, "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/common/escape/ArrayBasedEscaperMap;->create(Ljava/util/Map;)Lcom/google/common/escape/ArrayBasedEscaperMap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;-><init>(Lcom/google/common/escape/ArrayBasedEscaperMap;IILjava/lang/String;)V

    .line 80
    return-void
.end method


# virtual methods
.method public final escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .line 146
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 149
    .local v1, "c":C
    iget v2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacementsLength:I

    if-ge v1, v2, :cond_18

    iget-object v2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    aget-object v2, v2, v1

    if-nez v2, :cond_24

    :cond_18
    iget-char v2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMaxChar:C

    if-gt v1, v2, :cond_24

    iget-char v2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMinChar:C

    if-ge v1, v2, :cond_21

    goto :goto_24

    .line 147
    .end local v1    # "c":C
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 152
    .restart local v1    # "c":C
    :cond_24
    :goto_24
    invoke-virtual {p0, p1, v0}, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 155
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_29
    return-object p1
.end method

.method protected final escape(I)[C
    .registers 3
    .param p1, "cp"    # I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 168
    iget v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacementsLength:I

    if-ge p1, v0, :cond_b

    .line 169
    iget-object v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    aget-object v0, v0, p1

    .line 170
    .local v0, "chars":[C
    if-eqz v0, :cond_b

    .line 171
    return-object v0

    .line 174
    .end local v0    # "chars":[C
    :cond_b
    iget v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMin:I

    if-lt p1, v0, :cond_15

    iget v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMax:I

    if-gt p1, v0, :cond_15

    .line 175
    const/4 v0, 0x0

    return-object v0

    .line 177
    :cond_15
    invoke-virtual {p0, p1}, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->escapeUnsafe(I)[C

    move-result-object v0

    return-object v0
.end method

.method protected abstract escapeUnsafe(I)[C
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method protected final nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .registers 6
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "end"    # I

    .line 183
    nop

    :goto_1
    if-ge p2, p3, :cond_1e

    .line 184
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 185
    .local v0, "c":C
    iget v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacementsLength:I

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    aget-object v1, v1, v0

    if-nez v1, :cond_1e

    :cond_11
    iget-char v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMaxChar:C

    if-gt v0, v1, :cond_1e

    iget-char v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMinChar:C

    if-ge v0, v1, :cond_1a

    .line 188
    goto :goto_1e

    .line 190
    :cond_1a
    nop

    .end local v0    # "c":C
    add-int/lit8 p2, p2, 0x1

    .line 191
    goto :goto_1

    .line 192
    :cond_1e
    :goto_1e
    return p2
.end method
