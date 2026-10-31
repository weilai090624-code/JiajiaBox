.class final Landroidx/camera/core/impl/utils/ExifAttribute;
.super Ljava/lang/Object;
.source "ExifAttribute.java"


# static fields
.field static final ASCII:Ljava/nio/charset/Charset;

.field public static final BYTES_OFFSET_UNKNOWN:J = -0x1L

.field static final EXIF_ASCII_PREFIX:[B

.field static final IFD_FORMAT_BYTE:I = 0x1

.field static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field static final IFD_FORMAT_DOUBLE:I = 0xc

.field static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field static final IFD_FORMAT_SBYTE:I = 0x6

.field static final IFD_FORMAT_SINGLE:I = 0xb

.field static final IFD_FORMAT_SLONG:I = 0x9

.field static final IFD_FORMAT_SRATIONAL:I = 0xa

.field static final IFD_FORMAT_SSHORT:I = 0x8

.field static final IFD_FORMAT_STRING:I = 0x2

.field static final IFD_FORMAT_ULONG:I = 0x4

.field static final IFD_FORMAT_UNDEFINED:I = 0x7

.field static final IFD_FORMAT_URATIONAL:I = 0x5

.field static final IFD_FORMAT_USHORT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ExifAttribute"


# instance fields
.field public final bytes:[B

.field public final bytesOffset:J

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 43
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    sput-object v0, Landroidx/camera/core/impl/utils/ExifAttribute;->ASCII:Ljava/nio/charset/Charset;

    .line 59
    const-string v13, "DOUBLE"

    const-string v14, "IFD"

    const-string v1, ""

    const-string v2, "BYTE"

    const-string v3, "STRING"

    const-string v4, "USHORT"

    const-string v5, "ULONG"

    const-string v6, "URATIONAL"

    const-string v7, "SBYTE"

    const-string v8, "UNDEFINED"

    const-string v9, "SSHORT"

    const-string v10, "SLONG"

    const-string v11, "SRATIONAL"

    const-string v12, "SINGLE"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/utils/ExifAttribute;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 64
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Landroidx/camera/core/impl/utils/ExifAttribute;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 69
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_5a

    sput-object v0, Landroidx/camera/core/impl/utils/ExifAttribute;->EXIF_ASCII_PREFIX:[B

    return-void

    nop

    :array_3a
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_5a
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(IIJ[B)V
    .registers 6
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytesOffset"    # J
    .param p5, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "numberOfComponents",
            "bytesOffset",
            "bytes"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->format:I

    .line 86
    iput p2, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    .line 87
    iput-wide p3, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytesOffset:J

    .line 88
    iput-object p5, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    .line 89
    return-void
.end method

.method constructor <init>(II[B)V
    .registers 10
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "numberOfComponents",
            "bytes"
        }
    .end annotation

    .line 80
    const-wide/16 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/camera/core/impl/utils/ExifAttribute;-><init>(IIJ[B)V

    .line 81
    return-void
.end method

.method public static createByte(Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x31

    if-gt v2, v4, :cond_2a

    .line 143
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    new-array v3, v1, [B

    aput-byte v2, v3, v0

    move-object v0, v3

    .line 144
    .local v0, "bytes":[B
    new-instance v2, Landroidx/camera/core/impl/utils/ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v1, v3, v0}, Landroidx/camera/core/impl/utils/ExifAttribute;-><init>(II[B)V

    return-object v2

    .line 146
    .end local v0    # "bytes":[B
    :cond_2a
    sget-object v0, Landroidx/camera/core/impl/utils/ExifAttribute;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 147
    .local v0, "ascii":[B
    new-instance v2, Landroidx/camera/core/impl/utils/ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v1, v3, v0}, Landroidx/camera/core/impl/utils/ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .registers 5
    .param p0, "value"    # D
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "byteOrder"
        }
    .end annotation

    .line 208
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroidx/camera/core/impl/utils/ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .registers 8
    .param p0, "values"    # [D
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "byteOrder"
        }
    .end annotation

    .line 197
    sget-object v0, Landroidx/camera/core/impl/utils/ExifAttribute;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 199
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 200
    array-length v2, p0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_1e

    aget-wide v4, p0, v3

    .line 201
    .local v4, "value":D
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 200
    .end local v4    # "value":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 203
    :cond_1e
    new-instance v2, Landroidx/camera/core/impl/utils/ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/camera/core/impl/utils/ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .registers 3
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "byteOrder"
        }
    .end annotation

    .line 136
    filled-new-array {p0}, [I

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/camera/core/impl/utils/ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .registers 7
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "byteOrder"
        }
    .end annotation

    .line 125
    sget-object v0, Landroidx/camera/core/impl/utils/ExifAttribute;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 127
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 128
    array-length v2, p0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_1e

    aget v4, p0, v3

    .line 129
    .local v4, "value":I
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 128
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 131
    :cond_1e
    new-instance v2, Landroidx/camera/core/impl/utils/ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/camera/core/impl/utils/ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createSRational(Landroidx/camera/core/impl/utils/LongRational;Ljava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .registers 4
    .param p0, "value"    # Landroidx/camera/core/impl/utils/LongRational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "byteOrder"
        }
    .end annotation

    .line 191
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/camera/core/impl/utils/LongRational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroidx/camera/core/impl/utils/ExifAttribute;->createSRational([Landroidx/camera/core/impl/utils/LongRational;Ljava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSRational([Landroidx/camera/core/impl/utils/LongRational;Ljava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .registers 9
    .param p0, "values"    # [Landroidx/camera/core/impl/utils/LongRational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "byteOrder"
        }
    .end annotation

    .line 178
    sget-object v0, Landroidx/camera/core/impl/utils/ExifAttribute;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 180
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 181
    array-length v2, p0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_2b

    aget-object v4, p0, v3

    .line 182
    .local v4, "value":Landroidx/camera/core/impl/utils/LongRational;
    invoke-virtual {v4}, Landroidx/camera/core/impl/utils/LongRational;->getNumerator()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {v4}, Landroidx/camera/core/impl/utils/LongRational;->getDenominator()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 181
    .end local v4    # "value":Landroidx/camera/core/impl/utils/LongRational;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 185
    :cond_2b
    new-instance v2, Landroidx/camera/core/impl/utils/ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/camera/core/impl/utils/ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createString(Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .registers 5
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/utils/ExifAttribute;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 153
    .local v0, "ascii":[B
    new-instance v1, Landroidx/camera/core/impl/utils/ExifAttribute;

    const/4 v2, 0x2

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Landroidx/camera/core/impl/utils/ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .registers 5
    .param p0, "value"    # J
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "byteOrder"
        }
    .end annotation

    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroidx/camera/core/impl/utils/ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .registers 9
    .param p0, "values"    # [J
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "byteOrder"
        }
    .end annotation

    .line 109
    sget-object v0, Landroidx/camera/core/impl/utils/ExifAttribute;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 111
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 112
    array-length v2, p0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_1e

    aget-wide v4, p0, v3

    .line 113
    .local v4, "value":J
    long-to-int v6, v4

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 112
    .end local v4    # "value":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 115
    :cond_1e
    new-instance v2, Landroidx/camera/core/impl/utils/ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/camera/core/impl/utils/ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createURational(Landroidx/camera/core/impl/utils/LongRational;Ljava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .registers 4
    .param p0, "value"    # Landroidx/camera/core/impl/utils/LongRational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "byteOrder"
        }
    .end annotation

    .line 172
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/camera/core/impl/utils/LongRational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroidx/camera/core/impl/utils/ExifAttribute;->createURational([Landroidx/camera/core/impl/utils/LongRational;Ljava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createURational([Landroidx/camera/core/impl/utils/LongRational;Ljava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .registers 9
    .param p0, "values"    # [Landroidx/camera/core/impl/utils/LongRational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "byteOrder"
        }
    .end annotation

    .line 159
    sget-object v0, Landroidx/camera/core/impl/utils/ExifAttribute;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 161
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 162
    array-length v2, p0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_2a

    aget-object v4, p0, v3

    .line 163
    .local v4, "value":Landroidx/camera/core/impl/utils/LongRational;
    invoke-virtual {v4}, Landroidx/camera/core/impl/utils/LongRational;->getNumerator()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 164
    invoke-virtual {v4}, Landroidx/camera/core/impl/utils/LongRational;->getDenominator()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 162
    .end local v4    # "value":Landroidx/camera/core/impl/utils/LongRational;
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 166
    :cond_2a
    new-instance v2, Landroidx/camera/core/impl/utils/ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/camera/core/impl/utils/ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .registers 3
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "byteOrder"
        }
    .end annotation

    .line 104
    filled-new-array {p0}, [I

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/camera/core/impl/utils/ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .registers 8
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "byteOrder"
        }
    .end annotation

    .line 93
    sget-object v0, Landroidx/camera/core/impl/utils/ExifAttribute;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 95
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 96
    array-length v2, p0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_1e

    aget v4, p0, v3

    .line 97
    .local v4, "value":I
    int-to-short v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 96
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 99
    :cond_1e
    new-instance v2, Landroidx/camera/core/impl/utils/ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/camera/core/impl/utils/ExifAttribute;-><init>(II[B)V

    return-object v2
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .registers 8
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteOrder"
        }
    .end annotation

    .line 340
    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/utils/ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 341
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_70

    .line 344
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 345
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1

    .line 347
    :cond_12
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "There are more than one component"

    const/4 v4, 0x1

    if-eqz v1, :cond_2a

    .line 348
    move-object v1, v0

    check-cast v1, [J

    .line 349
    .local v1, "array":[J
    array-length v5, v1

    if-ne v5, v4, :cond_24

    .line 350
    aget-wide v2, v1, v2

    long-to-double v2, v2

    return-wide v2

    .line 352
    :cond_24
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 354
    .end local v1    # "array":[J
    :cond_2a
    instance-of v1, v0, [I

    if-eqz v1, :cond_3e

    .line 355
    move-object v1, v0

    check-cast v1, [I

    .line 356
    .local v1, "array":[I
    array-length v5, v1

    if-ne v5, v4, :cond_38

    .line 357
    aget v2, v1, v2

    int-to-double v2, v2

    return-wide v2

    .line 359
    :cond_38
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 361
    .end local v1    # "array":[I
    :cond_3e
    instance-of v1, v0, [D

    if-eqz v1, :cond_51

    .line 362
    move-object v1, v0

    check-cast v1, [D

    .line 363
    .local v1, "array":[D
    array-length v5, v1

    if-ne v5, v4, :cond_4b

    .line 364
    aget-wide v2, v1, v2

    return-wide v2

    .line 366
    :cond_4b
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 368
    .end local v1    # "array":[D
    :cond_51
    instance-of v1, v0, [Landroidx/camera/core/impl/utils/LongRational;

    if-eqz v1, :cond_68

    .line 369
    move-object v1, v0

    check-cast v1, [Landroidx/camera/core/impl/utils/LongRational;

    .line 370
    .local v1, "array":[Landroidx/camera/core/impl/utils/LongRational;
    array-length v5, v1

    if-ne v5, v4, :cond_62

    .line 371
    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/LongRational;->toDouble()D

    move-result-wide v2

    return-wide v2

    .line 373
    :cond_62
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    .end local v1    # "array":[Landroidx/camera/core/impl/utils/LongRational;
    :cond_68
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_70
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .registers 8
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteOrder"
        }
    .end annotation

    .line 379
    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/utils/ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 380
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_45

    .line 383
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 384
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 386
    :cond_12
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "There are more than one component"

    const/4 v4, 0x1

    if-eqz v1, :cond_2a

    .line 387
    move-object v1, v0

    check-cast v1, [J

    .line 388
    .local v1, "array":[J
    array-length v5, v1

    if-ne v5, v4, :cond_24

    .line 389
    aget-wide v2, v1, v2

    long-to-int v3, v2

    return v3

    .line 391
    :cond_24
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 393
    .end local v1    # "array":[J
    :cond_2a
    instance-of v1, v0, [I

    if-eqz v1, :cond_3d

    .line 394
    move-object v1, v0

    check-cast v1, [I

    .line 395
    .local v1, "array":[I
    array-length v5, v1

    if-ne v5, v4, :cond_37

    .line 396
    aget v2, v1, v2

    return v2

    .line 398
    :cond_37
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 400
    .end local v1    # "array":[I
    :cond_3d
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_45
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .registers 9
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteOrder"
        }
    .end annotation

    .line 405
    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/utils/ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 406
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 407
    return-object v1

    .line 409
    :cond_8
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 410
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 413
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    instance-of v3, v0, [J

    const-string v4, ","

    if-eqz v3, :cond_37

    .line 415
    move-object v1, v0

    check-cast v1, [J

    .line 416
    .local v1, "array":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    array-length v5, v1

    if-ge v3, v5, :cond_32

    .line 417
    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 418
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_2f

    .line 419
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 422
    .end local v3    # "i":I
    :cond_32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 424
    .end local v1    # "array":[J
    :cond_37
    instance-of v3, v0, [I

    if-eqz v3, :cond_57

    .line 425
    move-object v1, v0

    check-cast v1, [I

    .line 426
    .local v1, "array":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3f
    array-length v5, v1

    if-ge v3, v5, :cond_52

    .line 427
    aget v5, v1, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_4f

    .line 429
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 432
    .end local v3    # "i":I
    :cond_52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 434
    .end local v1    # "array":[I
    :cond_57
    instance-of v3, v0, [D

    if-eqz v3, :cond_77

    .line 435
    move-object v1, v0

    check-cast v1, [D

    .line 436
    .local v1, "array":[D
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5f
    array-length v5, v1

    if-ge v3, v5, :cond_72

    .line 437
    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 438
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_6f

    .line 439
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 442
    .end local v3    # "i":I
    :cond_72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 444
    .end local v1    # "array":[D
    :cond_77
    instance-of v3, v0, [Landroidx/camera/core/impl/utils/LongRational;

    if-eqz v3, :cond_a9

    .line 445
    move-object v1, v0

    check-cast v1, [Landroidx/camera/core/impl/utils/LongRational;

    .line 446
    .local v1, "array":[Landroidx/camera/core/impl/utils/LongRational;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_7f
    array-length v5, v1

    if-ge v3, v5, :cond_a4

    .line 447
    aget-object v5, v1, v3

    invoke-virtual {v5}, Landroidx/camera/core/impl/utils/LongRational;->getNumerator()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 448
    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    aget-object v5, v1, v3

    invoke-virtual {v5}, Landroidx/camera/core/impl/utils/LongRational;->getDenominator()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 450
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_a1

    .line 451
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_a1
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    .line 454
    .end local v3    # "i":I
    :cond_a4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 456
    .end local v1    # "array":[Landroidx/camera/core/impl/utils/LongRational;
    :cond_a9
    return-object v1
.end method

.method getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .registers 13
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteOrder"
        }
    .end annotation

    .line 218
    const-string v0, "IOException occurred while closing InputStream"

    const-string v1, "ExifAttribute"

    const/4 v2, 0x0

    .line 220
    .local v2, "inputStream":Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;
    const/4 v3, 0x0

    :try_start_6
    new-instance v4, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;

    iget-object v5, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    invoke-direct {v4, v5}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;-><init>([B)V

    move-object v2, v4

    .line 221
    invoke-virtual {v2, p1}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 222
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->format:I

    packed-switch v4, :pswitch_data_1d2

    .line 323
    nop

    .line 329
    goto/16 :goto_1aa

    .line 316
    :pswitch_19
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [D

    .line 317
    .local v4, "values":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1e
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_2b

    .line 318
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v6

    aput-wide v6, v4, v5
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_28} :catch_1b5
    .catchall {:try_start_6 .. :try_end_28} :catchall_1b3

    .line 317
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 320
    .end local v5    # "i":I
    :cond_2b
    nop

    .line 329
    nop

    .line 331
    :try_start_2d
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 334
    goto :goto_35

    .line 332
    :catch_31
    move-exception v3

    .line 333
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    .end local v3    # "e":Ljava/io/IOException;
    :goto_35
    return-object v4

    .line 309
    .end local v4    # "values":[D
    :pswitch_36
    :try_start_36
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [D

    .line 310
    .restart local v4    # "values":[D
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3b
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_49

    .line 311
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readFloat()F

    move-result v6

    float-to-double v6, v6

    aput-wide v6, v4, v5
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_46} :catch_1b5
    .catchall {:try_start_36 .. :try_end_46} :catchall_1b3

    .line 310
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 313
    .end local v5    # "i":I
    :cond_49
    nop

    .line 329
    nop

    .line 331
    :try_start_4b
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 334
    goto :goto_53

    .line 332
    :catch_4f
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    .end local v3    # "e":Ljava/io/IOException;
    :goto_53
    return-object v4

    .line 300
    .end local v4    # "values":[D
    :pswitch_54
    :try_start_54
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [Landroidx/camera/core/impl/utils/LongRational;

    .line 301
    .local v4, "values":[Landroidx/camera/core/impl/utils/LongRational;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_59
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_71

    .line 302
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readInt()I

    move-result v6

    int-to-long v6, v6

    .line 303
    .local v6, "numerator":J
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readInt()I

    move-result v8

    int-to-long v8, v8

    .line 304
    .local v8, "denominator":J
    new-instance v10, Landroidx/camera/core/impl/utils/LongRational;

    invoke-direct {v10, v6, v7, v8, v9}, Landroidx/camera/core/impl/utils/LongRational;-><init>(JJ)V

    aput-object v10, v4, v5
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_6e} :catch_1b5
    .catchall {:try_start_54 .. :try_end_6e} :catchall_1b3

    .line 301
    .end local v6    # "numerator":J
    .end local v8    # "denominator":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    .line 306
    .end local v5    # "i":I
    :cond_71
    nop

    .line 329
    nop

    .line 331
    :try_start_73
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    .line 334
    goto :goto_7b

    .line 332
    :catch_77
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    .end local v3    # "e":Ljava/io/IOException;
    :goto_7b
    return-object v4

    .line 293
    .end local v4    # "values":[Landroidx/camera/core/impl/utils/LongRational;
    :pswitch_7c
    :try_start_7c
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 294
    .local v4, "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_81
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_8e

    .line 295
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readInt()I

    move-result v6

    aput v6, v4, v5
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_8b} :catch_1b5
    .catchall {:try_start_7c .. :try_end_8b} :catchall_1b3

    .line 294
    add-int/lit8 v5, v5, 0x1

    goto :goto_81

    .line 297
    .end local v5    # "i":I
    :cond_8e
    nop

    .line 329
    nop

    .line 331
    :try_start_90
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    .line 334
    goto :goto_98

    .line 332
    :catch_94
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    .end local v3    # "e":Ljava/io/IOException;
    :goto_98
    return-object v4

    .line 286
    .end local v4    # "values":[I
    :pswitch_99
    :try_start_99
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 287
    .restart local v4    # "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_9e
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_ab

    .line 288
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readShort()S

    move-result v6

    aput v6, v4, v5
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a8} :catch_1b5
    .catchall {:try_start_99 .. :try_end_a8} :catchall_1b3

    .line 287
    add-int/lit8 v5, v5, 0x1

    goto :goto_9e

    .line 290
    .end local v5    # "i":I
    :cond_ab
    nop

    .line 329
    nop

    .line 331
    :try_start_ad
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b1

    .line 334
    goto :goto_b5

    .line 332
    :catch_b1
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    .end local v3    # "e":Ljava/io/IOException;
    :goto_b5
    return-object v4

    .line 277
    .end local v4    # "values":[I
    :pswitch_b6
    :try_start_b6
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [Landroidx/camera/core/impl/utils/LongRational;

    .line 278
    .local v4, "values":[Landroidx/camera/core/impl/utils/LongRational;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_bb
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_d1

    .line 279
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    .line 280
    .restart local v6    # "numerator":J
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v8

    .line 281
    .restart local v8    # "denominator":J
    new-instance v10, Landroidx/camera/core/impl/utils/LongRational;

    invoke-direct {v10, v6, v7, v8, v9}, Landroidx/camera/core/impl/utils/LongRational;-><init>(JJ)V

    aput-object v10, v4, v5
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_ce} :catch_1b5
    .catchall {:try_start_b6 .. :try_end_ce} :catchall_1b3

    .line 278
    .end local v6    # "numerator":J
    .end local v8    # "denominator":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_bb

    .line 283
    .end local v5    # "i":I
    :cond_d1
    nop

    .line 329
    nop

    .line 331
    :try_start_d3
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d7

    .line 334
    goto :goto_db

    .line 332
    :catch_d7
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    .end local v3    # "e":Ljava/io/IOException;
    :goto_db
    return-object v4

    .line 270
    .end local v4    # "values":[Landroidx/camera/core/impl/utils/LongRational;
    :pswitch_dc
    :try_start_dc
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [J

    .line 271
    .local v4, "values":[J
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_e1
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_ee

    .line 272
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    aput-wide v6, v4, v5
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_eb} :catch_1b5
    .catchall {:try_start_dc .. :try_end_eb} :catchall_1b3

    .line 271
    add-int/lit8 v5, v5, 0x1

    goto :goto_e1

    .line 274
    .end local v5    # "i":I
    :cond_ee
    nop

    .line 329
    nop

    .line 331
    :try_start_f0
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_f4

    .line 334
    goto :goto_f8

    .line 332
    :catch_f4
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    .end local v3    # "e":Ljava/io/IOException;
    :goto_f8
    return-object v4

    .line 263
    .end local v4    # "values":[J
    :pswitch_f9
    :try_start_f9
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 264
    .local v4, "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_fe
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_10b

    .line 265
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v6

    aput v6, v4, v5
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_108} :catch_1b5
    .catchall {:try_start_f9 .. :try_end_108} :catchall_1b3

    .line 264
    add-int/lit8 v5, v5, 0x1

    goto :goto_fe

    .line 267
    .end local v5    # "i":I
    :cond_10b
    nop

    .line 329
    nop

    .line 331
    :try_start_10d
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_111

    .line 334
    goto :goto_115

    .line 332
    :catch_111
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    .end local v3    # "e":Ljava/io/IOException;
    :goto_115
    return-object v4

    .line 233
    .end local v4    # "values":[I
    :pswitch_116
    const/4 v4, 0x0

    .line 234
    .local v4, "index":I
    :try_start_117
    iget v5, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    sget-object v6, Landroidx/camera/core/impl/utils/ExifAttribute;->EXIF_ASCII_PREFIX:[B

    array-length v6, v6

    if-lt v5, v6, :cond_13a

    .line 235
    const/4 v5, 0x1

    .line 236
    .local v5, "same":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_120
    sget-object v7, Landroidx/camera/core/impl/utils/ExifAttribute;->EXIF_ASCII_PREFIX:[B

    array-length v7, v7

    if-ge v6, v7, :cond_134

    .line 237
    iget-object v7, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    aget-byte v7, v7, v6

    sget-object v8, Landroidx/camera/core/impl/utils/ExifAttribute;->EXIF_ASCII_PREFIX:[B

    aget-byte v8, v8, v6

    if-eq v7, v8, :cond_131

    .line 238
    const/4 v5, 0x0

    .line 239
    goto :goto_134

    .line 236
    :cond_131
    add-int/lit8 v6, v6, 0x1

    goto :goto_120

    .line 242
    .end local v6    # "i":I
    :cond_134
    :goto_134
    if-eqz v5, :cond_13a

    .line 243
    sget-object v6, Landroidx/camera/core/impl/utils/ExifAttribute;->EXIF_ASCII_PREFIX:[B

    array-length v6, v6

    move v4, v6

    .line 247
    .end local v5    # "same":Z
    :cond_13a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_13f
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v4, v6, :cond_15c

    .line 249
    iget-object v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    aget-byte v6, v6, v4

    .line 250
    .local v6, "ch":I
    if-nez v6, :cond_14a

    .line 251
    goto :goto_15c

    .line 253
    :cond_14a
    const/16 v7, 0x20

    if-lt v6, v7, :cond_153

    .line 254
    int-to-char v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_158

    .line 256
    :cond_153
    const/16 v7, 0x3f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    :goto_158
    nop

    .end local v6    # "ch":I
    add-int/lit8 v4, v4, 0x1

    .line 259
    goto :goto_13f

    .line 260
    :cond_15c
    :goto_15c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_160} :catch_1b5
    .catchall {:try_start_117 .. :try_end_160} :catchall_1b3

    .line 329
    nop

    .line 331
    :try_start_161
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_164} :catch_165

    .line 334
    goto :goto_169

    .line 332
    :catch_165
    move-exception v6

    .line 333
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v6}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    .end local v6    # "e":Ljava/io/IOException;
    :goto_169
    return-object v3

    .line 226
    .end local v4    # "index":I
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :pswitch_16a
    :try_start_16a
    iget-object v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_197

    iget-object v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    const/4 v6, 0x0

    aget-byte v4, v4, v6

    if-ltz v4, :cond_197

    iget-object v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    aget-byte v4, v4, v6

    if-gt v4, v5, :cond_197

    .line 227
    new-instance v4, Ljava/lang/String;

    iget-object v7, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    aget-byte v7, v7, v6

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    new-array v5, v5, [C

    aput-char v7, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_18d} :catch_1b5
    .catchall {:try_start_16a .. :try_end_18d} :catchall_1b3

    .line 329
    nop

    .line 331
    :try_start_18e
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_191
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_191} :catch_192

    .line 334
    goto :goto_196

    .line 332
    :catch_192
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    .end local v3    # "e":Ljava/io/IOException;
    :goto_196
    return-object v4

    .line 229
    :cond_197
    :try_start_197
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    sget-object v6, Landroidx/camera/core/impl/utils/ExifAttribute;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_1a0} :catch_1b5
    .catchall {:try_start_197 .. :try_end_1a0} :catchall_1b3

    .line 329
    nop

    .line 331
    :try_start_1a1
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1a4} :catch_1a5

    .line 334
    goto :goto_1a9

    .line 332
    :catch_1a5
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1a9
    return-object v4

    .line 331
    :goto_1aa
    :try_start_1aa
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1ad} :catch_1ae

    .line 334
    goto :goto_1b2

    .line 332
    :catch_1ae
    move-exception v4

    .line 333
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1b2
    return-object v3

    .line 329
    :catchall_1b3
    move-exception v3

    goto :goto_1c7

    .line 325
    :catch_1b5
    move-exception v4

    .line 326
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_1b6
    const-string v5, "IOException occurred during reading a value"

    invoke-static {v1, v5, v4}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1bb
    .catchall {:try_start_1b6 .. :try_end_1bb} :catchall_1b3

    .line 327
    nop

    .line 329
    if-eqz v2, :cond_1c6

    .line 331
    :try_start_1be
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_1c1
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1c1} :catch_1c2

    .line 334
    goto :goto_1c6

    .line 332
    :catch_1c2
    move-exception v5

    .line 333
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1c6
    :goto_1c6
    return-object v3

    .line 329
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1c7
    if-eqz v2, :cond_1d1

    .line 331
    :try_start_1c9
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1cc} :catch_1cd

    .line 334
    goto :goto_1d1

    .line 332
    :catch_1cd
    move-exception v4

    .line 333
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 336
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1d1
    :goto_1d1
    throw v3

    :pswitch_data_1d2
    .packed-switch 0x1
        :pswitch_16a
        :pswitch_116
        :pswitch_f9
        :pswitch_dc
        :pswitch_b6
        :pswitch_16a
        :pswitch_116
        :pswitch_99
        :pswitch_7c
        :pswitch_54
        :pswitch_36
        :pswitch_19
    .end packed-switch
.end method

.method public size()I
    .registers 3

    .line 460
    sget-object v0, Landroidx/camera/core/impl/utils/ExifAttribute;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    iget v1, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    mul-int v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroidx/camera/core/impl/utils/ExifAttribute;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
