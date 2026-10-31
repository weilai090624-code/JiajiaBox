.class public final Landroidx/work/Data;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Data$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Landroidx/work/Data;

.field public static final MAX_DATA_BYTES:I = 0x2800

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const-string v0, "Data"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/Data;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    sput-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroidx/work/Data;)V
    .registers 4
    .param p1, "other"    # Landroidx/work/Data;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 80
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    .line 82
    return-void
.end method

.method public static convertPrimitiveBooleanArray([Z)[Ljava/lang/Boolean;
    .registers 4
    .param p0, "value"    # [Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 521
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Boolean;

    .line 522
    .local v0, "returnValue":[Ljava/lang/Boolean;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 523
    aget-boolean v2, p0, v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 525
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method public static convertPrimitiveByteArray([B)[Ljava/lang/Byte;
    .registers 4
    .param p0, "value"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 534
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Byte;

    .line 535
    .local v0, "returnValue":[Ljava/lang/Byte;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 536
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 538
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method public static convertPrimitiveDoubleArray([D)[Ljava/lang/Double;
    .registers 5
    .param p0, "value"    # [D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 586
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Double;

    .line 587
    .local v0, "returnValue":[Ljava/lang/Double;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 588
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    .line 587
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 590
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method public static convertPrimitiveFloatArray([F)[Ljava/lang/Float;
    .registers 4
    .param p0, "value"    # [F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 573
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Float;

    .line 574
    .local v0, "returnValue":[Ljava/lang/Float;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 575
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 577
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method public static convertPrimitiveIntArray([I)[Ljava/lang/Integer;
    .registers 4
    .param p0, "value"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 547
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 548
    .local v0, "returnValue":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 549
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 548
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 551
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method public static convertPrimitiveLongArray([J)[Ljava/lang/Long;
    .registers 5
    .param p0, "value"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 560
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Long;

    .line 561
    .local v0, "returnValue":[Ljava/lang/Long;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 562
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 564
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method public static convertToPrimitiveArray([Ljava/lang/Byte;)[B
    .registers 4
    .param p0, "array"    # [Ljava/lang/Byte;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 612
    array-length v0, p0

    new-array v0, v0, [B

    .line 613
    .local v0, "returnArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 614
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 616
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method public static convertToPrimitiveArray([Ljava/lang/Double;)[D
    .registers 5
    .param p0, "array"    # [Ljava/lang/Double;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 664
    array-length v0, p0

    new-array v0, v0, [D

    .line 665
    .local v0, "returnArray":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 666
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 665
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 668
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method public static convertToPrimitiveArray([Ljava/lang/Float;)[F
    .registers 4
    .param p0, "array"    # [Ljava/lang/Float;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 651
    array-length v0, p0

    new-array v0, v0, [F

    .line 652
    .local v0, "returnArray":[F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 653
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 655
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method public static convertToPrimitiveArray([Ljava/lang/Integer;)[I
    .registers 4
    .param p0, "array"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 625
    array-length v0, p0

    new-array v0, v0, [I

    .line 626
    .local v0, "returnArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 627
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 629
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method public static convertToPrimitiveArray([Ljava/lang/Long;)[J
    .registers 5
    .param p0, "array"    # [Ljava/lang/Long;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 638
    array-length v0, p0

    new-array v0, v0, [J

    .line 639
    .local v0, "returnArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 640
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 639
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 642
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method public static convertToPrimitiveArray([Ljava/lang/Boolean;)[Z
    .registers 4
    .param p0, "array"    # [Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    .line 599
    array-length v0, p0

    new-array v0, v0, [Z

    .line 600
    .local v0, "returnArray":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 601
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 603
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method public static fromByteArray([B)Landroidx/work/Data;
    .registers 8
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 424
    const-string v0, "Error in Data#fromByteArray: "

    array-length v1, p0

    const/16 v2, 0x2800

    if-gt v1, v2, :cond_7a

    .line 429
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 430
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 431
    .local v2, "inputStream":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 433
    .local v3, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_12
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 434
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .local v4, "i":I
    :goto_1c
    if-lez v4, :cond_2c

    .line 435
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_29} :catch_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_29} :catch_44
    .catchall {:try_start_12 .. :try_end_29} :catchall_42

    .line 434
    add-int/lit8 v4, v4, -0x1

    goto :goto_1c

    .line 440
    .end local v4    # "i":I
    :cond_2c
    nop

    .line 442
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 445
    goto :goto_37

    .line 443
    :catch_31
    move-exception v4

    .line 444
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    .end local v4    # "e":Ljava/io/IOException;
    :goto_37
    :try_start_37
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 451
    :goto_3a
    goto :goto_5d

    .line 449
    :catch_3b
    move-exception v4

    .line 450
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_5d

    .line 440
    :catchall_42
    move-exception v4

    goto :goto_63

    .line 437
    :catch_44
    move-exception v4

    goto :goto_47

    :catch_46
    move-exception v4

    .line 438
    .local v4, "e":Ljava/lang/Exception;
    :goto_47
    :try_start_47
    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_42

    .line 440
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_59

    .line 442
    :try_start_4f
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 445
    goto :goto_59

    .line 443
    :catch_53
    move-exception v4

    .line 444
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    .end local v4    # "e":Ljava/io/IOException;
    :cond_59
    :goto_59
    :try_start_59
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_3b

    goto :goto_3a

    .line 453
    :goto_5d
    new-instance v0, Landroidx/work/Data;

    invoke-direct {v0, v1}, Landroidx/work/Data;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 440
    :goto_63
    if-eqz v3, :cond_6f

    .line 442
    :try_start_65
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    .line 445
    goto :goto_6f

    .line 443
    :catch_69
    move-exception v5

    .line 444
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    .end local v5    # "e":Ljava/io/IOException;
    :cond_6f
    :goto_6f
    :try_start_6f
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    .line 451
    goto :goto_79

    .line 449
    :catch_73
    move-exception v5

    .line 450
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v6, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    .end local v5    # "e":Ljava/io/IOException;
    :goto_79
    throw v4

    .line 425
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "inputStream":Ljava/io/ByteArrayInputStream;
    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_7a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Data cannot occupy more than 10240 bytes when serialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toByteArrayInternal(Landroidx/work/Data;)[B
    .registers 8
    .param p0, "data"    # Landroidx/work/Data;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 377
    const-string v0, "Error in Data#toByteArray: "

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 378
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 380
    .local v2, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :try_start_8
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 381
    invoke-virtual {p0}, Landroidx/work/Data;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 382
    iget-object v3, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 383
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 384
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3b} :catch_69
    .catchall {:try_start_8 .. :try_end_3b} :catchall_67

    .line 385
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_1f

    .line 390
    :cond_3c
    nop

    .line 394
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    .line 397
    goto :goto_47

    .line 395
    :catch_41
    move-exception v3

    .line 396
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    .end local v3    # "e":Ljava/io/IOException;
    :goto_47
    :try_start_47
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    .line 403
    goto :goto_52

    .line 401
    :catch_4b
    move-exception v3

    .line 402
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v4, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 406
    :goto_52
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/16 v3, 0x2800

    if-gt v0, v3, :cond_5f

    .line 411
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 407
    :cond_5f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Data cannot occupy more than 10240 bytes when serialized"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :catchall_67
    move-exception v3

    goto :goto_8a

    .line 386
    :catch_69
    move-exception v3

    .line 387
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_6a
    sget-object v4, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v4, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_73
    .catchall {:try_start_6a .. :try_end_73} :catchall_67

    .line 390
    if-eqz v2, :cond_7f

    .line 394
    :try_start_75
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    .line 397
    goto :goto_7f

    .line 395
    :catch_79
    move-exception v5

    .line 396
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7f
    :goto_7f
    :try_start_7f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    .line 403
    goto :goto_89

    .line 401
    :catch_83
    move-exception v5

    .line 402
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v6, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    .end local v5    # "e":Ljava/io/IOException;
    :goto_89
    return-object v4

    .line 390
    .end local v3    # "e":Ljava/io/IOException;
    :goto_8a
    if-eqz v2, :cond_96

    .line 394
    :try_start_8c
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    .line 397
    goto :goto_96

    .line 395
    :catch_90
    move-exception v4

    .line 396
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    .end local v4    # "e":Ljava/io/IOException;
    :cond_96
    :goto_96
    :try_start_96
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_9a

    .line 403
    goto :goto_a0

    .line 401
    :catch_9a
    move-exception v4

    .line 402
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v5, Landroidx/work/Data;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    .end local v4    # "e":Ljava/io/IOException;
    :goto_a0
    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 458
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 459
    return v0

    .line 461
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_6b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_6b

    .line 465
    :cond_12
    move-object v2, p1

    check-cast v2, Landroidx/work/Data;

    .line 466
    .local v2, "other":Landroidx/work/Data;
    iget-object v3, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 467
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, v2, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 468
    return v1

    .line 471
    :cond_28
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 472
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 473
    .local v6, "value":Ljava/lang/Object;
    iget-object v7, v2, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 475
    .local v7, "otherValue":Ljava/lang/Object;
    if-eqz v6, :cond_61

    if-nez v7, :cond_49

    goto :goto_61

    .line 477
    :cond_49
    instance-of v8, v6, [Ljava/lang/Object;

    if-eqz v8, :cond_5c

    instance-of v8, v7, [Ljava/lang/Object;

    if-eqz v8, :cond_5c

    .line 478
    move-object v8, v6

    check-cast v8, [Ljava/lang/Object;

    move-object v9, v7

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v8

    .local v8, "equal":Z
    goto :goto_66

    .line 480
    .end local v8    # "equal":Z
    :cond_5c
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    .restart local v8    # "equal":Z
    goto :goto_66

    .line 476
    .end local v8    # "equal":Z
    :cond_61
    :goto_61
    if-ne v6, v7, :cond_65

    const/4 v8, 0x1

    goto :goto_66

    :cond_65
    const/4 v8, 0x0

    .line 483
    .restart local v8    # "equal":Z
    :goto_66
    if-nez v8, :cond_69

    .line 484
    return v1

    .line 486
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "otherValue":Ljava/lang/Object;
    .end local v8    # "equal":Z
    :cond_69
    goto :goto_2c

    .line 487
    :cond_6a
    return v0

    .line 462
    .end local v2    # "other":Landroidx/work/Data;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6b
    :goto_6b
    return v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    .line 94
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 96
    :cond_12
    return p2
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    .line 110
    move-object v1, v0

    check-cast v1, [Ljava/lang/Boolean;

    .line 111
    .local v1, "array":[Ljava/lang/Boolean;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Boolean;)[Z

    move-result-object v2

    return-object v2

    .line 113
    .end local v1    # "array":[Ljava/lang/Boolean;
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public getByte(Ljava/lang/String;B)B
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_12

    .line 127
    move-object v1, v0

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1

    .line 129
    :cond_12
    return p2
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Byte;

    if-eqz v1, :cond_12

    .line 143
    move-object v1, v0

    check-cast v1, [Ljava/lang/Byte;

    .line 144
    .local v1, "array":[Ljava/lang/Byte;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Byte;)[B

    move-result-object v2

    return-object v2

    .line 146
    .end local v1    # "array":[Ljava/lang/Byte;
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 258
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_12

    .line 259
    move-object v1, v0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    .line 261
    :cond_12
    return-wide p2
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 274
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Double;

    if-eqz v1, :cond_12

    .line 275
    move-object v1, v0

    check-cast v1, [Ljava/lang/Double;

    .line 276
    .local v1, "array":[Ljava/lang/Double;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Double;)[D

    move-result-object v2

    return-object v2

    .line 278
    .end local v1    # "array":[Ljava/lang/Double;
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_12

    .line 226
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 228
    :cond_12
    return p2
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 241
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Float;

    if-eqz v1, :cond_12

    .line 242
    move-object v1, v0

    check-cast v1, [Ljava/lang/Float;

    .line 243
    .local v1, "array":[Ljava/lang/Float;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Float;)[F

    move-result-object v2

    return-object v2

    .line 245
    .end local v1    # "array":[Ljava/lang/Float;
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_12

    .line 160
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 162
    :cond_12
    return p2
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Integer;

    if-eqz v1, :cond_12

    .line 176
    move-object v1, v0

    check-cast v1, [Ljava/lang/Integer;

    .line 177
    .local v1, "array":[Ljava/lang/Integer;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Integer;)[I

    move-result-object v2

    return-object v2

    .line 179
    .end local v1    # "array":[Ljava/lang/Integer;
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public getKeyValueMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 192
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_12

    .line 193
    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 195
    :cond_12
    return-wide p2
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Long;

    if-eqz v1, :cond_12

    .line 209
    move-object v1, v0

    check-cast v1, [Ljava/lang/Long;

    .line 210
    .local v1, "array":[Ljava/lang/Long;
    invoke-static {v1}, Landroidx/work/Data;->convertToPrimitiveArray([Ljava/lang/Long;)[J

    move-result-object v2

    return-object v2

    .line 212
    .end local v1    # "array":[Ljava/lang/Long;
    :cond_12
    const/4 v1, 0x0

    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 291
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 292
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 294
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 307
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 308
    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 310
    :cond_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasKeyWithValueOfType(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "klass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 350
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 351
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 492
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public size()I
    .registers 2

    .line 361
    iget-object v0, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .registers 2

    .line 336
    invoke-static {p0}, Landroidx/work/Data;->toByteArrayInternal(Landroidx/work/Data;)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 500
    iget-object v1, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 501
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget-object v3, p0, Landroidx/work/Data;->mValues:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 503
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_43

    .line 504
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 506
    :cond_43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 508
    :goto_46
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_19

    .line 511
    :cond_4c
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
