.class final Lcom/google/common/collect/RegularImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMap$KeySet;,
        Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;,
        Lcom/google/common/collect/RegularImmutableMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ABSENT:B = -0x1t

.field private static final BYTE_MASK:I = 0xff

.field private static final BYTE_MAX_SIZE:I = 0x80

.field static final EMPTY:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHORT_MASK:I = 0xffff

.field private static final SHORT_MAX_SIZE:I = 0x8000

.field private static final serialVersionUID:J


# instance fields
.field final transient alternatingKeysAndValues:[Ljava/lang/Object;

.field private final transient hashTable:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final transient size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/common/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0
    .param p1, "hashTable"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p3, "size"    # I

    .line 205
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap;->hashTable:Ljava/lang/Object;

    .line 207
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 208
    iput p3, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    .line 209
    return-void
.end method

.method static create(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableMap;
    .locals 3
    .param p0, "n"    # I
    .param p1, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/RegularImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 77
    if-nez p0, :cond_0

    .line 78
    sget-object v0, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/ImmutableMap;

    check-cast v0, Lcom/google/common/collect/RegularImmutableMap;

    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 81
    aget-object v0, p1, v0

    .line 82
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aget-object v2, p1, v1

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 81
    invoke-static {v0, v2}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Lcom/google/common/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0

    .line 85
    :cond_1
    array-length v2, p1

    shr-int/lit8 v1, v2, 0x1

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 86
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v1

    .line 87
    .local v1, "tableSize":I
    invoke-static {p1, p0, v1, v0}, Lcom/google/common/collect/RegularImmutableMap;->createHashTable([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "hashTable":Ljava/lang/Object;
    new-instance v2, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v2, v0, p1, p0}, Lcom/google/common/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v2
.end method

.method static createHashTable([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 10
    .param p0, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p1, "n"    # I
    .param p2, "tableSize"    # I
    .param p3, "keyOffset"    # I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 98
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 101
    aget-object v0, p0, p3

    .line 102
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    xor-int/lit8 v1, p3, 0x1

    aget-object v1, p0, v1

    .line 103
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    add-int/lit8 v0, p2, -0x1

    .line 107
    .local v0, "mask":I
    const/16 v1, 0x80

    const/4 v2, -0x1

    if-gt p2, v1, :cond_4

    .line 114
    new-array v1, p2, [B

    .line 115
    .local v1, "hashTable":[B
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 117
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_3

    .line 118
    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, p3

    .line 120
    .local v3, "keyIndex":I
    aget-object v4, p0, v3

    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 121
    .local v4, "key":Ljava/lang/Object;
    xor-int/lit8 v5, v3, 0x1

    aget-object v5, p0, v5

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 122
    .local v5, "value":Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v6

    .line 124
    .local v6, "h":I
    :goto_1
    and-int/2addr v6, v0

    .line 125
    aget-byte v7, v1, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    .line 126
    .local v7, "previousKeyIndex":I
    if-ne v7, v8, :cond_1

    .line 127
    int-to-byte v8, v3

    aput-byte v8, v1, v6

    .line 128
    nop

    .line 117
    .end local v3    # "keyIndex":I
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "h":I
    .end local v7    # "previousKeyIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    .restart local v3    # "keyIndex":I
    .restart local v4    # "key":Ljava/lang/Object;
    .restart local v5    # "value":Ljava/lang/Object;
    .restart local v6    # "h":I
    .restart local v7    # "previousKeyIndex":I
    :cond_1
    aget-object v8, p0, v7

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 123
    .end local v7    # "previousKeyIndex":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 130
    .restart local v7    # "previousKeyIndex":I
    :cond_2
    invoke-static {v4, v5, p0, v7}, Lcom/google/common/collect/RegularImmutableMap;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object v8

    throw v8

    .line 134
    .end local v2    # "i":I
    .end local v3    # "keyIndex":I
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "h":I
    .end local v7    # "previousKeyIndex":I
    :cond_3
    return-object v1

    .line 135
    .end local v1    # "hashTable":[B
    :cond_4
    const v1, 0x8000

    if-gt p2, v1, :cond_8

    .line 142
    new-array v1, p2, [S

    .line 143
    .local v1, "hashTable":[S
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([SS)V

    .line 145
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, p1, :cond_7

    .line 146
    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, p3

    .line 148
    .restart local v3    # "keyIndex":I
    aget-object v4, p0, v3

    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 149
    .restart local v4    # "key":Ljava/lang/Object;
    xor-int/lit8 v5, v3, 0x1

    aget-object v5, p0, v5

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 150
    .restart local v5    # "value":Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v6

    .line 152
    .restart local v6    # "h":I
    :goto_3
    and-int/2addr v6, v0

    .line 153
    aget-short v7, v1, v6

    const v8, 0xffff

    and-int/2addr v7, v8

    .line 154
    .restart local v7    # "previousKeyIndex":I
    if-ne v7, v8, :cond_5

    .line 155
    int-to-short v8, v3

    aput-short v8, v1, v6

    .line 156
    nop

    .line 145
    .end local v3    # "keyIndex":I
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "h":I
    .end local v7    # "previousKeyIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 157
    .restart local v3    # "keyIndex":I
    .restart local v4    # "key":Ljava/lang/Object;
    .restart local v5    # "value":Ljava/lang/Object;
    .restart local v6    # "h":I
    .restart local v7    # "previousKeyIndex":I
    :cond_5
    aget-object v8, p0, v7

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 151
    .end local v7    # "previousKeyIndex":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 158
    .restart local v7    # "previousKeyIndex":I
    :cond_6
    invoke-static {v4, v5, p0, v7}, Lcom/google/common/collect/RegularImmutableMap;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object v8

    throw v8

    .line 162
    .end local v2    # "i":I
    .end local v3    # "keyIndex":I
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "h":I
    .end local v7    # "previousKeyIndex":I
    :cond_7
    return-object v1

    .line 167
    .end local v1    # "hashTable":[S
    :cond_8
    new-array v1, p2, [I

    .line 168
    .local v1, "hashTable":[I
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 170
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, p1, :cond_b

    .line 171
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, p3

    .line 173
    .local v4, "keyIndex":I
    aget-object v5, p0, v4

    invoke-static {v5}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 174
    .local v5, "key":Ljava/lang/Object;
    xor-int/lit8 v6, v4, 0x1

    aget-object v6, p0, v6

    invoke-static {v6}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 175
    .local v6, "value":Ljava/lang/Object;
    invoke-static {v5, v6}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v7

    .line 177
    .local v7, "h":I
    :goto_5
    and-int/2addr v7, v0

    .line 178
    aget v8, v1, v7

    .line 179
    .local v8, "previousKeyIndex":I
    if-ne v8, v2, :cond_9

    .line 180
    aput v4, v1, v7

    .line 181
    nop

    .line 170
    .end local v4    # "keyIndex":I
    .end local v5    # "key":Ljava/lang/Object;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "h":I
    .end local v8    # "previousKeyIndex":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 182
    .restart local v4    # "keyIndex":I
    .restart local v5    # "key":Ljava/lang/Object;
    .restart local v6    # "value":Ljava/lang/Object;
    .restart local v7    # "h":I
    .restart local v8    # "previousKeyIndex":I
    :cond_9
    aget-object v9, p0, v8

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 176
    .end local v8    # "previousKeyIndex":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 183
    .restart local v8    # "previousKeyIndex":I
    :cond_a
    invoke-static {v5, v6, p0, v8}, Lcom/google/common/collect/RegularImmutableMap;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 187
    .end local v3    # "i":I
    .end local v4    # "keyIndex":I
    .end local v5    # "key":Ljava/lang/Object;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "h":I
    .end local v8    # "previousKeyIndex":I
    :cond_b
    return-object v1
.end method

.method private static duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;
    .locals 7
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p3, "previousKeyIndex"    # I

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p2, p3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    xor-int/lit8 v4, p3, 0x1

    aget-object v4, p2, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x27

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Multiple entries with same key: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static get(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "hashTableObject"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p2, "size"    # I
    .param p3, "keyOffset"    # I
    .param p4, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 239
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 240
    return-object v0

    .line 241
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 243
    aget-object v1, p1, p3

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    xor-int/lit8 v0, p3, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 245
    :cond_1
    nop

    .line 243
    :goto_0
    return-object v0

    .line 246
    :cond_2
    if-nez p0, :cond_3

    .line 247
    return-object v0

    .line 249
    :cond_3
    instance-of v2, p0, [B

    if-eqz v2, :cond_6

    .line 250
    move-object v2, p0

    check-cast v2, [B

    .line 251
    .local v2, "hashTable":[B
    array-length v3, v2

    sub-int/2addr v3, v1

    .line 252
    .local v3, "mask":I
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    .line 253
    .local v1, "h":I
    :goto_1
    and-int/2addr v1, v3

    .line 254
    aget-byte v4, v2, v1

    const/16 v5, 0xff

    and-int/2addr v4, v5

    .line 255
    .local v4, "keyIndex":I
    if-ne v4, v5, :cond_4

    .line 256
    return-object v0

    .line 257
    :cond_4
    aget-object v5, p1, v4

    invoke-virtual {p4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 258
    xor-int/lit8 v0, v4, 0x1

    aget-object v0, p1, v0

    return-object v0

    .line 252
    .end local v4    # "keyIndex":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    .end local v1    # "h":I
    .end local v2    # "hashTable":[B
    .end local v3    # "mask":I
    :cond_6
    instance-of v2, p0, [S

    if-eqz v2, :cond_9

    .line 262
    move-object v2, p0

    check-cast v2, [S

    .line 263
    .local v2, "hashTable":[S
    array-length v3, v2

    sub-int/2addr v3, v1

    .line 264
    .restart local v3    # "mask":I
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    .line 265
    .restart local v1    # "h":I
    :goto_2
    and-int/2addr v1, v3

    .line 266
    aget-short v4, v2, v1

    const v5, 0xffff

    and-int/2addr v4, v5

    .line 267
    .restart local v4    # "keyIndex":I
    if-ne v4, v5, :cond_7

    .line 268
    return-object v0

    .line 269
    :cond_7
    aget-object v5, p1, v4

    invoke-virtual {p4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 270
    xor-int/lit8 v0, v4, 0x1

    aget-object v0, p1, v0

    return-object v0

    .line 264
    .end local v4    # "keyIndex":I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 274
    .end local v1    # "h":I
    .end local v2    # "hashTable":[S
    .end local v3    # "mask":I
    :cond_9
    move-object v2, p0

    check-cast v2, [I

    .line 275
    .local v2, "hashTable":[I
    array-length v3, v2

    sub-int/2addr v3, v1

    .line 276
    .restart local v3    # "mask":I
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    .line 277
    .restart local v1    # "h":I
    :goto_3
    and-int/2addr v1, v3

    .line 278
    aget v4, v2, v1

    .line 279
    .restart local v4    # "keyIndex":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    .line 280
    return-object v0

    .line 281
    :cond_a
    aget-object v5, p1, v4

    invoke-virtual {p4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 282
    xor-int/lit8 v0, v4, 0x1

    aget-object v0, p1, v0

    return-object v0

    .line 276
    .end local v4    # "keyIndex":I
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 290
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 374
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    .line 376
    .local v0, "keyList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TK;>;"
    new-instance v1, Lcom/google/common/collect/RegularImmutableMap$KeySet;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method createValues()Lcom/google/common/collect/ImmutableCollection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 451
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 220
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->hashTable:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 226
    const/4 v1, 0x0

    return-object v1

    .line 228
    :cond_0
    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 456
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 213
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    return v0
.end method
