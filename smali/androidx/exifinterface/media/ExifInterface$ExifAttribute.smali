.class Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/exifinterface/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# instance fields
.field public final bytes:[B

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method constructor <init>(II[B)V
    .registers 4
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytes"    # [B

    .line 2943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2944
    iput p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 2945
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 2946
    iput-object p3, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 2947
    return-void
.end method

.method public static createByte(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;

    .line 2993
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

    .line 2994
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    new-array v3, v1, [B

    aput-byte v2, v3, v0

    move-object v0, v3

    .line 2995
    .local v0, "bytes":[B
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v1, v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2

    .line 2997
    .end local v0    # "bytes":[B
    :cond_2a
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 2998
    .local v0, "ascii":[B
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v1, v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 5
    .param p0, "value"    # D
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3047
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 8
    .param p0, "values"    # [D
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3037
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3039
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3040
    array-length v2, p0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_1e

    aget-wide v4, p0, v3

    .line 3041
    .local v4, "value":D
    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 3040
    .end local v4    # "value":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 3043
    :cond_1e
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 3
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 2988
    filled-new-array {p0}, [I

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 7
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 2978
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2980
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2981
    array-length v2, p0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_1e

    aget v4, p0, v3

    .line 2982
    .local v4, "value":I
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2981
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2984
    :cond_1e
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createSRational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 4
    .param p0, "value"    # Landroidx/exifinterface/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3033
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSRational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSRational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 9
    .param p0, "values"    # [Landroidx/exifinterface/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3022
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3024
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3025
    array-length v2, p0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_27

    aget-object v4, p0, v3

    .line 3026
    .local v4, "value":Landroidx/exifinterface/media/ExifInterface$Rational;
    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-int v6, v5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3027
    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-int v6, v5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3025
    .end local v4    # "value":Landroidx/exifinterface/media/ExifInterface$Rational;
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 3029
    :cond_27
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 5
    .param p0, "value"    # Ljava/lang/String;

    .line 3002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 3003
    .local v0, "ascii":[B
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const/4 v2, 0x2

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 5
    .param p0, "value"    # J
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 2974
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 9
    .param p0, "values"    # [J
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 2964
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2966
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2967
    array-length v2, p0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_1e

    aget-wide v4, p0, v3

    .line 2968
    .local v4, "value":J
    long-to-int v6, v4

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2967
    .end local v4    # "value":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 2970
    :cond_1e
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 4
    .param p0, "value"    # Landroidx/exifinterface/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3018
    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 9
    .param p0, "values"    # [Landroidx/exifinterface/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3007
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3009
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3010
    array-length v2, p0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_26

    aget-object v4, p0, v3

    .line 3011
    .local v4, "value":Landroidx/exifinterface/media/ExifInterface$Rational;
    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-int v6, v5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3012
    iget-wide v5, v4, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-int v6, v5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3010
    .end local v4    # "value":Landroidx/exifinterface/media/ExifInterface$Rational;
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 3014
    :cond_26
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 3
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 2960
    filled-new-array {p0}, [I

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 8
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 2950
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int v0, v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2952
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2953
    array-length v2, p0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_1e

    aget v4, p0, v3

    .line 2954
    .local v4, "value":I
    int-to-short v5, v4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 2953
    .end local v4    # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 2956
    :cond_1e
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .registers 8
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3179
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 3180
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_78

    .line 3183
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 3184
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1

    .line 3186
    :cond_12
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "There are more than one component"

    const/4 v4, 0x1

    if-eqz v1, :cond_2c

    .line 3187
    move-object v1, v0

    check-cast v1, [J

    check-cast v1, [J

    .line 3188
    .local v1, "array":[J
    array-length v5, v1

    if-ne v5, v4, :cond_26

    .line 3189
    aget-wide v2, v1, v2

    long-to-double v2, v2

    return-wide v2

    .line 3191
    :cond_26
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3193
    .end local v1    # "array":[J
    :cond_2c
    instance-of v1, v0, [I

    if-eqz v1, :cond_42

    .line 3194
    move-object v1, v0

    check-cast v1, [I

    check-cast v1, [I

    .line 3195
    .local v1, "array":[I
    array-length v5, v1

    if-ne v5, v4, :cond_3c

    .line 3196
    aget v2, v1, v2

    int-to-double v2, v2

    return-wide v2

    .line 3198
    :cond_3c
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3200
    .end local v1    # "array":[I
    :cond_42
    instance-of v1, v0, [D

    if-eqz v1, :cond_57

    .line 3201
    move-object v1, v0

    check-cast v1, [D

    check-cast v1, [D

    .line 3202
    .local v1, "array":[D
    array-length v5, v1

    if-ne v5, v4, :cond_51

    .line 3203
    aget-wide v2, v1, v2

    return-wide v2

    .line 3205
    :cond_51
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3207
    .end local v1    # "array":[D
    :cond_57
    instance-of v1, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz v1, :cond_70

    .line 3208
    move-object v1, v0

    check-cast v1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    check-cast v1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3209
    .local v1, "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    array-length v5, v1

    if-ne v5, v4, :cond_6a

    .line 3210
    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$Rational;->calculate()D

    move-result-wide v2

    return-wide v2

    .line 3212
    :cond_6a
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3214
    .end local v1    # "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :cond_70
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3181
    :cond_78
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a double value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .registers 8
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3218
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 3219
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_49

    .line 3222
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 3223
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 3225
    :cond_12
    instance-of v1, v0, [J

    const/4 v2, 0x0

    const-string v3, "There are more than one component"

    const/4 v4, 0x1

    if-eqz v1, :cond_2c

    .line 3226
    move-object v1, v0

    check-cast v1, [J

    check-cast v1, [J

    .line 3227
    .local v1, "array":[J
    array-length v5, v1

    if-ne v5, v4, :cond_26

    .line 3228
    aget-wide v2, v1, v2

    long-to-int v3, v2

    return v3

    .line 3230
    :cond_26
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3232
    .end local v1    # "array":[J
    :cond_2c
    instance-of v1, v0, [I

    if-eqz v1, :cond_41

    .line 3233
    move-object v1, v0

    check-cast v1, [I

    check-cast v1, [I

    .line 3234
    .local v1, "array":[I
    array-length v5, v1

    if-ne v5, v4, :cond_3b

    .line 3235
    aget v2, v1, v2

    return v2

    .line 3237
    :cond_3b
    new-instance v2, Ljava/lang/NumberFormatException;

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3239
    .end local v1    # "array":[I
    :cond_41
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Couldn\'t find a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3220
    :cond_49
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "NULL can\'t be converted to a integer value"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .registers 9
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3243
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    .line 3244
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3245
    return-object v1

    .line 3247
    :cond_8
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 3248
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 3251
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3252
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    instance-of v3, v0, [J

    const-string v4, ","

    if-eqz v3, :cond_39

    .line 3253
    move-object v1, v0

    check-cast v1, [J

    check-cast v1, [J

    .line 3254
    .local v1, "array":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    array-length v5, v1

    if-ge v3, v5, :cond_34

    .line 3255
    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3256
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_31

    .line 3257
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3254
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 3260
    .end local v3    # "i":I
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3262
    .end local v1    # "array":[J
    :cond_39
    instance-of v3, v0, [I

    if-eqz v3, :cond_5b

    .line 3263
    move-object v1, v0

    check-cast v1, [I

    check-cast v1, [I

    .line 3264
    .local v1, "array":[I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_43
    array-length v5, v1

    if-ge v3, v5, :cond_56

    .line 3265
    aget v5, v1, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3266
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_53

    .line 3267
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3264
    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 3270
    .end local v3    # "i":I
    :cond_56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3272
    .end local v1    # "array":[I
    :cond_5b
    instance-of v3, v0, [D

    if-eqz v3, :cond_7d

    .line 3273
    move-object v1, v0

    check-cast v1, [D

    check-cast v1, [D

    .line 3274
    .local v1, "array":[D
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_65
    array-length v5, v1

    if-ge v3, v5, :cond_78

    .line 3275
    aget-wide v5, v1, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 3276
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_75

    .line 3277
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3274
    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_65

    .line 3280
    .end local v3    # "i":I
    :cond_78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3282
    .end local v1    # "array":[D
    :cond_7d
    instance-of v3, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz v3, :cond_ad

    .line 3283
    move-object v1, v0

    check-cast v1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    check-cast v1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3284
    .local v1, "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_87
    array-length v5, v1

    if-ge v3, v5, :cond_a8

    .line 3285
    aget-object v5, v1, v3

    iget-wide v5, v5, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3286
    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3287
    aget-object v5, v1, v3

    iget-wide v5, v5, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3288
    add-int/lit8 v5, v3, 0x1

    array-length v6, v1

    if-eq v5, v6, :cond_a5

    .line 3289
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3284
    :cond_a5
    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    .line 3292
    .end local v3    # "i":I
    :cond_a8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 3294
    .end local v1    # "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :cond_ad
    return-object v1
.end method

.method getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .registers 13
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 3057
    const-string v0, "IOException occurred while closing InputStream"

    const-string v1, "ExifInterface"

    const/4 v2, 0x0

    .line 3059
    .local v2, "inputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    const/4 v3, 0x0

    :try_start_6
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v4, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object v2, v4

    .line 3060
    invoke-virtual {v2, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3061
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    packed-switch v4, :pswitch_data_1d2

    .line 3162
    nop

    .line 3168
    goto/16 :goto_1aa

    .line 3155
    :pswitch_19
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [D

    .line 3156
    .local v4, "values":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1e
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_2b

    .line 3157
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v6

    aput-wide v6, v4, v5
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_28} :catch_1b5
    .catchall {:try_start_6 .. :try_end_28} :catchall_1b3

    .line 3156
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 3159
    .end local v5    # "i":I
    :cond_2b
    nop

    .line 3168
    nop

    .line 3170
    :try_start_2d
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 3173
    goto :goto_35

    .line 3171
    :catch_31
    move-exception v3

    .line 3172
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    .end local v3    # "e":Ljava/io/IOException;
    :goto_35
    return-object v4

    .line 3148
    .end local v4    # "values":[D
    :pswitch_36
    :try_start_36
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [D

    .line 3149
    .restart local v4    # "values":[D
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3b
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_49

    .line 3150
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFloat()F

    move-result v6

    float-to-double v6, v6

    aput-wide v6, v4, v5
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_46} :catch_1b5
    .catchall {:try_start_36 .. :try_end_46} :catchall_1b3

    .line 3149
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 3152
    .end local v5    # "i":I
    :cond_49
    nop

    .line 3168
    nop

    .line 3170
    :try_start_4b
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 3173
    goto :goto_53

    .line 3171
    :catch_4f
    move-exception v3

    .line 3172
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    .end local v3    # "e":Ljava/io/IOException;
    :goto_53
    return-object v4

    .line 3139
    .end local v4    # "values":[D
    :pswitch_54
    :try_start_54
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3140
    .local v4, "values":[Landroidx/exifinterface/media/ExifInterface$Rational;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_59
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_71

    .line 3141
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    int-to-long v6, v6

    .line 3142
    .local v6, "numerator":J
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v8

    int-to-long v8, v8

    .line 3143
    .local v8, "denominator":J
    new-instance v10, Landroidx/exifinterface/media/ExifInterface$Rational;

    invoke-direct {v10, v6, v7, v8, v9}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    aput-object v10, v4, v5
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_6e} :catch_1b5
    .catchall {:try_start_54 .. :try_end_6e} :catchall_1b3

    .line 3140
    .end local v6    # "numerator":J
    .end local v8    # "denominator":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_59

    .line 3145
    .end local v5    # "i":I
    :cond_71
    nop

    .line 3168
    nop

    .line 3170
    :try_start_73
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    .line 3173
    goto :goto_7b

    .line 3171
    :catch_77
    move-exception v3

    .line 3172
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    .end local v3    # "e":Ljava/io/IOException;
    :goto_7b
    return-object v4

    .line 3132
    .end local v4    # "values":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :pswitch_7c
    :try_start_7c
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 3133
    .local v4, "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_81
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_8e

    .line 3134
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    aput v6, v4, v5
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_8b} :catch_1b5
    .catchall {:try_start_7c .. :try_end_8b} :catchall_1b3

    .line 3133
    add-int/lit8 v5, v5, 0x1

    goto :goto_81

    .line 3136
    .end local v5    # "i":I
    :cond_8e
    nop

    .line 3168
    nop

    .line 3170
    :try_start_90
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_94

    .line 3173
    goto :goto_98

    .line 3171
    :catch_94
    move-exception v3

    .line 3172
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    .end local v3    # "e":Ljava/io/IOException;
    :goto_98
    return-object v4

    .line 3125
    .end local v4    # "values":[I
    :pswitch_99
    :try_start_99
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 3126
    .restart local v4    # "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_9e
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_ab

    .line 3127
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v6

    aput v6, v4, v5
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a8} :catch_1b5
    .catchall {:try_start_99 .. :try_end_a8} :catchall_1b3

    .line 3126
    add-int/lit8 v5, v5, 0x1

    goto :goto_9e

    .line 3129
    .end local v5    # "i":I
    :cond_ab
    nop

    .line 3168
    nop

    .line 3170
    :try_start_ad
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b1

    .line 3173
    goto :goto_b5

    .line 3171
    :catch_b1
    move-exception v3

    .line 3172
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    .end local v3    # "e":Ljava/io/IOException;
    :goto_b5
    return-object v4

    .line 3116
    .end local v4    # "values":[I
    :pswitch_b6
    :try_start_b6
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3117
    .local v4, "values":[Landroidx/exifinterface/media/ExifInterface$Rational;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_bb
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_d1

    .line 3118
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    .line 3119
    .restart local v6    # "numerator":J
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v8

    .line 3120
    .restart local v8    # "denominator":J
    new-instance v10, Landroidx/exifinterface/media/ExifInterface$Rational;

    invoke-direct {v10, v6, v7, v8, v9}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    aput-object v10, v4, v5
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_ce} :catch_1b5
    .catchall {:try_start_b6 .. :try_end_ce} :catchall_1b3

    .line 3117
    .end local v6    # "numerator":J
    .end local v8    # "denominator":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_bb

    .line 3122
    .end local v5    # "i":I
    :cond_d1
    nop

    .line 3168
    nop

    .line 3170
    :try_start_d3
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d7

    .line 3173
    goto :goto_db

    .line 3171
    :catch_d7
    move-exception v3

    .line 3172
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    .end local v3    # "e":Ljava/io/IOException;
    :goto_db
    return-object v4

    .line 3109
    .end local v4    # "values":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :pswitch_dc
    :try_start_dc
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [J

    .line 3110
    .local v4, "values":[J
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_e1
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_ee

    .line 3111
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    aput-wide v6, v4, v5
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_eb} :catch_1b5
    .catchall {:try_start_dc .. :try_end_eb} :catchall_1b3

    .line 3110
    add-int/lit8 v5, v5, 0x1

    goto :goto_e1

    .line 3113
    .end local v5    # "i":I
    :cond_ee
    nop

    .line 3168
    nop

    .line 3170
    :try_start_f0
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_f4

    .line 3173
    goto :goto_f8

    .line 3171
    :catch_f4
    move-exception v3

    .line 3172
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    .end local v3    # "e":Ljava/io/IOException;
    :goto_f8
    return-object v4

    .line 3102
    .end local v4    # "values":[J
    :pswitch_f9
    :try_start_f9
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v4, v4, [I

    .line 3103
    .local v4, "values":[I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_fe
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v6, :cond_10b

    .line 3104
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v6

    aput v6, v4, v5
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_108} :catch_1b5
    .catchall {:try_start_f9 .. :try_end_108} :catchall_1b3

    .line 3103
    add-int/lit8 v5, v5, 0x1

    goto :goto_fe

    .line 3106
    .end local v5    # "i":I
    :cond_10b
    nop

    .line 3168
    nop

    .line 3170
    :try_start_10d
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_110
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_110} :catch_111

    .line 3173
    goto :goto_115

    .line 3171
    :catch_111
    move-exception v3

    .line 3172
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    .end local v3    # "e":Ljava/io/IOException;
    :goto_115
    return-object v4

    .line 3072
    .end local v4    # "values":[I
    :pswitch_116
    const/4 v4, 0x0

    .line 3073
    .local v4, "index":I
    :try_start_117
    iget v5, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    array-length v6, v6

    if-lt v5, v6, :cond_13a

    .line 3074
    const/4 v5, 0x1

    .line 3075
    .local v5, "same":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_120
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    array-length v7, v7

    if-ge v6, v7, :cond_134

    .line 3076
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v7, v7, v6

    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    aget-byte v8, v8, v6

    if-eq v7, v8, :cond_131

    .line 3077
    const/4 v5, 0x0

    .line 3078
    goto :goto_134

    .line 3075
    :cond_131
    add-int/lit8 v6, v6, 0x1

    goto :goto_120

    .line 3081
    .end local v6    # "i":I
    :cond_134
    :goto_134
    if-eqz v5, :cond_13a

    .line 3082
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    array-length v6, v6

    move v4, v6

    .line 3086
    .end local v5    # "same":Z
    :cond_13a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3087
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_13f
    iget v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v4, v6, :cond_15c

    .line 3088
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v6, v6, v4

    .line 3089
    .local v6, "ch":I
    if-nez v6, :cond_14a

    .line 3090
    goto :goto_15c

    .line 3092
    :cond_14a
    const/16 v7, 0x20

    if-lt v6, v7, :cond_153

    .line 3093
    int-to-char v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_158

    .line 3095
    :cond_153
    const/16 v7, 0x3f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3097
    :goto_158
    nop

    .end local v6    # "ch":I
    add-int/lit8 v4, v4, 0x1

    .line 3098
    goto :goto_13f

    .line 3099
    :cond_15c
    :goto_15c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_160} :catch_1b5
    .catchall {:try_start_117 .. :try_end_160} :catchall_1b3

    .line 3168
    nop

    .line 3170
    :try_start_161
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_164} :catch_165

    .line 3173
    goto :goto_169

    .line 3171
    :catch_165
    move-exception v6

    .line 3172
    .local v6, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    .end local v6    # "e":Ljava/io/IOException;
    :goto_169
    return-object v3

    .line 3065
    .end local v4    # "index":I
    .end local v5    # "stringBuilder":Ljava/lang/StringBuilder;
    :pswitch_16a
    :try_start_16a
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_197

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v6, 0x0

    aget-byte v4, v4, v6

    if-ltz v4, :cond_197

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v4, v4, v6

    if-gt v4, v5, :cond_197

    .line 3066
    new-instance v4, Ljava/lang/String;

    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v7, v7, v6

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    new-array v5, v5, [C

    aput-char v7, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_18d
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_18d} :catch_1b5
    .catchall {:try_start_16a .. :try_end_18d} :catchall_1b3

    .line 3168
    nop

    .line 3170
    :try_start_18e
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_191
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_191} :catch_192

    .line 3173
    goto :goto_196

    .line 3171
    :catch_192
    move-exception v3

    .line 3172
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    .end local v3    # "e":Ljava/io/IOException;
    :goto_196
    return-object v4

    .line 3068
    :cond_197
    :try_start_197
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_197 .. :try_end_1a0} :catch_1b5
    .catchall {:try_start_197 .. :try_end_1a0} :catchall_1b3

    .line 3168
    nop

    .line 3170
    :try_start_1a1
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1a4} :catch_1a5

    .line 3173
    goto :goto_1a9

    .line 3171
    :catch_1a5
    move-exception v3

    .line 3172
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1a9
    return-object v4

    .line 3170
    :goto_1aa
    :try_start_1aa
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1ad} :catch_1ae

    .line 3173
    goto :goto_1b2

    .line 3171
    :catch_1ae
    move-exception v4

    .line 3172
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1b2
    return-object v3

    .line 3168
    :catchall_1b3
    move-exception v3

    goto :goto_1c7

    .line 3164
    :catch_1b5
    move-exception v4

    .line 3165
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_1b6
    const-string v5, "IOException occurred during reading a value"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1bb
    .catchall {:try_start_1b6 .. :try_end_1bb} :catchall_1b3

    .line 3166
    nop

    .line 3168
    if-eqz v2, :cond_1c6

    .line 3170
    :try_start_1be
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1c1
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1c1} :catch_1c2

    .line 3173
    goto :goto_1c6

    .line 3171
    :catch_1c2
    move-exception v5

    .line 3172
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1c6
    :goto_1c6
    return-object v3

    .line 3168
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1c7
    if-eqz v2, :cond_1d1

    .line 3170
    :try_start_1c9
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1cc} :catch_1cd

    .line 3173
    goto :goto_1d1

    .line 3171
    :catch_1cd
    move-exception v4

    .line 3172
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
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

    .line 3298
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 3052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

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
