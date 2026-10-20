.class public final Landroidx/camera/core/impl/utils/ExifData$Builder;
.super Ljava/lang/Object;
.source "ExifData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/utils/ExifData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DATETIME_VALUE_STRING_LENGTH:I = 0x13

.field private static final GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

.field static final sExifTagMapsForWriting:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/utils/ExifTag;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final mAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/utils/ExifAttribute;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mByteOrder:Ljava/nio/ByteOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 404
    nop

    .line 405
    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/utils/ExifData$Builder;->GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    .line 407
    nop

    .line 408
    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/utils/ExifData$Builder;->DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 410
    nop

    .line 411
    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/utils/ExifData$Builder;->DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 415
    new-instance v0, Landroidx/camera/core/impl/utils/ExifData$Builder$1;

    invoke-direct {v0}, Landroidx/camera/core/impl/utils/ExifData$Builder$1;-><init>()V

    .line 416
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/utils/ExifData$Builder;->sExifTagMapsForWriting:Ljava/util/List;

    .line 415
    return-void
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteOrder"
        }
    .end annotation

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    new-instance v0, Landroidx/camera/core/impl/utils/ExifData$Builder$2;

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/utils/ExifData$Builder$2;-><init>(Landroidx/camera/core/impl/utils/ExifData$Builder;)V

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/impl/utils/ExifData$Builder;->mAttributes:Ljava/util/List;

    .line 454
    iput-object p1, p0, Landroidx/camera/core/impl/utils/ExifData$Builder;->mByteOrder:Ljava/nio/ByteOrder;

    .line 455
    return-void
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 12
    .param p0, "entryValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 895
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 943
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 895
    const/4 v5, -0x1

    .line 943
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 895
    if-eqz v1, :cond_9

    .line 896
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, "entryValues":[Ljava/lang/String;
    aget-object v1, v0, v2

    invoke-static {v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 898
    .local v1, "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 899
    return-object v1

    .line 901
    :cond_0
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_8

    .line 902
    aget-object v3, v0, v2

    invoke-static {v3}, Landroidx/camera/core/impl/utils/ExifData$Builder;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 903
    .local v3, "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v7, -0x1

    .local v7, "first":I
    const/4 v8, -0x1

    .line 904
    .local v8, "second":I
    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 905
    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 906
    :cond_1
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 908
    :cond_2
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v5, :cond_4

    iget-object v9, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 909
    invoke-virtual {v9, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 910
    :cond_3
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 912
    :cond_4
    if-ne v7, v5, :cond_5

    if-ne v8, v5, :cond_5

    .line 913
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 915
    :cond_5
    if-ne v7, v5, :cond_6

    .line 916
    new-instance v9, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v9

    .line 917
    goto :goto_1

    .line 919
    :cond_6
    if-ne v8, v5, :cond_7

    .line 920
    new-instance v9, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v9

    .line 901
    .end local v3    # "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v7    # "first":I
    .end local v8    # "second":I
    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 923
    .end local v2    # "i":I
    :cond_8
    return-object v1

    .line 926
    .end local v0    # "entryValues":[Ljava/lang/String;
    .end local v1    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_9
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v7, 0x0

    if-eqz v1, :cond_f

    .line 927
    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 928
    .local v0, "rationalNumber":[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v3, :cond_e

    .line 930
    :try_start_0
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-long v1, v1

    .line 931
    .local v1, "numerator":J
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-long v9, v9

    .line 932
    .local v9, "denominator":J
    const/16 v3, 0xa

    cmp-long v5, v1, v7

    if-ltz v5, :cond_d

    cmp-long v5, v9, v7

    if-gez v5, :cond_a

    goto :goto_3

    .line 935
    :cond_a
    const/4 v5, 0x5

    const-wide/32 v7, 0x7fffffff

    cmp-long v11, v1, v7

    if-gtz v11, :cond_c

    cmp-long v11, v9, v7

    if-lez v11, :cond_b

    goto :goto_2

    .line 938
    :cond_b
    new-instance v7, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v7, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    .line 936
    :cond_c
    :goto_2
    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 933
    :cond_d
    :goto_3
    new-instance v5, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v5, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 939
    .end local v1    # "numerator":J
    .end local v9    # "denominator":J
    :catch_0
    move-exception v1

    .line 943
    :cond_e
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 946
    .end local v0    # "rationalNumber":[Ljava/lang/String;
    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 947
    .local v0, "longValue":J
    const/4 v2, 0x4

    cmp-long v3, v0, v7

    if-ltz v3, :cond_10

    const-wide/32 v9, 0xffff

    cmp-long v3, v0, v9

    if-gtz v3, :cond_10

    .line 948
    new-instance v3, Landroid/util/Pair;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 950
    :cond_10
    cmp-long v3, v0, v7

    if-gez v3, :cond_11

    .line 951
    new-instance v2, Landroid/util/Pair;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 953
    :cond_11
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v3, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 954
    .end local v0    # "longValue":J
    :catch_1
    move-exception v0

    .line 958
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 959
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 960
    :catch_2
    move-exception v0

    .line 963
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "value",
            "attributes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/utils/ExifAttribute;",
            ">;>;)V"
        }
    .end annotation

    .line 636
    .local p3, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Landroidx/camera/core/impl/utils/ExifAttribute;>;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 637
    .local v1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/camera/core/impl/utils/ExifAttribute;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    return-void

    .line 641
    .end local v1    # "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/camera/core/impl/utils/ExifAttribute;>;"
    :cond_0
    goto :goto_0

    .line 644
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 645
    return-void
.end method

.method private setAttributeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 21
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "value",
            "attributes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/camera/core/impl/utils/ExifAttribute;",
            ">;>;)V"
        }
    .end annotation

    .line 652
    .local p3, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Landroidx/camera/core/impl/utils/ExifAttribute;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "DateTime"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, " : "

    const-string v6, "Invalid value for "

    const-string v7, "ExifData"

    if-nez v4, :cond_0

    const-string v4, "DateTimeOriginal"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 653
    const-string v4, "DateTimeDigitized"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 654
    :cond_0
    if-eqz v2, :cond_3

    .line 655
    sget-object v4, Landroidx/camera/core/impl/utils/ExifData$Builder;->DATETIME_PRIMARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    .line 656
    .local v4, "isPrimaryFormat":Z
    sget-object v8, Landroidx/camera/core/impl/utils/ExifData$Builder;->DATETIME_SECONDARY_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 657
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    .line 659
    .local v8, "isSecondaryFormat":Z
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x13

    if-ne v9, v10, :cond_2

    if-nez v4, :cond_1

    if-nez v8, :cond_1

    goto :goto_0

    .line 668
    :cond_1
    if-eqz v8, :cond_3

    .line 670
    const-string v9, "-"

    const-string v10, ":"

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local p2    # "value":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    goto :goto_1

    .line 661
    .end local v2    # "value":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :cond_2
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    return-void

    .line 675
    .end local v4    # "isPrimaryFormat":Z
    .end local v8    # "isSecondaryFormat":Z
    .end local p2    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v4, "ISOSpeedRatings"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 680
    const-string v0, "PhotographicSensitivity"

    move-object v4, v0

    .end local p1    # "tag":Ljava/lang/String;
    .local v0, "tag":Ljava/lang/String;
    goto :goto_2

    .line 675
    .end local v0    # "tag":Ljava/lang/String;
    .restart local p1    # "tag":Ljava/lang/String;
    :cond_4
    move-object v4, v0

    .line 683
    .end local p1    # "tag":Ljava/lang/String;
    .local v4, "tag":Ljava/lang/String;
    :goto_2
    const/4 v0, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_7

    sget-object v9, Landroidx/camera/core/impl/utils/ExifData;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v9, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 684
    const-string v9, "GPSTimeStamp"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 685
    sget-object v9, Landroidx/camera/core/impl/utils/ExifData$Builder;->GPS_TIMESTAMP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 686
    .local v9, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-nez v10, :cond_5

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    return-void

    .line 690
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 691
    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 692
    const/4 v6, 0x3

    invoke-virtual {v9, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 693
    .end local v9    # "m":Ljava/util/regex/Matcher;
    goto :goto_3

    .line 695
    :cond_6
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 696
    .local v9, "doubleValue":D
    new-instance v11, Landroidx/camera/core/impl/utils/LongRational;

    invoke-direct {v11, v9, v10}, Landroidx/camera/core/impl/utils/LongRational;-><init>(D)V

    invoke-virtual {v11}, Landroidx/camera/core/impl/utils/LongRational;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 700
    .end local v9    # "doubleValue":D
    goto :goto_3

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 699
    return-void

    .line 704
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    :goto_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    sget-object v6, Landroidx/camera/core/impl/utils/ExifData;->EXIF_TAGS:[[Landroidx/camera/core/impl/utils/ExifTag;

    array-length v6, v6

    if-ge v5, v6, :cond_16

    .line 705
    sget-object v6, Landroidx/camera/core/impl/utils/ExifData$Builder;->sExifTagMapsForWriting:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/impl/utils/ExifTag;

    .line 706
    .local v6, "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    if-eqz v6, :cond_15

    .line 707
    if-nez v2, :cond_8

    .line 708
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const/16 v16, 0x1

    goto/16 :goto_e

    .line 711
    :cond_8
    invoke-static {v2}, Landroidx/camera/core/impl/utils/ExifData$Builder;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v7

    .line 713
    .local v7, "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v9, v6, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, -0x1

    if-eq v9, v10, :cond_e

    iget v9, v6, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    .line 714
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v9, v10, :cond_9

    goto :goto_6

    .line 716
    :cond_9
    iget v9, v6, Landroidx/camera/core/impl/utils/ExifTag;->secondaryFormat:I

    if-eq v9, v11, :cond_b

    iget v9, v6, Landroidx/camera/core/impl/utils/ExifTag;->secondaryFormat:I

    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    .line 717
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v9, v10, :cond_a

    iget v9, v6, Landroidx/camera/core/impl/utils/ExifTag;->secondaryFormat:I

    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    .line 718
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v9, v10, :cond_b

    .line 719
    :cond_a
    iget v9, v6, Landroidx/camera/core/impl/utils/ExifTag;->secondaryFormat:I

    .local v9, "dataFormat":I
    goto :goto_7

    .line 720
    .end local v9    # "dataFormat":I
    :cond_b
    iget v9, v6, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    if-eq v9, v8, :cond_d

    iget v9, v6, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    const/4 v10, 0x7

    if-eq v9, v10, :cond_d

    iget v9, v6, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    if-ne v9, v0, :cond_c

    goto :goto_5

    :cond_c
    const/16 v16, 0x1

    goto/16 :goto_e

    .line 723
    :cond_d
    :goto_5
    iget v9, v6, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    .restart local v9    # "dataFormat":I
    goto :goto_7

    .line 715
    .end local v9    # "dataFormat":I
    :cond_e
    :goto_6
    iget v9, v6, Landroidx/camera/core/impl/utils/ExifTag;->primaryFormat:I

    .line 737
    .restart local v9    # "dataFormat":I
    :goto_7
    const/4 v10, 0x0

    const-string v12, "/"

    const-string v13, ","

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    const/16 v16, 0x1

    .end local v6    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .end local v7    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v9    # "dataFormat":I
    .local v18, "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .local v19, "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v20, "dataFormat":I
    goto/16 :goto_e

    .line 804
    .end local v18    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .end local v19    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v20    # "dataFormat":I
    .restart local v6    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .restart local v7    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v9    # "dataFormat":I
    :pswitch_1
    invoke-virtual {v2, v13, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 805
    .local v10, "values":[Ljava/lang/String;
    array-length v11, v10

    new-array v11, v11, [D

    .line 806
    .local v11, "doubleArray":[D
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_8
    array-length v13, v10

    if-ge v12, v13, :cond_f

    .line 807
    aget-object v13, v10, v12

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    aput-wide v13, v11, v12

    .line 806
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 809
    .end local v12    # "j":I
    :cond_f
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    iget-object v13, v1, Landroidx/camera/core/impl/utils/ExifData$Builder;->mByteOrder:Ljava/nio/ByteOrder;

    .line 810
    invoke-static {v11, v13}, Landroidx/camera/core/impl/utils/ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;

    move-result-object v13

    .line 809
    invoke-interface {v12, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    const/16 v16, 0x1

    goto/16 :goto_e

    .line 791
    .end local v10    # "values":[Ljava/lang/String;
    .end local v11    # "doubleArray":[D
    :pswitch_2
    invoke-virtual {v2, v13, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    .line 792
    .local v13, "values":[Ljava/lang/String;
    array-length v14, v13

    new-array v14, v14, [Landroidx/camera/core/impl/utils/LongRational;

    .line 793
    .local v14, "rationalArray":[Landroidx/camera/core/impl/utils/LongRational;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_9
    array-length v0, v13

    if-ge v15, v0, :cond_10

    .line 794
    aget-object v0, v13, v15

    invoke-virtual {v0, v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "numbers":[Ljava/lang/String;
    new-instance v11, Landroidx/camera/core/impl/utils/LongRational;

    aget-object v16, v0, v10

    .line 796
    move-object/from16 v18, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-long v10, v10

    aget-object v16, v0, v8

    .line 797
    move/from16 v20, v9

    .end local v9    # "dataFormat":I
    .restart local v20    # "dataFormat":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-long v8, v8

    move-object/from16 v16, v0

    move-object/from16 v0, v18

    .end local v0    # "numbers":[Ljava/lang/String;
    .local v16, "numbers":[Ljava/lang/String;
    invoke-direct {v0, v10, v11, v8, v9}, Landroidx/camera/core/impl/utils/LongRational;-><init>(JJ)V

    aput-object v0, v14, v15

    .line 793
    .end local v16    # "numbers":[Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v20

    const/4 v0, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    goto :goto_9

    .end local v20    # "dataFormat":I
    .restart local v9    # "dataFormat":I
    :cond_10
    move/from16 v20, v9

    .line 799
    .end local v9    # "dataFormat":I
    .end local v15    # "j":I
    .restart local v20    # "dataFormat":I
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v8, v1, Landroidx/camera/core/impl/utils/ExifData$Builder;->mByteOrder:Ljava/nio/ByteOrder;

    .line 800
    invoke-static {v14, v8}, Landroidx/camera/core/impl/utils/ExifAttribute;->createSRational([Landroidx/camera/core/impl/utils/LongRational;Ljava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;

    move-result-object v8

    .line 799
    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const/16 v16, 0x1

    goto/16 :goto_e

    .line 758
    .end local v13    # "values":[Ljava/lang/String;
    .end local v14    # "rationalArray":[Landroidx/camera/core/impl/utils/LongRational;
    .end local v20    # "dataFormat":I
    .restart local v9    # "dataFormat":I
    :pswitch_3
    move/from16 v20, v9

    .end local v9    # "dataFormat":I
    .restart local v20    # "dataFormat":I
    const/4 v0, -0x1

    invoke-virtual {v2, v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "values":[Ljava/lang/String;
    array-length v8, v0

    new-array v8, v8, [I

    .line 760
    .local v8, "intArray":[I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_a
    array-length v10, v0

    if-ge v9, v10, :cond_11

    .line 761
    aget-object v10, v0, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v8, v9

    .line 760
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 763
    .end local v9    # "j":I
    :cond_11
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    iget-object v10, v1, Landroidx/camera/core/impl/utils/ExifData$Builder;->mByteOrder:Ljava/nio/ByteOrder;

    .line 764
    invoke-static {v8, v10}, Landroidx/camera/core/impl/utils/ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;

    move-result-object v10

    .line 763
    invoke-interface {v9, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    const/16 v16, 0x1

    goto/16 :goto_e

    .line 778
    .end local v0    # "values":[Ljava/lang/String;
    .end local v8    # "intArray":[I
    .end local v20    # "dataFormat":I
    .local v9, "dataFormat":I
    :pswitch_4
    move/from16 v20, v9

    .end local v9    # "dataFormat":I
    .restart local v20    # "dataFormat":I
    const/4 v0, -0x1

    invoke-virtual {v2, v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 779
    .local v8, "values":[Ljava/lang/String;
    array-length v0, v8

    new-array v0, v0, [Landroidx/camera/core/impl/utils/LongRational;

    .line 780
    .local v0, "rationalArray":[Landroidx/camera/core/impl/utils/LongRational;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_b
    array-length v10, v8

    if-ge v9, v10, :cond_12

    .line 781
    aget-object v10, v8, v9

    const/4 v11, -0x1

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 782
    .local v10, "numbers":[Ljava/lang/String;
    new-instance v11, Landroidx/camera/core/impl/utils/LongRational;

    const/4 v13, 0x0

    aget-object v14, v10, v13

    .line 783
    invoke-static {v14}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    double-to-long v14, v14

    const/16 v16, 0x1

    aget-object v17, v10, v16

    .line 784
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v6    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .end local v7    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v18    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .restart local v19    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-long v6, v6

    invoke-direct {v11, v14, v15, v6, v7}, Landroidx/camera/core/impl/utils/LongRational;-><init>(JJ)V

    aput-object v11, v0, v9

    .line 780
    .end local v10    # "numbers":[Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_b

    .end local v18    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .end local v19    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v6    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .restart local v7    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_12
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    const/16 v16, 0x1

    .line 786
    .end local v6    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .end local v7    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v9    # "j":I
    .restart local v18    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .restart local v19    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    iget-object v7, v1, Landroidx/camera/core/impl/utils/ExifData$Builder;->mByteOrder:Ljava/nio/ByteOrder;

    .line 787
    invoke-static {v0, v7}, Landroidx/camera/core/impl/utils/ExifAttribute;->createURational([Landroidx/camera/core/impl/utils/LongRational;Ljava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;

    move-result-object v7

    .line 786
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    goto/16 :goto_e

    .line 768
    .end local v0    # "rationalArray":[Landroidx/camera/core/impl/utils/LongRational;
    .end local v8    # "values":[Ljava/lang/String;
    .end local v18    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .end local v19    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v20    # "dataFormat":I
    .restart local v6    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .restart local v7    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v9, "dataFormat":I
    :pswitch_5
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    const/16 v16, 0x1

    .end local v6    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .end local v7    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v9    # "dataFormat":I
    .restart local v18    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .restart local v19    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v20    # "dataFormat":I
    const/4 v0, -0x1

    invoke-virtual {v2, v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, "values":[Ljava/lang/String;
    array-length v6, v0

    new-array v6, v6, [J

    .line 770
    .local v6, "longArray":[J
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_c
    array-length v8, v0

    if-ge v7, v8, :cond_13

    .line 771
    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 770
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 773
    .end local v7    # "j":I
    :cond_13
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    iget-object v8, v1, Landroidx/camera/core/impl/utils/ExifData$Builder;->mByteOrder:Ljava/nio/ByteOrder;

    .line 774
    invoke-static {v6, v8}, Landroidx/camera/core/impl/utils/ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;

    move-result-object v8

    .line 773
    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    goto :goto_e

    .line 748
    .end local v0    # "values":[Ljava/lang/String;
    .end local v18    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .end local v19    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v20    # "dataFormat":I
    .local v6, "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .local v7, "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v9    # "dataFormat":I
    :pswitch_6
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    const/16 v16, 0x1

    .end local v6    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .end local v7    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v9    # "dataFormat":I
    .restart local v18    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .restart local v19    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v20    # "dataFormat":I
    const/4 v0, -0x1

    invoke-virtual {v2, v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 749
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v6, v0

    new-array v6, v6, [I

    .line 750
    .local v6, "intArray":[I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_d
    array-length v8, v0

    if-ge v7, v8, :cond_14

    .line 751
    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    .line 750
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 753
    .end local v7    # "j":I
    :cond_14
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    iget-object v8, v1, Landroidx/camera/core/impl/utils/ExifData$Builder;->mByteOrder:Ljava/nio/ByteOrder;

    .line 754
    invoke-static {v6, v8}, Landroidx/camera/core/impl/utils/ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroidx/camera/core/impl/utils/ExifAttribute;

    move-result-object v8

    .line 753
    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    goto :goto_e

    .line 744
    .end local v0    # "values":[Ljava/lang/String;
    .end local v18    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .end local v19    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v20    # "dataFormat":I
    .local v6, "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .local v7, "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v9    # "dataFormat":I
    :pswitch_7
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    const/16 v16, 0x1

    .end local v6    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .end local v7    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v9    # "dataFormat":I
    .restart local v18    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .restart local v19    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v20    # "dataFormat":I
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v2}, Landroidx/camera/core/impl/utils/ExifAttribute;->createString(Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifAttribute;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    goto :goto_e

    .line 739
    .end local v18    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .end local v19    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v20    # "dataFormat":I
    .restart local v6    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .restart local v7    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v9    # "dataFormat":I
    :pswitch_8
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    const/16 v16, 0x1

    .end local v6    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .end local v7    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v9    # "dataFormat":I
    .restart local v18    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .restart local v19    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v20    # "dataFormat":I
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v2}, Landroidx/camera/core/impl/utils/ExifAttribute;->createByte(Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifAttribute;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    goto :goto_e

    .line 706
    .end local v18    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    .end local v19    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v20    # "dataFormat":I
    .restart local v6    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    :cond_15
    move-object/from16 v18, v6

    const/16 v16, 0x1

    .line 704
    .end local v6    # "exifTag":Landroidx/camera/core/impl/utils/ExifTag;
    :goto_e
    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x2

    const/4 v8, 0x1

    goto/16 :goto_4

    .line 821
    .end local v5    # "i":I
    :cond_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public build()Landroidx/camera/core/impl/utils/ExifData;
    .locals 6

    .line 830
    new-instance v0, Landroidx/camera/core/impl/utils/ExifData$Builder$3;

    invoke-direct {v0, p0}, Landroidx/camera/core/impl/utils/ExifData$Builder$3;-><init>(Landroidx/camera/core/impl/utils/ExifData$Builder;)V

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 846
    .local v0, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Landroidx/camera/core/impl/utils/ExifAttribute;>;>;"
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_0

    .line 847
    nop

    .line 848
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 847
    const-string v5, "ExposureProgram"

    invoke-direct {p0, v5, v4, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 849
    const-string v4, "ExifVersion"

    const-string v5, "0230"

    invoke-direct {p0, v4, v5, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 851
    const-string v4, "ComponentsConfiguration"

    const-string v5, "1,2,3,0"

    invoke-direct {p0, v4, v5, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 852
    const-string v4, "MeteringMode"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 854
    const-string v4, "LightSource"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 856
    const-string v4, "FlashpixVersion"

    const-string v5, "0100"

    invoke-direct {p0, v4, v5, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 857
    nop

    .line 858
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 857
    const-string v5, "FocalPlaneResolutionUnit"

    invoke-direct {p0, v5, v4, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 859
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FileSource"

    invoke-direct {p0, v5, v4, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 860
    nop

    .line 861
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 860
    const-string v4, "SceneType"

    invoke-direct {p0, v4, v1, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 862
    const-string v1, "CustomRendered"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 864
    nop

    .line 865
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 864
    const-string v4, "SceneCaptureType"

    invoke-direct {p0, v4, v1, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 866
    const-string v1, "Contrast"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 867
    const-string v1, "Saturation"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 869
    const-string v1, "Sharpness"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 872
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 873
    const-string v1, "GPSVersionID"

    const-string v2, "2300"

    invoke-direct {p0, v1, v2, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 874
    const-string v1, "GPSSpeedRef"

    const-string v2, "K"

    invoke-direct {p0, v1, v2, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 875
    const-string v1, "GPSTrackRef"

    const-string v3, "T"

    invoke-direct {p0, v1, v3, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 876
    const-string v1, "GPSImgDirectionRef"

    invoke-direct {p0, v1, v3, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 877
    const-string v1, "GPSDestBearingRef"

    invoke-direct {p0, v1, v3, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 878
    const-string v1, "GPSDestDistanceRef"

    invoke-direct {p0, v1, v2, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeIfMissing(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 881
    :cond_1
    new-instance v1, Landroidx/camera/core/impl/utils/ExifData;

    iget-object v2, p0, Landroidx/camera/core/impl/utils/ExifData$Builder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-direct {v1, v2, v0}, Landroidx/camera/core/impl/utils/ExifData;-><init>(Ljava/nio/ByteOrder;Ljava/util/List;)V

    return-object v1
.end method

.method public removeAttribute(Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 630
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/camera/core/impl/utils/ExifData$Builder;->mAttributes:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 631
    return-object p0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "value"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Landroidx/camera/core/impl/utils/ExifData$Builder;->mAttributes:Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttributeInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 620
    return-object p0
.end method

.method public setExposureTimeNanos(J)Landroidx/camera/core/impl/utils/ExifData$Builder;
    .locals 5
    .param p1, "exposureTimeNs"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exposureTimeNs"
        }
    .end annotation

    .line 552
    long-to-double v0, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 553
    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 552
    const-string v1, "ExposureTime"

    invoke-virtual {p0, v1, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setFlashState(Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;)Landroidx/camera/core/impl/utils/ExifData$Builder;
    .locals 3
    .param p1, "flashState"    # Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flashState"
        }
    .end annotation

    .line 516
    sget-object v0, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->UNKNOWN:Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;

    if-ne p1, v0, :cond_0

    .line 518
    return-object p0

    .line 522
    :cond_0
    sget-object v0, Landroidx/camera/core/impl/utils/ExifData$1;->$SwitchMap$androidx$camera$core$impl$CameraCaptureMetaData$FlashState:[I

    invoke-virtual {p1}, Landroidx/camera/core/impl/CameraCaptureMetaData$FlashState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown flash state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifData"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-object p0

    .line 530
    :pswitch_0
    const/4 v0, 0x1

    .line 531
    .local v0, "value":S
    goto :goto_0

    .line 527
    .end local v0    # "value":S
    :pswitch_1
    const/16 v0, 0x20

    .line 528
    .restart local v0    # "value":S
    goto :goto_0

    .line 524
    .end local v0    # "value":S
    :pswitch_2
    const/4 v0, 0x0

    .line 525
    .restart local v0    # "value":S
    nop

    .line 537
    :goto_0
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 539
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightSource"

    invoke-virtual {p0, v2, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    .line 543
    :cond_1
    const-string v1, "Flash"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFocalLength(F)Landroidx/camera/core/impl/utils/ExifData$Builder;
    .locals 5
    .param p1, "focalLength"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focalLength"
        }
    .end annotation

    .line 586
    new-instance v0, Landroidx/camera/core/impl/utils/LongRational;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v1, v1, p1

    float-to-long v1, v1

    const-wide/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/camera/core/impl/utils/LongRational;-><init>(JJ)V

    .line 588
    .local v0, "focalLengthRational":Landroidx/camera/core/impl/utils/LongRational;
    const-string v1, "FocalLength"

    invoke-virtual {v0}, Landroidx/camera/core/impl/utils/LongRational;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v1

    return-object v1
.end method

.method public setImageHeight(I)Landroidx/camera/core/impl/utils/ExifData$Builder;
    .locals 2
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 474
    const-string v0, "ImageLength"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setImageWidth(I)Landroidx/camera/core/impl/utils/ExifData$Builder;
    .locals 2
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 464
    const-string v0, "ImageWidth"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIso(I)Landroidx/camera/core/impl/utils/ExifData$Builder;
    .locals 3
    .param p1, "iso"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iso"
        }
    .end annotation

    .line 574
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SensitivityType"

    invoke-virtual {p0, v1, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    .line 575
    const v1, 0xffff

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhotographicSensitivity"

    invoke-virtual {v0, v2, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    .line 574
    return-object v0
.end method

.method public setLensFNumber(F)Landroidx/camera/core/impl/utils/ExifData$Builder;
    .locals 2
    .param p1, "fNumber"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fNumber"
        }
    .end annotation

    .line 564
    const-string v0, "FNumber"

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOrientationDegrees(I)Landroidx/camera/core/impl/utils/ExifData$Builder;
    .locals 3
    .param p1, "orientationDegrees"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientationDegrees"
        }
    .end annotation

    .line 485
    sparse-switch p1, :sswitch_data_0

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected orientation value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Must be one of 0, 90, 180, 270."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifData"

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/4 v0, 0x0

    .local v0, "orientationEnum":I
    goto :goto_0

    .line 496
    .end local v0    # "orientationEnum":I
    :sswitch_0
    const/16 v0, 0x8

    .line 497
    .restart local v0    # "orientationEnum":I
    goto :goto_0

    .line 493
    .end local v0    # "orientationEnum":I
    :sswitch_1
    const/4 v0, 0x3

    .line 494
    .restart local v0    # "orientationEnum":I
    goto :goto_0

    .line 490
    .end local v0    # "orientationEnum":I
    :sswitch_2
    const/4 v0, 0x6

    .line 491
    .restart local v0    # "orientationEnum":I
    goto :goto_0

    .line 487
    .end local v0    # "orientationEnum":I
    :sswitch_3
    const/4 v0, 0x1

    .line 488
    .restart local v0    # "orientationEnum":I
    nop

    .line 505
    :goto_0
    const-string v1, "Orientation"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public setWhiteBalanceMode(Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;)Landroidx/camera/core/impl/utils/ExifData$Builder;
    .locals 3
    .param p1, "whiteBalanceMode"    # Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "whiteBalanceMode"
        }
    .end annotation

    .line 599
    const/4 v0, 0x0

    .line 600
    .local v0, "wbString":Ljava/lang/String;
    sget-object v1, Landroidx/camera/core/impl/utils/ExifData$1;->$SwitchMap$androidx$camera$core$impl$utils$ExifData$WhiteBalanceMode:[I

    invoke-virtual {p1}, Landroidx/camera/core/impl/utils/ExifData$WhiteBalanceMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 605
    :pswitch_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 602
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 603
    nop

    .line 608
    :goto_0
    const-string v1, "WhiteBalance"

    invoke-virtual {p0, v1, v0}, Landroidx/camera/core/impl/utils/ExifData$Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Landroidx/camera/core/impl/utils/ExifData$Builder;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
