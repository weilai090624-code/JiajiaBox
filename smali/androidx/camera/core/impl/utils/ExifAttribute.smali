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
    .locals 15

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

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/camera/core/impl/utils/ExifAttribute;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 69
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/camera/core/impl/utils/ExifAttribute;->EXIF_ASCII_PREFIX:[B

    return-void

    nop

    :array_0
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

    :array_1
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
    .locals 0
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
    .locals 6
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
    .locals 5
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

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x31

    if-gt v2, v4, :cond_0

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
    :cond_0
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
    .locals 2
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
    .locals 6
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

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p0, v3

    .line 201
    .local v4, "value":D
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 200
    .end local v4    # "value":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    :cond_0
    new-instance v2, Landroidx/camera/core/impl/utils/ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/camera/core/impl/utils/ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .locals 1
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
    .locals 5
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

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    .line 129
    .local v4, "value":I
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 128
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    :cond_0
    new-instance v2, Landroidx/camera/core/impl/utils/ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/camera/core/impl/utils/ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createSRational(Landroidx/camera/core/impl/utils/LongRational;Ljava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .locals 2
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
    .locals 7
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

    :goto_0
    if-ge v3, v2, :cond_0

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

    goto :goto_0

    .line 185
    :cond_0
    new-instance v2, Landroidx/camera/core/impl/utils/ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/camera/core/impl/utils/ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createString(Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .locals 4
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
    .locals 2
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
    .locals 7
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

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, p0, v3

    .line 113
    .local v4, "value":J
    long-to-int v6, v4

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 112
    .end local v4    # "value":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_0
    new-instance v2, Landroidx/camera/core/impl/utils/ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/camera/core/impl/utils/ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createURational(Landroidx/camera/core/impl/utils/LongRational;Ljava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .locals 2
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
    .locals 7
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

    :goto_0
    if-ge v3, v2, :cond_0

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

    goto :goto_0

    .line 166
    :cond_0
    new-instance v2, Landroidx/camera/core/impl/utils/ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/camera/core/impl/utils/ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;
    .locals 1
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
    .locals 6
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

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    .line 97
    .local v4, "value":I
    int-to-short v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 96
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    :cond_0
    new-instance v2, Landroidx/camera/core/impl/utils/ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/camera/core/impl/utils/ExifAttribute;-><init>(II[B)V

    return-object v2
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 6
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
    if-eqz v0, :cond_9

    .line 344
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 345
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1

    .line 347
    :cond_0
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "There are more than one component"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 348
    move-object v1, v0

    check-cast v1, [J

    .line 349
    .local v1, "array":[J
    array-length v5, v1

    if-ne v5, v4, :cond_1

    .line 350
    aget-wide v2, v1, v2

    long-to-double v2, v2

    return-wide v2

    .line 352
    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 354
    .end local v1    # "array":[J
    :cond_2
    instance-of v1, v0, [I

    if-eqz v1, :cond_4

    .line 355
    move-object v1, v0

    check-cast v1, [I

    .line 356
    .local v1, "array":[I
    array-length v5, v1

    if-ne v5, v4, :cond_3

    .line 357
    aget v2, v1, v2

    int-to-double v2, v2

    return-wide v2

    .line 359
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 361
    .end local v1    # "array":[I
    :cond_4
    instance-of v1, v0, [D

    if-eqz v1, :cond_6

    .line 362
    move-object v1, v0

    check-cast v1, [D

    .line 363
    .local v1, "array":[D
    array-length v5, v1

    if-ne v5, v4, :cond_5

    .line 364
    aget-wide v2, v1, v2

    return-wide v2

    .line 366
    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 368
    .end local v1    # "array":[D
    :cond_6
    instance-of v1, v0, [Landroidx/camera/core/impl/utils/LongRational;

    if-eqz v1, :cond_8

    .line 369
    move-object v1, v0

    check-cast v1, [Landroidx/camera/core/impl/utils/LongRational;

    .line 370
    .local v1, "array":[Landroidx/camera/core/impl/utils/LongRational;
    array-length v5, v1

    if-ne v5, v4, :cond_7

    .line 371
    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/LongRational;->toDouble()D

    move-result-wide v2

    return-wide v2

    .line 373
    :cond_7
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    .end local v1    # "array":[Landroidx/camera/core/impl/utils/LongRational;
    :cond_8
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_9
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .locals 6
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
    if-eqz v0, :cond_5

    .line 383
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 384
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 386
    :cond_0
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "There are more than one component"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 387
    move-object v1, v0

    check-cast v1, [J

    .line 388
    .local v1, "array":[J
    array-length v5, v1

    if-ne v5, v4, :cond_1

    .line 389
    aget-wide v2, v1, v2

    long-to-int v3, v2

    return v3

    .line 391
    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 393
    .end local v1    # "array":[J
    :cond_2
    instance-of v1, v0, [I

    if-eqz v1, :cond_4

    .line 394
    move-object v1, v0

    check-cast v1, [I

    .line 395
    .local v1, "array":[I
    array-length v5, v1

    if-ne v5, v4, :cond_3

    .line 396
    aget v2, v1, v2

    return v2

    .line 398
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 400
    .end local v1    # "array":[I
    :cond_4
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_5
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 7
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

    if-nez v0, :cond_0

    .line 407
    return-object v1

    .line 409
    :cond_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 410
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 413
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    instance-of v3, v0, [J

    const-string v4, ","

    if-eqz v3, :cond_4

    .line 415
    move-object v1, v0

    check-cast v1, [J

    .line 416
    .local v1, "array":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_3

    .line 417
    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 418
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_2

    .line 419
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 422
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 424
    .end local v1    # "array":[J
    :cond_4
    instance-of v3, v0, [I

    if-eqz v3, :cond_7

    .line 425
    move-object v1, v0

    check-cast v1, [I

    .line 426
    .local v1, "array":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v5, v1

    if-ge v3, v5, :cond_6

    .line 427
    aget v5, v1, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_5

    .line 429
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 432
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 434
    .end local v1    # "array":[I
    :cond_7
    instance-of v3, v0, [D

    if-eqz v3, :cond_a

    .line 435
    move-object v1, v0

    check-cast v1, [D

    .line 436
    .local v1, "array":[D
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_9

    .line 437
    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 438
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_8

    .line 439
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 442
    .end local v3    # "i":I
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 444
    .end local v1    # "array":[D
    :cond_a
    instance-of v3, v0, [Landroidx/camera/core/impl/utils/LongRational;

    if-eqz v3, :cond_d

    .line 445
    move-object v1, v0

    check-cast v1, [Landroidx/camera/core/impl/utils/LongRational;

    .line 446
    .local v1, "array":[Landroidx/camera/core/impl/utils/LongRational;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_c

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

    if-eq v5, v6, :cond_b

    .line 451
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 454
    .end local v3    # "i":I
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 456
    .end local v1    # "array":[Landroidx/camera/core/impl/utils/LongRational;
    :cond_d
    return-object v1
.end method

.method getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 11
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

    :try_start_0
    new-instance v4, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;

    iget-object v5, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    invoke-direct {v4, v5}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;-><init>([B)V

    move-object v2, v4

    .line 221
    invoke-virtual {v2, p1}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 222
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->format:I

    packed-switch v4, :pswitch_data_0

    .line 323
    nop

    .line 329
    goto/16 :goto_18

    .line 316
    :pswitch_0
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [D

    .line 317
    .local v4, "values":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_0

    .line 318
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v6

    aput-wide v6, v4, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 320
    .end local v5    # "i":I
    :cond_0
    nop

    .line 329
    nop

    .line 331
    :try_start_1
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 334
    goto :goto_1

    .line 332
    :catch_0
    move-exception v3

    .line 333
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return-object v4

    .line 309
    .end local v4    # "values":[D
    :pswitch_1
    :try_start_2
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [D

    .line 310
    .restart local v4    # "values":[D
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_1

    .line 311
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readFloat()F

    move-result v6

    float-to-double v6, v6

    aput-wide v6, v4, v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 313
    .end local v5    # "i":I
    :cond_1
    nop

    .line 329
    nop

    .line 331
    :try_start_3
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 334
    goto :goto_3

    .line 332
    :catch_1
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3
    return-object v4

    .line 300
    .end local v4    # "values":[D
    :pswitch_2
    :try_start_4
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [Landroidx/camera/core/impl/utils/LongRational;

    .line 301
    .local v4, "values":[Landroidx/camera/core/impl/utils/LongRational;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_2

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
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 301
    .end local v6    # "numerator":J
    .end local v8    # "denominator":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 306
    .end local v5    # "i":I
    :cond_2
    nop

    .line 329
    nop

    .line 331
    :try_start_5
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 334
    goto :goto_5

    .line 332
    :catch_2
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    .end local v3    # "e":Ljava/io/IOException;
    :goto_5
    return-object v4

    .line 293
    .end local v4    # "values":[Landroidx/camera/core/impl/utils/LongRational;
    :pswitch_3
    :try_start_6
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 294
    .local v4, "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_3

    .line 295
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readInt()I

    move-result v6

    aput v6, v4, v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 294
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 297
    .end local v5    # "i":I
    :cond_3
    nop

    .line 329
    nop

    .line 331
    :try_start_7
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 334
    goto :goto_7

    .line 332
    :catch_3
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    .end local v3    # "e":Ljava/io/IOException;
    :goto_7
    return-object v4

    .line 286
    .end local v4    # "values":[I
    :pswitch_4
    :try_start_8
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 287
    .restart local v4    # "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_8
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_4

    .line 288
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readShort()S

    move-result v6

    aput v6, v4, v5
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 287
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 290
    .end local v5    # "i":I
    :cond_4
    nop

    .line 329
    nop

    .line 331
    :try_start_9
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 334
    goto :goto_9

    .line 332
    :catch_4
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    .end local v3    # "e":Ljava/io/IOException;
    :goto_9
    return-object v4

    .line 277
    .end local v4    # "values":[I
    :pswitch_5
    :try_start_a
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [Landroidx/camera/core/impl/utils/LongRational;

    .line 278
    .local v4, "values":[Landroidx/camera/core/impl/utils/LongRational;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_a
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_5

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
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 278
    .end local v6    # "numerator":J
    .end local v8    # "denominator":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 283
    .end local v5    # "i":I
    :cond_5
    nop

    .line 329
    nop

    .line 331
    :try_start_b
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 334
    goto :goto_b

    .line 332
    :catch_5
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    .end local v3    # "e":Ljava/io/IOException;
    :goto_b
    return-object v4

    .line 270
    .end local v4    # "values":[Landroidx/camera/core/impl/utils/LongRational;
    :pswitch_6
    :try_start_c
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [J

    .line 271
    .local v4, "values":[J
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_c
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_6

    .line 272
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    aput-wide v6, v4, v5
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 271
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 274
    .end local v5    # "i":I
    :cond_6
    nop

    .line 329
    nop

    .line 331
    :try_start_d
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 334
    goto :goto_d

    .line 332
    :catch_6
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    .end local v3    # "e":Ljava/io/IOException;
    :goto_d
    return-object v4

    .line 263
    .end local v4    # "values":[J
    :pswitch_7
    :try_start_e
    iget v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 264
    .local v4, "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_e
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_7

    .line 265
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v6

    aput v6, v4, v5
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 264
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 267
    .end local v5    # "i":I
    :cond_7
    nop

    .line 329
    nop

    .line 331
    :try_start_f
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 334
    goto :goto_f

    .line 332
    :catch_7
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    .end local v3    # "e":Ljava/io/IOException;
    :goto_f
    return-object v4

    .line 233
    .end local v4    # "values":[I
    :pswitch_8
    const/4 v4, 0x0

    .line 234
    .local v4, "index":I
    :try_start_10
    iget v5, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    sget-object v6, Landroidx/camera/core/impl/utils/ExifAttribute;->EXIF_ASCII_PREFIX:[B

    array-length v6, v6

    if-lt v5, v6, :cond_a

    .line 235
    const/4 v5, 0x1

    .line 236
    .local v5, "same":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_10
    sget-object v7, Landroidx/camera/core/impl/utils/ExifAttribute;->EXIF_ASCII_PREFIX:[B

    array-length v7, v7

    if-ge v6, v7, :cond_9

    .line 237
    iget-object v7, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    aget-byte v7, v7, v6

    sget-object v8, Landroidx/camera/core/impl/utils/ExifAttribute;->EXIF_ASCII_PREFIX:[B

    aget-byte v8, v8, v6

    if-eq v7, v8, :cond_8

    .line 238
    const/4 v5, 0x0

    .line 239
    goto :goto_11

    .line 236
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 242
    .end local v6    # "i":I
    :cond_9
    :goto_11
    if-eqz v5, :cond_a

    .line 243
    sget-object v6, Landroidx/camera/core/impl/utils/ExifAttribute;->EXIF_ASCII_PREFIX:[B

    array-length v6, v6

    move v4, v6

    .line 247
    .end local v5    # "same":Z
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_12
    iget v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    if-ge v4, v6, :cond_d

    .line 249
    iget-object v6, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    aget-byte v6, v6, v4

    .line 250
    .local v6, "ch":I
    if-nez v6, :cond_b

    .line 251
    goto :goto_14

    .line 253
    :cond_b
    const/16 v7, 0x20

    if-lt v6, v7, :cond_c

    .line 254
    int-to-char v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 256
    :cond_c
    const/16 v7, 0x3f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    :goto_13
    nop

    .end local v6    # "ch":I
    add-int/lit8 v4, v4, 0x1

    .line 259
    goto :goto_12

    .line 260
    :cond_d
    :goto_14
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 329
    nop

    .line 331
    :try_start_11
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8

    .line 334
    goto :goto_15

    .line 332
    :catch_8
    move-exception v6

    .line 333
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v6}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    .end local v6    # "e":Ljava/io/IOException;
    :goto_15
    return-object v3

    .line 226
    .end local v4    # "index":I
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :pswitch_9
    :try_start_12
    iget-object v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    iget-object v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    const/4 v6, 0x0

    aget-byte v4, v4, v6

    if-ltz v4, :cond_e

    iget-object v4, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    aget-byte v4, v4, v6

    if-gt v4, v5, :cond_e

    .line 227
    new-instance v4, Ljava/lang/String;

    iget-object v7, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    aget-byte v7, v7, v6

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    new-array v5, v5, [C

    aput-char v7, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 329
    nop

    .line 331
    :try_start_13
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    .line 334
    goto :goto_16

    .line 332
    :catch_9
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    .end local v3    # "e":Ljava/io/IOException;
    :goto_16
    return-object v4

    .line 229
    :cond_e
    :try_start_14
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->bytes:[B

    sget-object v6, Landroidx/camera/core/impl/utils/ExifAttribute;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 329
    nop

    .line 331
    :try_start_15
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    .line 334
    goto :goto_17

    .line 332
    :catch_a
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    .end local v3    # "e":Ljava/io/IOException;
    :goto_17
    return-object v4

    .line 331
    :goto_18
    :try_start_16
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    .line 334
    goto :goto_19

    .line 332
    :catch_b
    move-exception v4

    .line 333
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 323
    .end local v4    # "e":Ljava/io/IOException;
    :goto_19
    return-object v3

    .line 329
    :catchall_0
    move-exception v3

    goto :goto_1b

    .line 325
    :catch_c
    move-exception v4

    .line 326
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_17
    const-string v5, "IOException occurred during reading a value"

    invoke-static {v1, v5, v4}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 327
    nop

    .line 329
    if-eqz v2, :cond_f

    .line 331
    :try_start_18
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_d

    .line 334
    goto :goto_1a

    .line 332
    :catch_d
    move-exception v5

    .line 333
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    .end local v5    # "e":Ljava/io/IOException;
    :cond_f
    :goto_1a
    return-object v3

    .line 329
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1b
    if-eqz v2, :cond_10

    .line 331
    :try_start_19
    invoke-virtual {v2}, Landroidx/camera/core/impl/utils/ByteOrderedDataInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_e

    .line 334
    goto :goto_1c

    .line 332
    :catch_e
    move-exception v4

    .line 333
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroidx/camera/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 336
    .end local v4    # "e":Ljava/io/IOException;
    :cond_10
    :goto_1c
    throw v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public size()I
    .locals 2

    .line 460
    sget-object v0, Landroidx/camera/core/impl/utils/ExifAttribute;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    iget v1, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroidx/camera/core/impl/utils/ExifAttribute;->numberOfComponents:I

    mul-int v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

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
