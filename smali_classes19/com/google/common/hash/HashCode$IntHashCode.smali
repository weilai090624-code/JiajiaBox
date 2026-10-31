.class final Lcom/google/common/hash/HashCode$IntHashCode;
.super Lcom/google/common/hash/HashCode;
.source "HashCode.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/HashCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntHashCode"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final hash:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .param p1, "hash"    # I

    .line 122
    invoke-direct {p0}, Lcom/google/common/hash/HashCode;-><init>()V

    .line 123
    iput p1, p0, Lcom/google/common/hash/HashCode$IntHashCode;->hash:I

    .line 124
    return-void
.end method


# virtual methods
.method public asBytes()[B
    .registers 7

    .line 133
    iget v0, p0, Lcom/google/common/hash/HashCode$IntHashCode;->hash:I

    int-to-byte v0, v0

    iget v1, p0, Lcom/google/common/hash/HashCode$IntHashCode;->hash:I

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    iget v2, p0, Lcom/google/common/hash/HashCode$IntHashCode;->hash:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    iget v3, p0, Lcom/google/common/hash/HashCode$IntHashCode;->hash:I

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/4 v5, 0x0

    aput-byte v0, v4, v5

    const/4 v0, 0x1

    aput-byte v1, v4, v0

    const/4 v0, 0x2

    aput-byte v2, v4, v0

    const/4 v0, 0x3

    aput-byte v3, v4, v0

    return-object v4
.end method

.method public asInt()I
    .registers 2

    .line 138
    iget v0, p0, Lcom/google/common/hash/HashCode$IntHashCode;->hash:I

    return v0
.end method

.method public asLong()J
    .registers 3

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this HashCode only has 32 bits; cannot create a long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bits()I
    .registers 2

    .line 128
    const/16 v0, 0x20

    return v0
.end method

.method equalsSameBits(Lcom/google/common/hash/HashCode;)Z
    .registers 4
    .param p1, "that"    # Lcom/google/common/hash/HashCode;

    .line 160
    iget v0, p0, Lcom/google/common/hash/HashCode$IntHashCode;->hash:I

    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public padToLong()J
    .registers 3

    .line 148
    iget v0, p0, Lcom/google/common/hash/HashCode$IntHashCode;->hash:I

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method writeBytesToImpl([BII)V
    .registers 8
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "maxLength"    # I

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_10

    .line 154
    add-int v1, p2, v0

    iget v2, p0, Lcom/google/common/hash/HashCode$IntHashCode;->hash:I

    mul-int/lit8 v3, v0, 0x8

    shr-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    .end local v0    # "i":I
    :cond_10
    return-void
.end method
